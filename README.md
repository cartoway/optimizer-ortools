optimizer-ortools
=================

Compute an optimized solution to the Vehicle Routing Problem with Time Windows and various constraints using OR-Tools.
This wrapper is designed to be called through [Optimizer-API](https://github.com/cartoroute/optimizer-api) and has been tested on Ubuntu 17.10, 18.04; Linux Mint 18; Debian 8, 10.

The current implementation has been tested with the version 7.8 of OR-Tools

Installation
============
## Requirements

Require OR-Tools for the C++ part. Fetch source code at [https://github.com/google/or-tools](https://github.com/google/or-tools).

Download OR-Tools here : https://github.com/google/or-tools/releases/tag/v7.8

- Recommended Asset : [or-tools_debian-10_v7.8.7959.tar.gz](https://github.com/google/or-tools/releases/download/v7.8/or-tools_debian-10_v7.8.7959.tar.gz)

More details on [Google Optimization Tools Documentation](https://developers.google.com/optimization/introduction/installing)

## Optimizer

Compile the C++ optimizer

    make tsp_simple


Test
====

LD_LIBRARY_PATH=../or-tools/lib/ ../optimizer-ortools/tsp_simple -time_limit_in_ms 500 -intermediate_solutions -instance_file 'data/test_ortools_single_route_with_route_order' -solution_file '/tmp/optimize-or-tools-output'

Dev
===

After dev the code shall be formatted according to the style file of the project with the following command:

    clang-format -i *.cc *.h
