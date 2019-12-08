/usr/bin/createrepo --update /opt/repos/goprojects > /dev/null 2>&1
if [ $? -ne 0 ]
    then echo $(date)": An error occured updating the Go projects repo. Please attempt a manual update of the repository to get information." >> /var/log/repos/gorepo.log    
fi
