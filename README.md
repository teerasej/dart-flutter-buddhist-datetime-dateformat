# Buddhist Calendar DateTime and DateFormatter for Dart and Flutter

If this helps you out of problem, please give it a like in [pub.dev](https://pub.dev/packages/buddhist_datetime_dateformat) or [a star on github](https://github.com/teerasej/dart-flutter-buddhist-datetime-dateformat). :smile:

[ภาษาไทยอ่านวิธีใช้ที่นี่นะครับ](https://github.com/teerasej/dart-flutter-buddhist-datetime-dateformat/blob/master/README_th.md)

![2020-06-05_17-31-47](https://user-images.githubusercontent.com/85179/83866907-b8ee4000-a752-11ea-8c52-688490771f61.png)

These are extension that you can get `DateTime` and `DateFormat` in Buddhist calendar's format. 

I implemented these extensions for use in Thai language project. **But you can contribute to add more support** for other countries who also use Buddhist calendar in the apps.

## Getting Started

### 1. Setup 

Install package via `pubspec.yaml` 

```yaml
dependencies:
  intl: ^0.16.1  
  buddhist_datetime_dateformat: ^1.0.1
```

## 2. Initialization

Then go to your `main.dart`. Let's import and write some Initialization code.

```dart
// need this for `Intl.defaultLocale = "th";`
import 'package:intl/intl.dart';
// need this for initializeDateFormatting()
import 'package:intl/date_symbol_data_local.dart';

// This lets magic happen!
import 'package:buddhist_datetime_dateformat/buddhist_datetime_dateformat.dart';

void main() {

  // set your default locale here. It will be applied to DateFormat autmomatically.
  Intl.defaultLocale = "th";
  initializeDateFormatting();

  runApp(MyApp());
}
```

## 3. Use it 

- You will found `.yearInBuddhistCalendar` property in `DateTime`'s instance. This will return converted year value into Buddhist era.
- Also `.formatInBuddhistCalendarThai(datetime)` method in `DateFormat` which return correct format for Thai language if you pass DateTime's instance into it.

```dart
var now = DateTime.now();
var onlyBuddhistYear = now.yearInBuddhistCalendar;

var formatter = DateFormat.yMMMMEEEEd();
var dateInBuddhistCalendarFormat = formatter.formatInBuddhistCalendarThai(now);
```

## Open for contribution

If you want to contribute, there are several countries that also use Buddhist calendar:
          
- Thailand
- Cambodia
- Laos
- MyanMar
- Sri Lanka
- Malaysia
- Singapore

Reference: [https:en.wikipedia.org/wiki/Buddhist_calendar](https:en.wikipedia.org/wiki/Buddhist_calendar)

I don't know other langauge need a prefix for Buddhist year like in Thailand (พ.ศ.). If yes, so you can help me correct their format by update the code with your customization. Just make pull request.


