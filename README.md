# Open Local Files: a Manyfold plugin

This plugin adds "Open local file" links to model and file menus, so that if your files are available on your local machine or over a mounted network disk, you can open up the files directly without downloading them.

IMPORTANT: Most browsers block `file://` URLs for (very good) security reasons. To use this plugin, you'll need a browser extension like [Local Explorer](https://chromewebstore.google.com/detail/local-explorer-open-file/eokekhgpaakbkfkmjjcbffibkencdfkl) to allow those sort of links.

Because docker library paths are different to real folder paths, you can map one to the other by setting the the `OPEN_LOCAL_FILES_LIBRARY_PATH` environment variable to the local path of your library. This should be set in the same place you set your other Manyfold environment variables.

```
OPEN_LOCAL_FILES_LIBRARY_PATH=//Z:/manyfold/stls
```

Currently only one library is supported; if you have multiple libraries, the same variable is used for all of them (which won't work).

## Installation

1. Download the latest release source code zipfile from https://github.com/manyfold3d/open_local_files/releases
2. Upload the zipfile on the plugins page of your Manyfold instance, in admin settings.
3. Set `OPEN_LOCAL_FILES_LIBRARY_PATH` if necessary.
4. Restart your Manyfold server

## Usage

You will find an "open local file" option in the file dropdown menu, along with the slicer links, and an "open local model folder" in the dropdown menu on the model detail page.
