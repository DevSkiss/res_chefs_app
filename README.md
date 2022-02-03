
### Restaurant Chefs Flutter App

```bash
[✓] Flutter (Channel stable, 2.8.1, on macOS 12.1 21C52 darwin-arm, locale en-PH)
[✓] Android toolchain - develop for Android devices (Android SDK version 31.0.0)
[✓] Xcode - develop for iOS and macOS (Xcode 13.2)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2020.3)
[✓] VS Code (version 1.63.2)
```


```bash
flutter channel stable
```

Make sure to update your local version by running the command below:

```bash
flutter upgrade
```

### Step 2
This project works with the following code generators to create boilerplate code.

- freezed
- json_serializable
- auto_route_generator
- injectable_generator

Go to project root and execute the following command in console to get the required dependencies:

```bash
# This command fetches the necessary Dependencies
flutter pub get
# This command generates the necessary dart files (json parsing, models, etc)
flutter pub run build_runner build --delete-conflicting-outputs;
```
### That's it and run the app
