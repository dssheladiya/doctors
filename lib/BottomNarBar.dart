import 'package:doctors/1_Hello.dart';
import 'package:doctors/2_Schedule.dart';
import 'package:doctors/3_Report.dart';
import 'package:doctors/4_Notifications.dart';
import "package:flutter/material.dart";

class BottomNar extends StatefulWidget {
  const BottomNar({Key? key}) : super(key: key);

  @override
  State<BottomNar> createState() => _BottomNarState();
}

class _BottomNarState extends State<BottomNar> {
  List col = [hello1(), Schedule2(), Report3(), notifications4()];
  int sele = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: col[sele],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BottomNavigationBar(
          currentIndex: sele,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff1C6BA4),
          unselectedItemColor: Colors.black54,
          onTap: (value) {
            setState(() {});
            sele = value;
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined), label: "Schedule"),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_page_rounded), label: "Report"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Notifications"),
          ],
        ),
      ),
    );
  }
}
