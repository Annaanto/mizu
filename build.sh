#! /bin/bash
# ls -la
if ! xar -h &> /dev/null
then
    xar -cf proof_mizu_theme.fmaddon proof_mizu_theme/
    echo 'build succesful'
else
    echo "xar could not be found"   
fi