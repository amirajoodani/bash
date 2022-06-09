#!/bin/bash                                                                                                                    
clear                                                                                                                    
echo "hello $USER "                                                                                                                    
echo                                                                                                                    
echo "Today's date is `date` this week is `date +%V` "                                                                                                                    
echo                                                                                                                    
echo "these users are currently connected: "                                       
echo                                       
w | cut -d " " -f 1 |grep -v USER | sort -u                                       
echo                                                                                                                    
echo "Tihs is `uname -s` running on a `uname -m ` proccessor."                                                                                                                    
echo                                                                                                                    
echo "uptime is `uptime`"