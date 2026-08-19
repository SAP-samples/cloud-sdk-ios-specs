# Releasing

To create new podspecs, based on previous podspecs, you can make use of the commands in `Makefile`.

To create new release folders for all SDK framework folders and copying `.podspec` files 

```bash
make copy_specs OLD_VERSION=6.0.2 NEW_VERSION=6.1.0
```

To replace the release version number in all `.podspec` files which were just created

```bash
make replace_in_specs OLD=6.0.2 NEW=6.1.0 IN_VERSION=6.1.0
```

To replace the iOS release version information in all `.podspec` files which were just created (Optional)

```bash
make replace_in_specs OLD=14.0 NEW=13.0 IN_VERSION=6.1.0
```

To download the zip files (for verification; **requires netrc**)

```bash
make download_zips VERSION=6.1.0
```

To test podspecs you can adjust `Podfile` in `.testing` folder and generate a project using those specs. See [here](./.testing/README.md) for more details
