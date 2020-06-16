# echo "Is this a nine (9) node installation? [enter Y for 'Yes' or N for 'No']"
# read -p "Anwser: " input

# if [ "$input" != "${input#[Yy]}" ]
#     then
#         echo "Yes"
# else
#     if [[ ! "$input" =~ ^[0-9] ]] && [[  "$input" =~ ^[nN] ]]
#         then
#             echo "No"
#         else
#             echo "[enter Y for 'Yes' or N for 'No']"
#             exit 1
#     fi
# fi



nodeNumber() {
echo "Please enter a Number of Nodes"
echo "[Possible values: 9, 3, 1]"
echo ""
read -p "Number of Nodes: " input
echo ""

case "$input" in
    1)
        echo "1"
        return 0
    ;;
    3)
        echo "3"
        return 0
    ;;
    9)
        echo "9"
        return 0
    ;;
    *)
    echo "[Possible Values: 9, 3, 1]"
    echo ""
    return 1
    ;;
esac
}

until nodeNumber; do : ; done



case "$input" in
    1)
        echo "1"
    ;;
    3)
        echo "test"
    ;;
    9)
        echo "9"
    ;;
esac