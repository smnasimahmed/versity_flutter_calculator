# Flutter Calculator App

## Overview
This is a simple calculator app built using Flutter. It features basic arithmetic operations with a modern UI. The app demonstrates how to design a functional interface using Flutter widgets and layouts.

<p align="center">
  <img src="https://github.com/user-attachments/assets/1c7a4fcd-28d5-4d97-bef5-33a596528c62" width="200"/>
  <img src="https://github.com/user-attachments/assets/678c4466-2128-4437-ac2c-e8b6dd7617a5" width="200"/>
</p>

## Features
* User-friendly interface with large buttons for easy input.
* Basic arithmetic operations: Addition, Subtraction, Multiplication, Division.
* Cross-platform support for Android and iOS.
* Minimalist design with a dark theme for comfortable usage.

## What I Used / Learned
* Flutter SDK: Used for building the user interface.
* Dart Language: Core language for implementing logic.
* Layouts (Column and Row): Used to arrange buttons and the display neatly.
* Container Decorations: To design rounded buttons with colors based on functions.

## Challenges and Issues
### State Management Problem
Problem: The calculator uses a StatelessWidget, which doesn’t allow dynamic updates for the display.
Solution: Replace with a StatefulWidget to manage input and result updates more effectively.
### Display Issue
Problem: The display shows a static "0" without updating as the user presses buttons.
Solution: Store input and result values in a state variable and use setState() to update the display on user interaction.

## Improvements & Next Steps
Stateful Widgets: Migrate to StatefulWidget to handle state changes properly.
State Management: Consider Provider or Riverpod if the app becomes more complex.
UI Optimization: Use Expanded or Flexible to adapt the layout across all screen sizes.
Input Validation: Add logic to handle division by zero and other invalid operations.

## Future Plans
* Advanced Operations: Add functions like square roots, power, and memory storage.
* Theme Toggle: Add light and dark mode support.
* Landscape Mode Support: Optimize the layout for both portrait and landscape orientations.

## How to Install and Run Locally
### Prerequisites
* Java 17: Ensure it is installed. Download from [Oracle Archive](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html).
* Flutter SDK: [Get Flutter](https://docs.flutter.dev/get-started/install/windows).

### Steps
#### Clone the repository:
```
git clone https://github.com/your-repository-url.git
```
#### Navigate into the project directory:
```
cd calculator-app
```

#### Install dependencies:
```
flutter pub get
```

#### Ensure Java 17 is the active version:
```
java -version
```
##### If necessary, set Java 17 manually:

* Linux/Mac:
```
export JAVA_HOME=/path-to-java-17
```
* Windows: Update the JAVA_HOME environment variable.
#### Run the app:
```
flutter run
```


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
