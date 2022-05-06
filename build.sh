#! /bin/bash
# ls -la
if xar -h &> /dev/null
then    
    echo "xar could not be found"   
else

    xar -cf proof_mizu_theme.fmaddon proof_mizu_theme/
    echo 'build succesful'
fi