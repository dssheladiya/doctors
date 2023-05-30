import 'package:flutter/material.dart';

class Dhanmondi7 extends StatefulWidget {
  const Dhanmondi7({Key? key}) : super(key: key);

  @override
  State<Dhanmondi7> createState() => _Dhanmondi7State();
}

class _Dhanmondi7State extends State<Dhanmondi7> {
  List imag = [
    "assets/images/Rectangle 11 (7).png",
    "assets/images/Rectangle 11 (8).png",
    "assets/images/Rectangle 11 (7).png"
  ];
  List name = ["Share Link", "Upload"];
  List col = [Color(0xff1C6BA4), Color(0xffE09F1F)];
  List ico = [Icons.link, Icons.file_upload_outlined];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: width * 0.07),
                Container(
                  height: height * 0.05,
                  width: width * 0.099,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black45, width: 1)),
                  child: Center(child: Icon(Icons.arrow_back)),
                ),
                SizedBox(width: width * 0.1),
                Icon(Icons.location_on_outlined, size: 30),
                SizedBox(width: width * 0.03),
                Text(
                  "Dhanmondi, Dhaka",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: height * 0.03),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              //physics: BouncingScrollPhysics(),
              clipBehavior: Clip.antiAlias,
              child: Row(
                children: List.generate(
                  3,
                  (index) => Container(
                    height: height * 0.26,
                    width: width * 0.4,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(1, 1),
                              blurRadius: 5)
                        ],
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(imag[index]),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(height: height * 0.02),
                        Text(
                          "    Virgo Pharma",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: height * 0.01),
                        Text(
                          "    2km away",
                          style: TextStyle(color: Colors.black38),
                        ),
                        SizedBox(height: height * 0.01),
                        Row(
                          children: [
                            SizedBox(width: width * 0.030),
                            Text("⭐"),
                            SizedBox(width: width * 0.020),
                            Text(
                              "4.5",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: width * 0.020),
                            Text(
                              "(17 reviews)",
                              style: TextStyle(color: Colors.black38),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            Text(
              "Upload Prescription",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            SizedBox(height: height * 0.023),
            Text(
              "We will show the pharmacy that got ",
              style: TextStyle(fontSize: 15, color: Color(0xff4A545E)),
            ),
            Text(
              " all the medicine.",
              style: TextStyle(fontSize: 15, color: Color(0xff4A545E)),
            ),
            SizedBox(height: height * 0.03),
            Container(
              height: height * 0.28,
              width: width * 0.8,
              decoration: BoxDecoration(
                  color: Color(0xffE4E9F1),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 60),
                child: Row(
                  children: List.generate(
                    2,
                    (index) => Column(
                      children: [
                        Container(
                          height: height * 0.12,
                          width: width * 0.23,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(1, 1),
                                  blurRadius: 5),
                            ],
                          ),
                          child: Icon(ico[index], color: col[index], size: 40),
                        ),
                        SizedBox(height: height * 0.02),
                        Text(
                          name[index],
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            Container(
              height: height * 0.08,
              width: width * 0.83,
              decoration: BoxDecoration(
                  color: Color(0xff1C6BA4),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text("Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500))),
            ),
          ],
        ),
      ),
    );
  }
}
