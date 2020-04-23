# Supported tags and respective `Dockerfile` links

* [`2.82a`, `latest` (*2.82a/Dockerfile*)](https://github.com/ikester/blender-docker/blob/2.82a/Dockerfile)
* [`2.82` (*2.82/Dockerfile*)](https://github.com/ikester/blender-docker/blob/2.82/Dockerfile)
* [`2.79` (*2.79/Dockerfile*)](https://github.com/ikester/blender-docker/blob/2.79/Dockerfile)
* [`2.78c` (*2.78c/Dockerfile*)](https://github.com/ikester/blender-docker/blob/2.78c/Dockerfile)
* [`2.77a` (*2.77a/Dockerfile*)](https://github.com/ikester/blender-docker/blob/2.77a/Dockerfile)
* [`2.76b` (*2.76b/Dockerfile*)](https://github.com/ikester/blender-docker/blob/2.76b/Dockerfile)
* [`2.75a` (*2.75a/Dockerfile*)](https://github.com/ikester/blender-docker/blob/2.75a/Dockerfile)
* [`2.73a` (*2.73a/Dockerfile*)](https://github.com/ikester/blender-docker/blob/2.73a/Dockerfile)

These are the Docker Hub Blender autobuild images located [here](https://hub.docker.com/r/ikester/blender-autobuild/). For manual builds [look here](https://hub.docker.com/r/ikester/blender/) instead.

![Blender Logo](https://www.blender.org/wp-content/uploads/2015/03/blender_logo_socket.png)

# What is Blender?

[Blender](https://www.blender.org) is a free and open source 3D animation suite. It supports the entirety of the 3D pipeline—modeling, rigging, animation, simulation, rendering, compositing and motion tracking, even video editing and game creation. Advanced users employ Blender’s API for Python scripting to customize the application and write specialized tools; often these are included in Blender’s future releases. Blender is well suited to individuals and small studios who benefit from its unified pipeline and responsive development process.

# How to use this image

This image is intended to be used as a command line, render-only node for `.blend` files. You will need to create the 3D files beforehand using Blender's full GUI or download one from the many Blender file sharing sites like [Blend Swap](http://www.blendswap.com).

The entry point for this image is the blender non-gui command line `blender -b`. You can use the `/media/` directory to mount a volume with source files.

# Rendering a single frame

To render a single frame from a `blendfile.blend` file located in `/source/path` on the docker host and save the result in the same directory:

```console
$ docker run --rm -v /source/path/:/media/ ikester/blender /media/blendfile.blend -o /media/frame_### -f 1
```

This will create a file named `frame_001.png` in the same directory as the source file, assuming that PNG is the default output format for that file.

# Blender Command Line Reference

For additional information on Blender's command line parameters and options please visit the command line reference in the [Blender Reference Manual](https://www.blender.org/manual/render/workflows/command_line.html).

Or you can just run:
`docker run --rm ikester/blender --help`

# Dockerfile for Blender

Blender versions are tracked in branches. The `master` branch will always be mapped to the tag `latest`.

Please visit the [GitHub Page](https://github.com/ikester/blender-docker) for details.

# License

This project is released under the MIT license. Please see the `LICENSE` file for details.

### Note: This is not an official Blender repository.
