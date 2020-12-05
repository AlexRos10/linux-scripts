#!/bin/bash
read -p ">>> remove/create/move/copy: " input

#To check if the input is empty
if [ -z "$input" ];
then
   echo "command error: any option"
   exit

#Bulk file delete feature
elif [ $input = "remove" ] || [ $input = "rm"  ]; 
then
   while [ false ]
   do
      read -p ">> file name: " file
      if [ $file = "break"  ];
      then
         break
      else
         rm $file
      fi
   done

#Bulk file directory move feature
elif [ $input = "move"  ] || [ $input = "mv"  ]; 
then
   while [ false ]
   do
      read -p ">> file name: " file
      if [ $file = "break" ];
      then
         break
      else
         read -p "> new directory: " name
         mv $file $name
      fi
   done

#Bulk file copy function to another directory
elif [ $input = "copy" ] || [ $input = "cp" ];
then
   while [ false ]
   do
      read -p ">> file name: " file
      if [];
      then
         break
      else
         read -p "> directory: " name
         cp $file $name
      fi
   done

#Bulk file create feature
elif [ $input = "create" ] || [ $input = "touch" ];
then
   while [ false ]
   do
      read -p ">> file name: " file
      if [ $file = "break" ];
      then
         break
      else
         touch $file
      fi
   done

else
   echo "command error: <"$input"> doesn't exist"
   exit
fi
exit
