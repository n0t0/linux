#!/bin/bash

# echo "If you are deploying on a single instance, enter 1"
# echo "For complete deployment, enter 9"
# read -p "Number of instances: " cluster


# if [ $cluster -eq $cluster 2>/dev/null -o $cluster -eq 0 2>/dev/null ]
# then
#     if [ $cluster -eq 1 ]; then
#         helm install elk-master -f /exec-ui/elk/masterNodes-values.yaml elastic/elasticsearch
#         helm install elk-data -f /exec-ui/elk/dataNodes-values.yaml elastic/elasticsearch
#         helm install elk-coord -f /exec-ui/elk/coordNodes-values.yaml elastic/elasticsearch
#     else
#         helm install elk-masterdata -f /exec-ui/elk/masterdataSingleNode-values.yaml elastic/elasticsearch
#         helm install elk-coord -f /exec-ui/elk/coordSingleNode-values.yaml elastic/elasticsearch
#     fi
# else
#    echo "Please type an integer"
# fi

echo "Is this a single node installation? [enter Y for 'Yes' or N for 'No']"
read -p "Anwser: " input

if [ "$input" != "${input#[Yy]}" ]
    then
        echo "Yes"
else
    if [[ ! "$input" =~ ^[0-9] ]] && [[  "$input" =~ ^[nN] ]]
        then
            echo "No"
        else
            echo "[enter Y for 'Yes' or N for 'No']"
            exit 1
    fi
fi



# read stack
# if [ "$stack" == "E" ] ||  [ "$stack" == "e" ]; then
# 	echo "Deploying elasticsearch and kibana ..... "
#         docker stack deploy -c docker-compose-es.yml es
# exit 1
# fi

# if [ "$stack" == "L" ] || [ "$stack" == "l" ]; then
#        echo "Deploying logstash ....."
#        docker stack deploy -c docker-compose-ls.yml es
# exit 1
# fi
