[![Docs](https://img.shields.io/badge/docs-latest-blue.svg)](https://osf.io/2aj6t/wiki/home/) [![License](https://img.shields.io/badge/License-BSD\%202--Clause-orange.svg)](https://opensource.org/licenses/BSD-2-Clause) [![Build Status](https://travis-ci.com/AlexandrovLab/SigProfilerPlottingR.svg?branch=master)](https://travis-ci.com/AlexandrovLab/SigProfilerPlottingR.svg?branch=master)

# SigProfilerPlottingR
An R wrapper for running the SigProfilerPlotting framework.
**INTRODUCTION**

The purpose of this document is to provide a guide for using the SigProfilerPlotting framework and associated functions/tools to visualize the output from SigProfilerExtraction and SigProfilerSimulator. An extensive Wiki page detailing the usage of this tool can be found at https://osf.io/2aj6t/wiki/home.

**PREREQUISITES**

devtools  (R) 
```
>> install.packages("devtools")
```
reticulate* (R) 
```
>> install.packages("reticulate")  
```

*Reticulate has a known bug of preventing python print statements from flushing to standard out. As a result, some of the typical progress messages are delayed.

**QUICK START GUIDE**

This section will guide you through the minimum steps required to visualize mutational patterns/signatures:
1. First, install the python package using pip. The R wrapper still requires the python package:
```
                          pip install SigProfilerPlotting
```
2. Open an R session and ensure that your R interpreter recognizes the path to your python3 installation:
```
$ R
>> library("reticulate")
>> use_python("path_to_your_python3")
>> py_config()
python:         /anaconda3/bin/python3
libpython:      /anaconda3/lib/libpython3.6m.dylib
pythonhome:     /anaconda3:/anaconda3
version:        3.6.5 |Anaconda, Inc.| (default, Apr 26 2018, 08:42:37)  [GCC 4.2.1 Compatible Clang 4.0.1 (tags/RELEASE_401/final)]
numpy:          /anaconda3/lib/python3.6/site-packages/numpy
numpy_version:  1.16.1
```
If you do not see your python3 path listed, restart your R session and rerun the above commands in order.

2. Install SigProfilerPlottingR using devtools:
```
>>library("devtools")
>>install_github("AlexandrovLab/SigProfilerPlottingR")
```
3. Load the package in the same R session:
```
>> library("SigProfilerPlottingR")
```

**AVAILABLE FUNCTIONS**

```
>> plotSBS(matrix_path, output_path, project, plot_type, percentage=FALSE)
>> plotDBS(matrix_path, output_path, project, plot_type, percentage=FALSE)
>> plotID(matrix_path, output_path, project, plot_type, percentage=FALSE)
```
matrix_path -> path to the mutational matrix of interest

output_path -> desired output path

project -> name of unique sample set

plot_type -> context of the mutational matrix (96, 192, 78, 94, etc.)

percentage -> Boolean: plot the mutational matrix as percentages of the sample's total mutation count. Default is FALSE

To create a sample portrait, ensure that you have a matrix for all required contexts (SBS-6, SBS-24, SBS-96, SBS-384, SBS-1536, DBS-78, DBS-312, ID-83, ID-28, ID-96)

```
>> samplePortrait(sample_matrices_path, output_path, project, percentage=FALSE)
```

**CITATION**

E.N. Bergstrom, M.N. Huang, U. Mahto, M. Barnes, M.R. Stratton, S.G. Rozen, and L.B. Alexandrov (2019) SigProfilerMatrixGenerator: a tool for visualizing and exploring patterns of small mutational events. https://www.biorxiv.org/content/10.1101/653097v1

**COPYRIGHT**

Copyright (c) 2019, Erik Bergstrom [Alexandrov Lab] All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

**CONTACT INFORMATION**

Please address any queries or bug reports to Erik Bergstrom at ebergstr@eng.ucsd.edu