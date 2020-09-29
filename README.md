# wifi-debug-adb

Script to enable WiFi android debugging on any Android Device using Batch File for windows

> Make sure Developers option and USB Degugging is enabled before you run script\
> Follow these step to enable [Developers Options and USB debugging](https://developer.android.com/studio/debug/dev-options) if not enabled

## Execute file with Administrator Privilege

- Connect your device via USB to your PC/Laptop
- Connect your device to the same network as your PC/Laptop
- Execute the above file
- Disconnect USB
- Run ```adb devices``` on CMD/Terminal, you'll notice your device added
- Run ```adb install </package-name>``` from the build\app\output\apk\ of your project or any specific directory if apk is moved manually.
