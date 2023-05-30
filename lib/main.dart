import 'package:doctors/10_appointment.dart';
import 'package:doctors/11_PaymentMethod.dart';
import 'package:doctors/12_Ui%20Designer.dart';
import 'package:doctors/13_Video_Call.dart';
import 'package:doctors/14_AR%20Scanning.dart';
import 'package:doctors/3_Report.dart';
import 'package:doctors/4_Notifications.dart';
import 'package:doctors/5_8Doctorss.dart';
import 'package:doctors/6_Details.dart';
import 'package:doctors/7_Dhanmondi.dart';
import 'package:doctors/9_Appointment2.dart';
import 'package:flutter/material.dart';

import '1_Hello.dart';
import '2_Schedule.dart';
import 'BottomNarBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNar(),
    );
  }
}
