# ส่วนเสริมจัดการแปลงค่าปีพุทธศักราช (พ.ศ.) DateTime และ DateFormat สำหรับภาษา Dart และ Flutter

ถ้าชอบ[กด Like ใน Pub.dev](https://pub.dev/packages/buddhist_datetime_dateformat) หรือ[กดให้ดาวใน Github Repo หน่อยน้า](https://github.com/teerasej/dart-flutter-buddhist-datetime-dateformat) :smile:

[In English, click here](/README.md)

![2020-06-05_17-25-40](https://user-images.githubusercontent.com/85179/83866915-bb509a00-a752-11ea-9b2e-f1a77cdf016d.png)



นี่เป็น Library Package ภาษา Dart สำหรับเสริม method ที่จะทำให้ `DateTime` และ `DateFormat` คืนค่าออกมาเป็นปีพุทธศักราช และแสดงคำว่า **พ.ศ.** แทน **ค.ศ.** ครับ

ทำออกมาให้สามารถใช้กับ DateTime และ DateFormat ทั่วไปได้ทันที 

อาจจะมีวิธีที่ดีกว่านี้นะ แต่แบบนี้ก็สามารถใช้งานได้แล้ว หลายๆ ครั้งเราต้องการแค่คำว่า พ.ศ. หรือปี 25XX แทน 19XX หรือ 20XX เท่านั้น

## วิธีการเริ่มใช้งาน

### 1. Setup 

ติดตั้ง package ผ่านไฟล์ `pubspec.yaml` 

```yaml
dependencies:
  intl: ^0.16.1  
  buddhist_datetime_dateformat: ^1.0.1
```

## 2. Initialization

ไปที่ไฟล์ `main.dart`. import package 3 บรรทัดข้างล่างนี้ และอย่างลืม 2 บรรทัดในส่วนของ `main()` ด้วย

```dart
// ใช้สำหรับโค้ด `Intl.defaultLocale = "th";`
import 'package:intl/intl.dart';
// ใช้สำหรับโค้ด initializeDateFormatting()
import 'package:intl/date_symbol_data_local.dart';

// อันนี้แหละ ส่วนเสริม
import 'package:buddhist_datetime_dateformat/buddhist_datetime_dateformat.dart';

void main() {

  // กำหนด locale ที่นี่
  Intl.defaultLocale = "th";
  initializeDateFormatting();

  runApp(MyApp());
}
```

## 3. ใช้ส่วนเสริมจาก DateTime และ DateFormat ได้เลย 

- You will found `.yearInBuddhistCalendar` property in `DateTime`'s instance. This will return converted year value into Buddhist era.
- Also `.formatInBuddhistCalendarThai(datetime)` method in `DateFormat` which return correct format for Thai language if you pass DateTime's instance into it.

```dart
var now = DateTime.now();
var onlyBuddhistYear = now.yearInBuddhistCalendar;
// ค่าปี now.year ปกติจะได้ 2020 
// ถ้าเรียกผ่าน now.yearInBuddhistCalendar จะได้เป็น 2563

var formatter = DateFormat.yMMMMEEEEd();
var dateInBuddhistCalendarFormat = formatter.formatInBuddhistCalendarThai(now);
// ค่า formatter.format(now) ปกติจะได้เป็นปี ค.ศ. 2020  
// ถ้าเรียกผ่าน formatter.formatInBuddhistCalendarThai(now) จะได้เป็น พ.ศ. 2563
```

