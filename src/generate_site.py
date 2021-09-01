import os

os.system("rm -R public_html/*")
os.system("cp -R components/css public_html/")
os.system("cp -R components/images public_html/")
os.system("cp -R components/slides public_html/")
os.system('for i in *.xml; do python build_page.py $i; done ')