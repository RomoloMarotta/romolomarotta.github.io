import sys
import os

page = sys.argv[1]


fin = open(page)
path = "public_html/"+page.replace(".xml", "");

if(page == "index.xml"):
	path = "public_html" 
else:
	os.makedirs(path);

fout = open(path+"/index.html", "w")


outlines = []
content = ""
template = []

count = 0
for line in fin.readlines():
	if count == 0:
		tmp = open("components/"+line.strip().replace("%", "")+".xml")
		for tline in tmp.readlines():
			template += [tline]
		tmp.close()
		count+=1
	else:
		content += line
fin.close()


for line in template:
	if "%" not in line:
		outlines += [line]
	elif line.strip() == "%CONTENT":
		outlines += content
	else:
		tmp = line.strip()
		tmp = tmp.replace("%", "").lower()+".xml"
		tmp = open("components/"+tmp)
		for tline in tmp.readlines():
			outlines += [tline]
		tmp.close()

for line in outlines:
	fout.write(line)

