ELEMENTS=$(xmllint --xpath "string(/coverage/project/metrics/@elements)" ./php/tests/_output/coverage.xml)
COVEREDELEMENTS=$(xmllint --xpath "string(/coverage/project/metrics/@coveredelements)" ./php/tests/_output/coverage.xml)
RATIO=$(bc <<< 'scale=4; '$COVEREDELEMENTS/$ELEMENTS)
echo $RATIO
