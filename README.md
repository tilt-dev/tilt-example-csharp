# tilt-example-csharp

[![Build Status](https://circleci.com/gh/tilt-dev/tilt-example-csharp/tree/master.svg?style=shield)](https://circleci.com/gh/tilt-dev/tilt-example-csharp)

An example project that demonstrates a live-updating C# ASP.NET Core server in Kubernetes. Read [doc](https://docs.tilt.dev/example_csharp.html).

## Fastest Deployment

This progression of examples shows how to start, and incrementally update
your project for live updates.

- [0-base](0-base): The simplest way to start
- [1-measure](1-measure): Use `local_resource` to measure your deployment time
- [2-build-locally](2-build-locally): Compile executable `dll`'s and copy them into Docker
- [3-live-update](3-live-update): Live update executable `dll`. This is the recommended configuration

## License

Copyright 2020 tilt.dev

Licensed under [the Apache License, Version 2.0](LICENSE)
