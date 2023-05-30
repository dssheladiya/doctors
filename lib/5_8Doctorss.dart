import 'package:doctors/6_Details.dart';
import 'package:flutter/material.dart';

class Doctors5 extends StatefulWidget {
  const Doctors5({Key? key}) : super(key: key);

  @override
  State<Doctors5> createState() => _Doctors5State();
}

class _Doctors5State extends State<Doctors5> {
  List imag = [
    "assets/images/Group 92.png",
    "assets/images/Group 93.png",
    "assets/images/Group 94.png",
    "assets/images/Group 93.png"
  ];
  List img = [
    "assets/images/Rectangle 11 (3).png",
    "assets/images/Rectangle 11 (4).png",
    "assets/images/Rectangle 11 (6).png"
  ];
  List im1 = [
    "assets/images/Group (3).png",
    "assets/images/Stethoscope.png",
    "assets/images/Vector (2).png",
    "assets/images/Group (2).png"
  ];
  List nam = ["Dentist", "Surgeon", "Allergist", "Urologist"];
  List name = ["Dr. Mim Akhter", "Dr. Jon Sina", "Dr. Zim Khan"];
  List yrs = ["0-2 yrs", "3-5 yrs", "10+ yrs"];
  bool switch1 = false;

  int selected = 0;
  int selected1 = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Container(
                      height: height * 0.06,
                      width: width * 0.12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black38, width: 1)),
                      child: Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: width * 0.22),
                    Text(
                      "Doctors",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.020),
              Container(
                height: height * 0.07,
                width: width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightBlueAccent.shade200.withOpacity(0.3)),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: InkResponse(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                context: context,
                                builder: (BuildContext context) {
                                  return StatefulBuilder(
                                    builder: (context, setState) {
                                      return Container(
                                        height: 550,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 10),
                                          child: Column(
                                            children: [
                                              SizedBox(height: height * 0.010),
                                              Container(
                                                height: 7,
                                                width: 60,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Color(0xff1C6BA4)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 220, top: 10),
                                                child: Text(
                                                  "Categories",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 27),
                                                ),
                                              ),
                                              Row(
                                                children: List.generate(
                                                  4,
                                                  (index) => InkResponse(
                                                    onTap: () {
                                                      setState(() {
                                                        selected = index;
                                                      });
                                                    },
                                                    child: Container(
                                                      height: height * 0.13,
                                                      width: 72.5,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10,
                                                              vertical: 15),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          border: Border.all(
                                                            color: selected ==
                                                                    index
                                                                ? Colors
                                                                    .blueAccent
                                                                : Color(
                                                                    0xffD7DEEA),
                                                          )),
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        8,
                                                                    vertical:
                                                                        8),
                                                            child: Container(
                                                              height: height *
                                                                  0.070,
                                                              width: 62,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: selected ==
                                                                        index
                                                                    ? Colors
                                                                        .blue
                                                                    : Colors
                                                                        .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12),
                                                                border: Border.all(
                                                                    color: Color(
                                                                        0xffD7DEEA)),
                                                              ),
                                                              child: Image.asset(
                                                                  im1[index],
                                                                  color: selected ==
                                                                          index
                                                                      ? Colors
                                                                          .white
                                                                      : Colors
                                                                          .black),
                                                            ),
                                                          ),
                                                          Text(
                                                            nam[index],
                                                            style: TextStyle(
                                                                color: selected ==
                                                                        index
                                                                    ? Color(
                                                                        0xff1C6BA4)
                                                                    : Color(
                                                                        0xff4A545E)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: height * 0.010),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Nearby Doctors",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff7B8D9E),
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  SizedBox(width: width * 0.03),
                                                  Switch(
                                                    activeTrackColor:
                                                        Color(0xffE09F1F),
                                                    inactiveThumbColor:
                                                        Colors.yellowAccent,
                                                    activeColor: Colors.white,
                                                    inactiveTrackColor:
                                                        Colors.grey,
                                                    hoverColor: Colors.white,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        switch1 = !switch1;
                                                      });
                                                    },
                                                    value: switch1,
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 220, top: 20),
                                                child: Text(
                                                  "Experience",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 27),
                                                ),
                                              ),
                                              Row(
                                                children: List.generate(
                                                  3,
                                                  (index) => InkResponse(
                                                    onTap: () {
                                                      setState(() {});
                                                      selected1 = index;
                                                    },
                                                    child: Container(
                                                      height: height * 0.045,
                                                      width: width * 0.25,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10,
                                                              vertical: 25),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: selected1 ==
                                                                index
                                                            ? Color(0xff1C6BA4)
                                                            : Colors.white,
                                                        border: Border.all(
                                                            color: Color(
                                                                0xff1C6BA4)),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          yrs[index],
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 15,
                                                              color: selected1 ==
                                                                      index
                                                                  ? Colors.white
                                                                  : Color(
                                                                      0xff1C6BA4)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: height * 0.020),
                                              Container(
                                                height: height * 0.09,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Color(0xff1C6BA4)),
                                                child: Center(
                                                  child: Text(
                                                    "Apply",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                            child: Icon(Icons.menu,
                                color: Colors.black, size: 28)),
                        prefixIcon: Icon(Icons.search, size: 28),
                        hintText: "Search doctor..",
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        focusedBorder:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
              ),
              SizedBox(height: height * 0.020),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text(
                  "Live Doctors",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    4,
                    (index) => Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: height * 0.11,
                      width: width * 0.23,
                      decoration: BoxDecoration(
                          //color: Colors.white,
                          // borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(imag[index]),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.020),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Popular Doctors",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(color: Color(0xff1C6BA4), fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.020),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  3,
                  (index) => Container(
                    height: height * 0.15,
                    width: width * 0.87,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        InkResponse(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Details6(
                                      name11: name[index],
                                      mimages11: img[index],
                                    ),
                                  ));
                            });
                          },
                          child: Container(
                            height: height * 0.15,
                            width: width * 0.30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(28),
                                image: DecorationImage(
                                    image: AssetImage(img[index]),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        SizedBox(width: width * 0.030),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height * 0.020),
                            Text(
                              name[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: height * 0.010),
                            Text(
                              "Cardiologist in apolo hospital",
                              style: TextStyle(color: Color(0xff4A545E)),
                            ),
                            SizedBox(height: height * 0.015),
                            Row(
                              children: [
                                Text("⭐"),
                                SizedBox(width: width * 0.020),
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                                SizedBox(width: width * 0.010),
                                Text("(17 reviews)",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff4A545E))),
                              ],
                            ),
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
    );
  }
}
