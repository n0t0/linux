value=(user1, user2)
for i in ${value};
      do 
      export userlist="$i -m u:$i:rwx";
      done

echo $userlist
      
#      cd ${bamboo.project_directory}/current
#      mkdir -p ${bamboo.project_writable_directories}
#      setfacl -R $userlist ${bamboo.project_writable_directories}
#      setfacl -dR $userlist ${bamboo.project_writable_directories}
