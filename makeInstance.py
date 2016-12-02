#!/usr/bin/python

import sys
import os
import packbuilder as pb

PACK_DIR="/home/michel/Quasar_1.10.2"

if __name__ == "__main__":
    if len(sys.argv) == 2:
        packInput = str(sys.argv[1])
    else:
        print("Please provide one command line argument for the pack input file.")
        exit(1)

    inputs = pb.loadPacks(PACK_DIR + "/" + packInput)

    pathname = os.path.dirname(os.path.abspath(sys.argv[0]))
    print("Pack dir: " + pathname)

    #os.system(cp -rf 
    commands = []
    commands.append("rm -rf mods")
    x = 0
    for src in inputs:
        commands.append("cp -rf " + PACK_DIR + "/" + inputs[x] + "/mods .")
        commands.append("cp -rf " + PACK_DIR + "/" + inputs[x] + "/overrides/* .")
        x = x + 1

    print("Commands to run:")
    for cmd in commands:
        print(cmd)

    yn = input("\nRun these commands? (y/N) ")
    if yn.strip().lower() == 'y':
        print("Running commands...")
        for cmd in commands:
            print(cmd)
            os.system(cmd)
    else:
        print("Aborted.")
