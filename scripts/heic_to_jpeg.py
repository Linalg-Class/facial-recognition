from wand.image import Image
import os
os.system('pwd')
SourceFolder = "./python/heic"
TargetFolder = "./python/jpg"

for file in os.listdir(SourceFolder):
    SourceFile = SourceFolder + "/" + file
    TargetFile = TargetFolder + "/" + file.replace(".HEIC", ".jpg")
    os.system("heif-convert {} {}".format(SourceFile, TargetFile))