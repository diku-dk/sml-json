# sml-json [![Build Status](https://travis-ci.org/diku-dk/sml-json.svg?branch=master)](https://travis-ci.org/diku-dk/sml-json)

Standard ML package for JSON parsing and printing.

## Overview of MLB files

- `lib/github.com/diku-dk/sml-json/json.mlb`:

  - **signature** [`JSON`](lib/github.com/diku-dk/sml-json/json.sig)
  - **structure** `Json` :> `JSON`

## Use of the package

This library is set up to work well with the SML package manager
[smlpkg](https://github.com/diku-dk/smlpkg).  To use the package, in
the root of your project directory, execute the command:

```
$ smlpkg add github.com/diku-dk/sml-json
```

This command will add a _requirement_ (a line) to the `sml.pkg` file in your
project directory (and create the file, if there is no file `sml.pkg`
already).

To download the library into the directory
`lib/github.com/diku-dk/sml-json`, execute the command:

```
$ smlpkg sync
```

You can now reference the `mlb`-file using relative paths from within
your project's `mlb`-files.

Notice that you can choose either to treat the downloaded package as
part of your own project sources (vendoring) or you can add the
`sml.pkg` file to your project sources and make the `smlpkg sync`
command part of your build process.

## Authors

Copyright (c) 2015-2020 Martin Elsman, University of Copenhagen.
