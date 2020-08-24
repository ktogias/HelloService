RATIO=$(bash ./util/compute_code_coverage.sh)
echo $RATIO
if [ "$RATIO" \< ".70" ]
then
    echo "Code coverage below 70%"
    exit 1
fi