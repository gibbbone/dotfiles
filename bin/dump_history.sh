#! /bin/bash
history 500 |  awk 'sub("$", "\r")' >> "cl_500_"`date +%Y%m%d`".txt"