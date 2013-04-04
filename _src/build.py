import os
import re

for files in os.listdir("."):
    if files.endswith(".tpl"):
        f = open(files, "r")
        contents = f.read()
        f.close()
        res = re.findall("(\\[\\[(.*?)\\]\\])(.*?)(?:\\[\\[/(.*?)\\]\\]|$)", contents, re.DOTALL)
        replacements = {
            "[[pagename]]": "",
            "[[title]]": "",
            "[[active:index]]": "",
            "[[active:about]]": "",
            "[[active:brothers]]": "",
            "[[active:housing]]": "",
            "[[active:contact]]": "",
            "[[tagline]]": "",
            "[[subtagline]]": "",
            "[[content]]": "",
            "[[scripts:start]]": "",
            "[[scripts:end]]": ""
            }
        for entry in res:
            (literal, tagname, replacement, endtagname) = entry
            if tagname != endtagname:
                raise Exception("Tagnames must match.")
            else:
                replacements[literal] = replacement[1:-1]
        page = open("page.html", "r")
        pagecontents = page.read()
        page.close()
        for token in replacements.keys():
            pagecontents = pagecontents.replace(token, replacements[token])
        writefile = files.replace(".tpl", ".html");
        print "Building " + writefile + "..."
        f = open("../" + writefile, "w")
        f.write(pagecontents);
        f.close()
