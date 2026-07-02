# Open Local Files: a Manyfold plugin

This plugin adds `file://` links to model and file menus, so that you can open up local folders directly (if you have your browser set up to allow and open file URLs).

Because docker library paths are different to real folder paths, you can map one to the other by setting the the `OPEN_LOCAL_FILES_LIBRARY_PATH` environment variable to the local path of your library. Currently only one library is supported; if you have multiple libraries, the same variable is used for all of them (which won't work).
