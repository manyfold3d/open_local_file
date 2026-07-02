# Open Local Files: a Manyfold plugin

This plugin adds `file://` links to model and file menus, so that you can open up local folders directly (if you have your browser set up to allow and open file URLs).

Because docker library paths are different to real folder paths, you can map one to the other by setting the the `OPEN_LOCAL_FILES_LIBRARY_PATH` environment variable to the local path of your library. Currently only one library is supported; if you have multiple libraries, the same variable is used for all of them (which won't work).

## Installation

1. Download the latest release source code zipfile from https://github.com/manyfold3d/open_local_files/releases
2. Upload the zipfile on the plugins page of your Manyfold instance, in admin settings.
3. Set `OPEN_LOCAL_FILES_LIBRARY_PATH` if necessary.
4. Restart your Manyfold server

## Usage

You will find an "open local file" option in the file dropdown menu, along with the slicer links, and an "open local model folder" in the dropdown menu on the model detail page.
