### Call_number_by_adb_android
It's a cmd console / batch script file to ask for number and call it by oparating through adb command for android phones, need to be checked "USB debugging".
   ###### TIP1* Android device have to have **Developers options** turned on

## PLAN TO-DO / fixes

** [Click to see - Project plans & progress & fixes](https://github.com/J-ZOM/call_number_by_adb_android/projects/1).

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


### TIPS

*TIP1 - You can unlock the Developer options on any Android by locating
the Build number in your Settings menu and tapping it multiple times.*
``` If using stock Android, go to Settings > About phone > Build number.
   - On a Samsung Galaxy device, go to Settings > About device > Build number.
   - On an HTC device, go to Settings > About > Software information > More > Build number. 
   - On an LG device, go to Settings > About phone > Software info > Build number.

Tap Build number 5 times. After the first few taps, you should see the steps counting down
until you unlock the developer options. Once activated, you will see a message that reads, 
“You are now a developer!”
Go back to Settings, where you’ll find a Developer options entry in the menu.```
