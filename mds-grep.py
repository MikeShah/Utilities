# Author: Mike Shah
# Date Created: 6/22/16
#
# Purpose: Cheap grep function for finding terms in source code.

import os
import time

# If this flag is set to true, then just fine find types
# If a search Item is specified, then find a search term
findFile=True

itemsFound = 0
filesFound = 0
searchTerms=[]
##searchTerms.append("_mm_")
##searchTerms.append("_m128")
##searchTerms.append("_m256")
##searchTerms.append("_m512")
##searchTerms.append("_mmask")
##searchTerms.append("KNOB_SIMD_WIDTH ")
print len(searchTerms)

fileType=[]
##fileType.append(".h")
##fileType.append(".hpp")
##fileType.append(".hxx")
##fileType.append(".c")
##fileType.append(".cpp")
##fileType.append(".cxx")
fileType.append(".exe")

startTime = time.time()
for root, dirs, files in os.walk("C:/Users/mdshah/Perforce/mdshah_mdshah-DESK_2385/gfx_Development/DEV/Rasty/"):
    for file in files:
        for fileExtension in fileType:
            if file.endswith(fileExtension): 
                 filename = os.path.join(root, file)
                 filesFound = filesFound + 1
                 if len(searchTerms) > 0:
                     searchFile = open(filename,'r')
                     lineNumber = 1
                     for line in searchFile:
                         lineNumber = lineNumber +1
                         for item in searchTerms:
                             if item in line:
                                 print str(lineNumber)+" "+item+" "+filename+" "+line,
                                 itemsFound = itemsFound + 1
                 else:
                    print filename
                    

searchTermsFlattened = ""
for i in searchTerms:
    searchTermsFlattened+= i+" "
    
fileExtensionsFlattened = ""
for i in fileType:
    fileExtensionsFlattened+= i+" "
    
print "Searched.. "+searchTermsFlattened
print "File types.. "+fileExtensionsFlattened
print "Found 0 items "+str(itemsFound)+" in "+str(filesFound)+ " files"
print "Time: "+str(time.time()-startTime)
