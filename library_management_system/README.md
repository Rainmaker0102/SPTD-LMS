# library_management_system

A Flutter/Firebase web app that runs an online library website

## How to run the executable

Requirements: Python3

Navigate to the folder where the web app build is.
Run the command `python3 -m http.server` and using your web browser of choice navigate to the web address that shows in the terminal.

## How to build the web app
1. Using this [link](https://docs.flutter.dev/get-started/install) follow the instructions to get your flutter sdk working. Most of the issues brought up by `flutter doctor` can be ignored so long as your sdk can make a web build
2. Follow the directions in this [link](https://firebase.google.com/docs/flutter/setup?platform=web) so the firebase project can be instanced in the flutter app.
3. Assuming the IDE is VS Code, navigate to `Terminal > Run Build Task > flutter: flutter build web`.
4. The web build will be under `./build/web`
