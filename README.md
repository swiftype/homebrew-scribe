## Scribe Formula for Homebrew

This repository contains a Homebrew formula, that uses a [Swiftype custom fork](https://github.com/swiftype/scribe)
of now abandoned Facebook project to build [Scribe logging server](https://github.com/facebookarchive/scribe)
on MacOS X using CMake and CLang compiler.

### How to Use This Formula?

To use this custom repository, you need to tap into it using the following command:

        $ brew tap swiftype/scribe
        Cloning into '/usr/local/Library/Taps/swiftype/homebrew-scribe'...
        remote: Counting objects: 3, done.
        remote: Compressing objects: 100% (2/2), done.
        remote: Total 3 (delta 0), reused 3 (delta 0)
        Unpacking objects: 100% (3/3), done.
        Checking connectivity... done.
        Tapped 1 formula

When this is done, you could check to make sure your Homebrew actually sees our formula:

        $ brew info scribe
        scribe: stable 68, HEAD
        https://github.com/facebookarchive/scribe
        /usr/local/Cellar/scribe/68 (12 files, 716K) *
          Built from source
        From: https://github.com/swiftype/homebrew-scribe/blob/master/scribe.rb
        ==> Dependencies
        Build: cmake ✔
        Required: thrift ✔

Now you are ready to install Scribe server on your machine:

        $ brew install scribe
        ...
        ...
        🍺  /usr/local/Cellar/scribe/68: 12 files, 716K, built in 21 seconds

Done! Now you can run Scribe like the following:

        $ scribe -h
        [Thu Aug  7 23:57:13 2014] "setrlimit error (setting max fd size)"
        Usage: scribe [-p port] [-c config_file]

Please note, that we do not provide any startup scripts or initial configs for the service,
you will need to start it with whatever configuration you like. For more information on how to
configure or run Scribe, please check their
[official documentation](https://github.com/facebookarchive/scribe/wiki).

