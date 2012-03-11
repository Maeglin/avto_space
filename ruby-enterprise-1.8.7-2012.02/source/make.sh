#!/bin/bash
exec make PREINCFLAGS='-I/opt/local/include' PRELIBS='-L/opt/local/lib -Wl,-rpath,/opt/ruby-enterprise-1.8.7-2012.02/lib -L/opt/ruby-enterprise-1.8.7-2012.02/lib -ltcmalloc_minimal ' "$@"