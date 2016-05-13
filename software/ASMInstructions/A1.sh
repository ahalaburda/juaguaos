#!/bin/bash 

# A0.sh
#
# Move Value to Register (RA, 0123 )
# @author	Sergio Pohlmann <sergio@ycube.net>
# @date		May, 11 of 2016
#
####################################################

baseDir="/opt";

. ${baseDir}/jaguaOs/config/config.sh
. ${baseDir}/jaguaOs/config/ASMfunctions.sh
. ${baseDir}/jaguaOs/config/Basefunctions.sh


echo ========================

parameters=$1

echo "Parameters: ${parameters}"

sourceCod=${parameters:2:4};

echo "sourceCod: ${sourceCod}"

destCode=${parameters:0:2};

echo "destCode: ${destCode}"


register=`grep ".${sourceCod};" ${ASMInstDir}/ASMTable.sh | cut -d";" -f 1 | tr -d '[[:space:]]'`;
register=${register/.};
source=${register};

register=`grep ".${destCode};" ${ASMInstDir}/ASMTable.sh | cut -d";" -f 1 | tr -d '[[:space:]]'`;
register=${register/.};
dest=${register};


echo "de $source para $dest";

cat ${mpDir}/${source}.reg > ${mpDir}/${dest}.reg; 





