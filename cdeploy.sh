#!/bin/bash

#nbgrader
#处理course list
cp ./nbgrader/source/handlers.py /opt/conda/lib/python3.6/site-packages/nbgrader/server_extensions/assignment_list/handlers.py
cp .//nbgrader/templates/*.* /opt/conda/lib/python3.6/site-packages/nbgrader/server_extensions/formgrader/templates/
echo "End"
