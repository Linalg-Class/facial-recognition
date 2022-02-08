from wand.image import Image
import os
os.system('pwd')
SourceFolder = os.sys.argv[1]
TargetFolder = os.sys.argv[2]

for file in os.listdir(SourceFolder):
    SourceFile = SourceFolder + "/" + file
    TargetFile = TargetFolder + "/" + file.replace(".HEIC", ".jpg")
    os.system("heif-convert {} {}".format(SourceFile, TargetFile))