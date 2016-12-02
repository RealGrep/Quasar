#!/usr/bin/python

import sys
import os
import subprocess
import packbuilder as pb

PACK_DIR="/home/michel/Quasar_1.10.2"
VERSION = "v0.6.0"

class cd:
    """Context manager for changing the current working directory"""
    def __init__(self, newPath):
        self.newPath = os.path.expanduser(newPath)

    def __enter__(self):
        self.savedPath = os.getcwd()
        os.chdir(self.newPath)

    def __exit__(self, etype, value, traceback):
        os.chdir(self.savedPath)

if __name__ == "__main__":
    if len(sys.argv) == 2:
        packInput = str(sys.argv[1])
    else:
        print("Please provide one command line argument for the pack input file.")
        exit(1)

    inputs = pb.loadPacks(PACK_DIR + "/" + packInput)

    #pathname = os.path.dirname(os.path.abspath(sys.argv[0]))
    #print("Pack dir: " + pathname)

    # Make the full pack zip
    commands = []
    modsListFiles = []
    for src in inputs:
        commands.append("cp -r ../" + src + "/mods .")
        commands.append("cp -r ../" + src + "/overrides/* .")
        modsListFiles.append("../" + src + "/MODS.txt")

    commands.append("cat " + " ".join(modsListFiles) + " > MODS.txt")

    subprocess.call("rm -rf ./Output", shell=True)
    subprocess.call("mkdir ./Output", shell=True)
    subprocess.call("./makeManifest.py " + packInput + " > ./Output/manifest.json", shell=True)
    with cd("./Output"):
        for line in commands:
            print(line)
            subprocess.call(line, shell=True)
        packFile = "~/Quasar_" + packInput + "_" + VERSION + ".zip"
        subprocess.call("rm -f " + packFile, shell=True)
        subprocess.call("zip -r " + packFile + " *", shell=True)



    subprocess.call("rm -rf Output", shell=True)

    # Make the Curse packs
#    subprocess.call("zip -r ~/Quasar_" + packInput + "_" + "server" + "_" + VERSION + ".zip ./Output/manifest.json ./Output/MODS.txt overrides", shell=True)
#    subprocess.call("zip -r ~/Quasar_" + packInput + "_" + "client" + "_" + VERSION + ".zip ./Output/manifest.json ./Output/MODS.txt overrides", shell=True)

