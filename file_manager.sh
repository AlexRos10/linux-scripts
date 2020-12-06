#!/bin/bash
read -p ">>> remove/create/move/copy: " input

if [ -z "$input" ];
then
   echo "command error: any option"
   exit

elif [ $input = "remove" ] || [ $input = "rm"  ]
then
   while [ false ]
   do
      read -p ">> file name: " file
      if [ $file = "break"  ]
      then
         break
      elif [ $file = "all" ] || [ $file = "*" ]
      then
         rm -f *
         rmdir *
      else
         rm $file
      fi
   done

elif [ $input = "move"  ] || [ $input = "mv"  ]
then
   while [ false ]
   do
      read -p ">> file name: " file
      if [ $file = "break" ]
      then
         break
      else
         read -p "> new directory: " name
         mv $file $name
      fi
   done

elif [ $input = "copy" ] || [ $input = "cp" ]
then
   while [ false ]
   do
      read -p ">> file name: " file
      if [ $file = "break" ]
      then
         break
      else
         read -p "> directory: " name
         cp $file $name
      fi
   done

elif [ $input = "create" ] || [ $input = "touch" ]
then
   while [ false ]
   do
      :read -p ">> file name: " file
      if [ $file = "break" ]
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
