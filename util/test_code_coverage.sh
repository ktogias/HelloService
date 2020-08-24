RATIO=$(bash ./util/compute_code_coverage.sh $1)
echo $RATIO
if [ $RATIO \< ".70" ];
then
    echo "Code coverage below 70%"
    exit 1
fi
cp $2 previous_coverage.xml
PREVIOUS_RATIO=$(bash ./util/compute_code_coverage.sh ./previous_coverage.xml)
echo $PREVIOUS_RATIO
DIFF=$(bc <<< $PREVIOUS_RATIO - $RATIO)
echo $DIFF
if [ $RATIO \< $PREVIOUS_RATIO ] && [$DIFF \> ".10"];
then
    echo "Code coverage reduced by more than 10% compared to last good commit"
    exit 1
fi