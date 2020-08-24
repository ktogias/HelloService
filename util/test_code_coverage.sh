RATIO=$(bash ./util/compute_code_coverage.sh $1)
echo $RATIO
if [ $RATIO \< ".70" ]
then
    echo "Code coverage below 70%"
    exit 1
fi
PREVIOUS_RATIO=$(bash ./util/compute_code_coverage.sh $2)
echo $PREVIOUS_RATIO