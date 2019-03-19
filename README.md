### Call_number_by_adb_android
It's a cmd console / batch script file to ask for number and call it by oparating through adb command for android phones, need to be checked "USB debugging".

## SOON  TO-DO

**- filter values by integer and specific number length**

~~-Find connected device by USB~~
- Integrate usb adb & WiFi adb
   - prompt for choosing wifi  or USB module
   - discovery nearby /  connected devices

 ~~- option to reconnect device if it's not visible~~

- option/ command to "end call"

###### v4
 - Console automatically search for connected device by USB and creat an external file with saved device_id, ten use defined device_id later to make a call, after loop the saved file is deleted.

~~###### v3.1
- Added fliter by number & show error when it's different values.~~
- had to delete the option- will be fixed soon


###### V2
- Added progress bar.

###### V1
- Ask You for input of the phone number.
- Shows SUCCES / ERROR message.
- Loop to the begin after call/wrong call.
