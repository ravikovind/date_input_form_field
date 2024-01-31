# date_input_form_field

[![pub package](https://img.shields.io/pub/v/date_input_form_field.svg)](https://pub.dartlang.org/packages/date_input_form_field)
[![Score](https://img.shields.io/pub/points/date_input_form_field?label=Score&logo=dart)](https://pub.dartlang.org/packages/date_input_form_field/score)
[![Platform](https://img.shields.io/badge/Platform-Android%20|%20iOS%20|%20Web%20|%20macOS%20|%20Windows%20|%20Linux%20-blue.svg?logo=flutter)](https://pub.dartlang.org/packages/date_input_form_field)
![GitHub stars](https://img.shields.io/github/stars/ravikovind/date_input_form_field)
![GitHub forks](https://img.shields.io/github/forks/ravikovind/date_input_form_field)
![GitHub issues](https://img.shields.io/github/issues/ravikovind/date_input_form_field)
![GitHub pull requests](https://img.shields.io/github/issues-pr/ravikovind/date_input_form_field)

`date_input_form_field` is a widget for easy date input within a Form, supporting various formats. It is similar to the `TextFormField` widget.

<!-- video screenshots/date_input_form_field.mp4 -->
<img src="https://raw.githubusercontent.com/ravikovind/date_input_form_field/main/screenshots/date_input_form_field.gif"  height="600" />

## Usage

To use this plugin, add `date_input_form_field` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

```yaml
dependencies:
  date_input_form_field: ^1.0.0
```

## Example

Import the file to your project

```dart
import 'package:date_input_form_field/date_input_form_field.dart';
```

Use the Icon

```dart
DateInputFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  format: 'dd/MM/yyyy',
                  controller: controller,
                  decoration: const InputDecoration(
                    labelText: 'Date of Birth',
                    border: OutlineInputBorder(),
            ),
    ),


```

## Issues & Feedback

If you wish to contribute to this repo, welcome to [Pull Requests](https://github.com/ravikovind/date_input_form_field/pulls).
Star ⭐ the repo if you find it useful 🤩🤩. we are open to `enhancements`, `bug-fixes` & `suggestions`. feel free to open an [issue](https://github.com/ravikovind/date_input_form_field/issues).

## License

```md
MIT License
```

## Maintainers

### [Ravi Kovind](https://ravikovind.github.io/)
