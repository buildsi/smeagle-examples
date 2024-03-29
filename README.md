# Smeagle Examples

These examples are used as a submodule and cloned for:

 - [cle](https://github.com/vsoch/cle)
 - [spliced](https://github.com/buildsi/spliced)
 
facts.json are generated (and validated) by cle, and
atoms.asp (to be generated) are generated (and validated) by spliced.

## Organization

Each subfolder here is a type of structure or design that can be used to generate
facts. Within each subfolder, there is an optional folder of "breaks" with
ABI breakages that we've manually derived for a ground truth. To see
a table of this ground truth, you can see [this Google Doc](https://docs.google.com/spreadsheets/d/1ZuRxphEg3N1FGnw2-viThhoP8CVr_SebSa9jwol6G3s/edit?userstoinvite=thaines.astro%40gmail.com&actionButton=1#gid=0).

## Usage

To manually build on your local machine with whatever compiler is available
(defaults to g++)

```bash
$ ./build.sh
```

To build using a container (and check the base image that it's the one you want):

```bash
$ ./build-container.sh
```

And to see an example of automating all of this and using the [actions](actions)
here, see [.github/example-spliced-analysis.yaml](.github/example-spliced-analysis.yaml).
