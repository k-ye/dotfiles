# How to install an older version XCode (and clang)

1. Download the desired version of Xcode from https://developer.apple.com/download/more/.
   1. May also need to download the corresponding Command Line Tools. However, as I was using `Xcode_11.7` as an example to write this workflow, the Apple website didn't provide the corresponding Command Line Tools for 11.7.
   2. According to this [Xcode-clang table](https://gist.github.com/yamaya/2924292), `Xcode 11.7` is probably sharing the same Command Line Tools as `Xcode 11.5`.
2. Unzip, rename the app to something like `Xcode_${VERSION}`, then move it into `/Applications`. Adding `_${VERSION}` so that it won't override the default (usually the most up-to-date) Xcode.
3. Run `xcode-select --switch /Applications/Xcode_${VERSION}.app/Contents/Developer`
4. Verify if the desired Xcode and Command Line Tools have been selected by `xcode-select -p`.
5. Verify if the desired `clang` has been selected by  `clang -v`. It should print out the version as well as `InstalledDir`.