import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

class Schedule2 extends StatefulWidget {
  const Schedule2({Key? key}) : super(key: key);

  @override
  State<Schedule2> createState() => _Schedule2State();
}

class _Schedule2State extends State<Schedule2> {
  List day = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
  List dat = ["12", "13", "14", "15", "16", "17"];
  List nam = ["Dr. Zim Akhter", "Dr. Shahin Alam", "Dr. Mim Akhter"];
  List tem = ["12:00 PM", "11:00 PM", "10:00 PM"];
  List tem1 = ["12:30 PM", "11:30 AM", "10:30 PM"];
  List imag = [
    "assets/images/Rectangle 11.png",
    "assets/images/Rectangle 11 (1).png",
    "assets/images/Rectangle 11 (2).png"
  ];
  int selected = 0;
  int selected1 = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              child: Row(
                children: [
                  Text(
                    "Schedule",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Icon(Icons.calendar_month_outlined, size: 33),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  dat.length,
                  (index) => InkResponse(
                    onTap: () {
                      setState(() {});
                      selected = index;
                    },
                    child: Container(
                      height: height * 0.14,
                      width: width * 0.2,
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: selected == index
                            ? Color(0xff1C6BA4)
                            : Color(0xffDCEDF9),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.02),
                          Text(
                            dat[index],
                            style: TextStyle(
                                color: selected == index
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 30),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            day[index],
                            style: TextStyle(
                                color: selected == index
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 23),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
            Column(
              children: List.generate(
                3,
                (index) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            tem[index],
                            style: TextStyle(
                                color: Color(0xff7D96B5),
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          SizedBox(width: width * 0.020),
                          Container(width: 290, decoration: DottedDecoration()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkResponse(
                        onTap: () {
                          setState(() {});
                          selected1 = index;
                        },
                        child: Container(
                          height: height * 0.16,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: selected1 == index
                                ? Color(0xff1C6BA4)
                                : Color(0xffDCEDF9),
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    child: Container(
                                      height: height * 0.10,
                                      width: width * 0.22,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Column(
                                        children: [
                                          SizedBox(height: height * 0.010),
                                          Image.asset(imag[index],
                                              scale: 0.20,
                                              width: 80,
                                              height: 78),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 190, top: 5),
                                    child: Icon(Icons.more_horiz,
                                        color: selected1 == index
                                            ? Colors.white70
                                            : Colors.black38,
                                        size: 28),
                                  ),
                                  Text(
                                    tem1[index],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                        color: selected1 == index
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                  SizedBox(height: height * 0.01),
                                  Text(
                                    nam[index],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: selected1 == index
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                  SizedBox(height: height * 0.01),
                                  Text(
                                    "Cardiologist",
                                    style: TextStyle(
                                        color: selected1 == index
                                            ? Colors.white70
                                            : Colors.black,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
