#/usr/bin/bash
sleep_time(){
    sleep 5;
}
exit_status() {
    if [ $? -eq 0 ]
        then
                echo "-----------------------------------------"
                echo "*   Command Execution Was Successful.   *"
                echo "-----------------------------------------"
                sleep_time
        else
                echo "-------------------------------------------------------"
                echo "     [Error] Process Command Execution Has Failed!     "
                echo "-------------------------------------------------------"
                sleep_time

        # read -p "The last command has exited with an error. Exit script? (yes/no)" answer
        #         if [ "$answer" == "yes" ]
        #             then
        #                 exit 1
        #         fi 
    fi 
}

start() {
            echo
            echo "***>>> Upgrading The Operating System <<<***"
            echo
}
upgrade() {
            sudo apt update -y;
            exit_status

            sudo apt install nginx -y;
            exit_status

            sudo systemctl restart nginx;
            exit_status

            sudo systemctl enable nginx;
            exit_status
}
exitUpdate() {

            echo
            echo ">>>>   Operating System Update Has Been Completed  <<<<"
            echo
            exit
}
start
upgrade
exitUpdate