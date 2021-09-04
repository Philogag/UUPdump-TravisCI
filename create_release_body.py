import yaml
import os
import json

with open(".travis.yml", "r", encoding="utf-8") as f:
    yml = yaml.load(f.read())

ss=""

for t in yml["env"]:
    build, lang, edition = map(lambda x: x.split("=")[1], t.split(" "))

    # print(build, lang, edition)
    info = os.popen("curl -G https://api.uupdump.net/listlangs.php?id=%s"%(build)).read()
    
    d = json.loads(info)["response"]["updateInfo"]
    ss += "#### " + d["build"] + " | " + lang + " | " + edition.lower() + "\\n"
    ss += "+ " + d["title"] + "\\n"
    ss += "\\n"

with open("body.md", "w+", encoding="utf-8") as f:
    f.write(ss)