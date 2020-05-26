# Fakerjl

Fakerjl is a fake data generator for Julia in various instances.

[![Build Status](https://travis-ci.com/osmantamer/Fakerjl.svg?branch=master)](https://travis-ci.com/osmantamer/Fakerjl)
[![Codecov](https://codecov.io/gh/osmantamer/Fakerjl/branch/master/graph/badge.svg)](https://codecov.io/gh/osmantamer/Fakerjl)
[![Coveralls](https://coveralls.io/repos/github/osmantamer/Fakerjl/badge.svg?branch=master)](https://coveralls.io/github/osmantamer/Fakerjl?branch=master)

# Installation

```
using Pkg
Pkg.add("Fakerjl")
```

# Usage

```
Fakerjl.init() # initialize everything
Fakerjl.firstfemalename() # return random first female name
Fakerjl.firstmalename() # return random first male name
Fakerjl.email() return random email address
Fakerjl.phone() return random phone number
```
