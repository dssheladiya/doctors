import 'package:flutter/material.dart';

class hello1 extends StatefulWidget {
  const hello1({Key? key}) : super(key: key);

  @override
  State<hello1> createState() => _hello1State();
}

class _hello1State extends State<hello1> {
  List image = [
    "assets/images/Group 52.png",
    "assets/images/Group 53.png",
    "assets/images/Group 54 (4).png",
    "assets/images/Group 173.png"
  ];
  List color = [Color(0xff1C6BA4), Color(0xffE09F1F), Color(0xff1C6BA4)];
  List det = ["12", "13", "14"];
  List dey = ["Thu", "wed", "Thu"];
  List name = ["Dr. Mim Akhter", "Dr. Zim Akhter", "Dr. Shahin Alam"];
  List tem = ["09:30 AM", "11:30 AM", "10:00 AM"];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "👋Hello!",
                          style:
                              TextStyle(fontSize: 21, color: Color(0xff253141)),
                        ),
                        SizedBox(height: height * 0.01),
                        Text(
                          "Shahin Alam",
                          style: TextStyle(
                              fontSize: 23,
                              color: Color(0xff253141),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Spacer(),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/id.png"),
                                  fit: BoxFit.cover),
                            )),
                        Positioned(
                          left: 40,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(100),
                              border:
                                  Border.all(color: Colors.white, width: 3.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.01),
              Center(
                child: Container(
                  height: height * 0.08,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightBlueAccent.shade200.withOpacity(0.3)),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, size: 28),
                          hintText: "Search medical..",
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          suffixIcon:
                              Icon(Icons.menu, color: Colors.black, size: 28)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Services",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  // physics: BouncingScrollPhysics(),
                  child: Row(
                    children: List.generate(
                      4,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage(image[index]),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.025),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffDCEDF9),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Get the Best",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Medical Service ",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: height * 0.03),
                            Text(
                              "Lorem Ipsum is simply dummy",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                            SizedBox(height: height * 0.01),
                            Text(
                              "text of the printing  ",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 48),
                        child: Image.asset(
                          "assets/images/imgbin-physician-hospital-medicine-doctor-dentist-"
                          "doctor-MvjeZ7XWhJkkxsq5WJJQFWNcK-removebg-preview 1.png",
                          height: 200,
                          width: 156,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Upcoming Appointments",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: height * 0.01),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    color.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 150,
                        width: 350,
                        decoration: BoxDecoration(
                            color: color[index],
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  child: Container(
                                    height: 110,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade500,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Column(
                                      children: [
                                        SizedBox(height: height * 0.02),
                                        Text(
                                          det[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 30),
                                        ),
                                        SizedBox(height: height * 0.01),
                                        Text(
                                          dey[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 25),
                                        ),
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
                                  padding:
                                      const EdgeInsets.only(left: 180, top: 10),
                                  child: Icon(Icons.more_horiz,
                                      color: Colors.white, size: 25),
                                ),
                                Text(
                                  tem[index],
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                                SizedBox(height: height * 0.01),
                                Text(
                                  name[index],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                SizedBox(height: height * 0.01),
                                Text(
                                  "Depression",
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 16),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
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
