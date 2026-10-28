# Hali

Hali is a project for my mobile development class. I’m using it to learn Flutter and Dart, practice building user interfaces, and get more comfortable writing code.

## Current project

The app currently has an early login screen UI with a logo, username and password fields, and a login button. The login button is for the interface only; it does not authenticate or save user information.

## What I’m learning

- Building screens with Flutter widgets
- Organizing layout and styling
- Using text fields and buttons
- Adding image assets to a Flutter app
- Writing and improving Dart code as I learn

## Run the app

You’ll need the [Flutter SDK](https://docs.flutter.dev/get-started/install) installed.

From the project directory, run:

```sh
flutter pub get
flutter run
```

To run on a specific device, first check available devices with `flutter devices`, then use `flutter run -d <device-id>`.

## Project layout

```text
assets/       Images and other app assets
lib/          Dart application code
test/         Flutter tests
pubspec.yaml  Project configuration and dependencies
```

The main screen is in [`lib/main.dart`](lib/main.dart), and the logo is in `assets/logo.png`.

## Learning resources

- [Flutter documentation](https://docs.flutter.dev/)
- [Dart language tour](https://dart.dev/language)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
