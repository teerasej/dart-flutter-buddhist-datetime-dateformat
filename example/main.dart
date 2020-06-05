import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:buddhist_datetime_dateformat/buddhist_datetime_dateformat.dart';

void main() {
  Intl.defaultLocale = "th";
  initializeDateFormatting();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextflow Flutter Widget Today',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter 3 นาที: วันเดือนปีไทยๆ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    var now = DateTime.now();
    var onlyBuddhistYear = now.yearInBuddhistCalendar;

    var formatter = DateFormat.yMMMMEEEEd();
    var dateInBuddhistCalendarFormat = formatter.formatInBuddhistCalendarThai(now);

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Text('$dateInBuddhistCalendarFormat --- $onlyBuddhistYear'),
        ));
  }
}
