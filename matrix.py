#!/usr/bin/env python3

import argparse
import os
import random
import re
import json
import sys
import tempfile

import yaml

here = os.path.dirname(os.path.abspath(__file__))


def get_parser():
    parser = argparse.ArgumentParser(
        description="Smeagle-Examples Experiment Submitter",
        formatter_class=argparse.RawTextHelpFormatter,
    )
    parser.add_argument(
        "experiment_dir",
        help="Base directory with experiment folders",
        default=here,
        nargs="?",
    )
    return parser


def recursive_find(base, pattern=None):
    """
    Find filenames that match a particular pattern, and yield them.
    """
    # We can identify modules by finding module.lua
    for root, folders, files in os.walk(base):
        for file in files:
            fullpath = os.path.abspath(os.path.join(root, file))

            if pattern and not re.search(pattern, fullpath):
                continue

            yield fullpath


def read_yaml(filename):
    with open(filename, "r") as fd:
        content = yaml.load(fd.read(), Loader=yaml.SafeLoader)
    return content


def main():

    parser = get_parser()

    # If an error occurs while parsing the arguments, the interpreter will exit with value 2
    args, extra = parser.parse_known_args()

    experiment_dir = os.path.abspath(args.experiment_dir)

    # We will build up a matrix of experiments
    # We will want to shuffle to not do the same builds at once
    matrix = []
    seen = set()

    # Recursively find experiments
    for experiment_cpp in recursive_find(experiment_dir, "example.cpp"):
        if "breaks" in experiment_cpp:
            continue
        dirname = os.path.dirname(experiment_cpp)
        if dirname in seen or os.path.basename(dirname).startswith("_"):
            continue

        matrix.append({"root": dirname})
        seen.add(dirname)

    print("Generated %s jobs" % len(matrix))
    print("Shuffling...")
    random.shuffle(matrix)

    # Only print matrix to output (and GitHub actions output)
    print(matrix)
    print("::set-output name=commands::%s\n" % json.dumps(matrix))


if __name__ == "__main__":
    main()
