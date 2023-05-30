import 'package:doctors/11_PaymentMethod.dart';
import 'package:flutter/material.dart';

class Appointment10 extends StatefulWidget {
  const Appointment10({Key? key}) : super(key: key);

  @override
  State<Appointment10> createState() => _Appointment10State();
}

class _Appointment10State extends State<Appointment10> {
  DateTime initial = DateTime.now();
  int selected = 0;
  List time = [
    "09:30 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
    "12:00 AM",
    "12:30 PM",
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: height * 0.045,
                        width: width * 0.095,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(10)),
                        child: InkResponse(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back)),
                      ),
                      SizedBox(width: width * 0.21),
                      Text(
                        "Appointment",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  CalendarDatePicker(
                    initialCalendarMode: DatePickerMode.year,
                    initialDate: initial,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                    onDateChanged: (value) {},
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.05),
            Container(
              height: height * 0.43,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff1C6BA4),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.03),
                    Text(
                      "Time",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: height * 0.03),
                    Expanded(
                      child: GridView.builder(
                        // shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 20,
                          childAspectRatio: 3 / 1.3,
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {});
                              selected = index;
                            },
                            child: Container(
                              height: 10,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: selected == index
                                      ? Color(0xffE09F1F)
                                      : Colors.transparent,
                                  border: Border.all(
                                      width: 1,
                                      color: selected == index
                                          ? Colors.transparent
                                          : Colors.white)),
                              child: Center(
                                child: Text(
                                  time[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      wordSpacing: 2,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    InkResponse(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentMethod11(),
                            ));
                      },
                      child: Container(
                        height: height * 0.08,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "Make appointment",
                            style: TextStyle(
                                color: Color(0xff1C6BA4),
                                fontWeight: FontWeight.w700,
                                letterSpacing: 01,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
