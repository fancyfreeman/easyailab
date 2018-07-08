#!/bin/bash


cd /srv/deployment/github/easyailab

#notebook
# /opt/conda/lib/python3.6/site-packages/notebook/notebookapp.py
# /opt/conda/pkgs/notebook-5.4.1-py36_0/lib/python3.6/site-packages/notebook/notebookapp.py
# cp ./notebook/source/notebookapp.py /opt/conda/pkgs/notebook-5.4.1-py36_0/lib/python3.6/site-packages/notebook/
# cp ./notebook/source/transutils.py  /opt/conda/pkgs/notebook-5.4.1-py36_0/lib/python3.6/site-packages/notebook/
cp ./notebook/source/notebookapp.py /opt/conda/lib/python3.6/site-packages/notebook/notebookapp.py
cp ./notebook/source/transutils.py  /opt/conda/lib/python3.6/site-packages/notebook/transutils.py

#nbgrader
#处理course list
cp ./nbgrader/source/handlers.py    /opt/conda/lib/python3.6/site-packages/nbgrader/server_extensions/assignment_list/handlers.py
cp ./nbgrader/source/utils.py       /opt/conda/lib/python3.6/site-packages/nbgrader/utils.py
#处理翻译后的tpl模板
cp ./nbgrader/templates/*.tpl       /opt/conda/lib/python3.6/site-packages/nbgrader/server_extensions/formgrader/templates/

cp ./nbgrader/templates/assignment_list/main.js     /opt/conda/lib/python3.6/site-packages/nbgrader/nbextensions/assignment_list/main.js
cp ./nbgrader/templates/assignment_list/main.js     /opt/conda/share/jupyter/nbextensions/assignment_list/main.js

cp ./nbgrader/templates/formgrader/main.js     /opt/conda/lib/python3.6/site-packages/nbgrader/nbextensions/formgrader/main.js
cp ./nbgrader/templates/formgrader/main.js     /opt/conda/share/jupyter/nbextensions/formgrader/main.js



#notebook
cp ./notebook/LC_MESSAGES/*.cfg  /opt/conda/lib/python3.6/site-packages/notebook/i18n/
cp ./notebook/LC_MESSAGES/*.po   /opt/conda/lib/python3.6/site-packages/notebook/i18n/zh_CN/LC_MESSAGES/
cd /opt/conda/lib/python3.6/site-packages/notebook/i18n/zh_CN/LC_MESSAGES
pybabel compile -D notebook -f -l zh_CN -i notebook.po -o notebook.mo
pybabel compile -D notebook -f -l zh_CN -i nbui.po -o nbui.mo
po2json -p -F -f jed1.x -d nbjs nbjs.po nbjs.json

cd /srv/deployment/github/easyailab
cp ./notebook/logo.png /opt/conda/lib/python3.6/site-packages/notebook/static/base/images/logo.png
cp ./notebook/logo.png /opt/conda/pkgs/notebook-5.4.1-py36_0/lib/python3.6/site-packages/notebook/static/base/images/logo.png

echo "End cdeploy"
