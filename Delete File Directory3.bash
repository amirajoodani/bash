rm "$(ls -t | tail -1)"     #based on modification time
rm  ls -l --sort=time  | sed -n 2p  | awk '{print $NF}'  # based on modify time 

