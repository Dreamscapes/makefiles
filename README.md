# The Makefiles

> The ultimate collection of reusable Make targets

## About

How many times have you written a Makefile for that new awesome project? Many? Then you might be in the right place. Here be a collection of reusable Make targets that you can simply `include` from your Makefile and be off doing more interesting stuff.

### Supported platforms

Node.js is currently included. Support for php is planned.

## Installation

There are two options how to include these targets into your project.

### As git submodule

Using a git submodule has the benefit of being able to update to latest version of this repository. You cannot mess with the targets, though.

### Download the files

Downloading the files and including them in your project means the files will become part of your project. You will not be able to easily update to latest version, but you can make any modifications to the targets you want.

## Usage

Once you have settled for your installation of choice, you can start using the targets from your *Makefile* by including them (assuming you put the files into *targets* directory):

`include targets/nodejs/*.mk`

### Configuring targets

Many targets come with variables that you can customise to your liking. These variables are described and initialised at the beginning of every target - have a look at the files to see what you can change.

**Always override variables after including the targets**. I have gone to great lengths to ensure the targets do not override existing variables, but just in case I missed something...

### Modifying prerequisites

You can also modify what tasks should be run as prerequisites of other tasks. For example, you might want to lint your files before tests are run - to do so, define the prerequisites in your Makefile:

`test: lint`

That's it! Now, when you run `make test`, the `lint` target will be executed first.

### Examples

Take a look at the *Makefile-example.mk* file for some inspiration.

## License

This software is licensed under the **BSD-3-Clause License**. See the [LICENSE](LICENSE) file for more information.
