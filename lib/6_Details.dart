import 'package:flutter/material.dart';

class Details6 extends StatefulWidget {
  const Details6({
    Key? key,
    this.name11,
    this.mimages11,
  }) : super(key: key);

  final name11;
  final mimages11;
  @override
  State<Details6> createState() => _Details6State();
}

class _Details6State extends State<Details6> {
  List name = ["Patients", "Exp.", "Rating"];
  List nem = ["100+", "10 Yr", "4.67"];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Color(0xff1C6BA4)),
                ),
                Positioned(
                  top: 110,
                  left: 30,
                  child: Container(
                    height: height * 0.14,
                    width: width * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1, 1),
                            blurRadius: 5)
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: width * 0.05),
                        Container(
                          height: 95,
                          width: width * 0.22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                            image: DecorationImage(
                                image: AssetImage(widget.mimages11),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: width * 0.05),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height * 0.040),
                            Text(
                              "${widget.name11}",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: height * 0.010),
                            Text(
                              "Cardiologist in apolo hospital",
                              style: TextStyle(color: Colors.black38),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(
                    children: [
                      InkResponse(
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.10,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.arrow_back, color: Colors.white),
                        ),
                      ),
                      Spacer(),
                      Text("Details",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                      Spacer(),
                      Container(
                        height: height * 0.05,
                        width: width * 0.10,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.link, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: List.generate(
                      3,
                      (index) => Container(
                        height: height * 0.13,
                        width: width * 0.25,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Color(0xffE8EBED),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              SizedBox(height: height * 0.015),
                              Text(
                                nem[index],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Text(
                    "About",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  SizedBox(height: height * 0.03),
                  Text(
                    "MBBS, Ph.D., Fellow, International College of Surgeons.",
                    style: TextStyle(fontSize: 17, color: Color(0xff4A545E)),
                  ),
                  SizedBox(height: height * 0.03),
                  Text(
                    "Ex- Professor & Head of Department\nDepartment of Neurosurgery\nDhaka Medical College & Hospital",
                    style: TextStyle(fontSize: 18, color: Color(0xff4A545E)),
                  ),
                  SizedBox(height: height * 0.03),
                  ListTile(
                      leading: Container(
                        height: height * 0.33,
                        width: width * 0.15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffE8EBED)),
                        child: Icon(Icons.access_time_filled,
                            color: Colors.blue, size: 32),
                      ),
                      subtitle: Text(
                        "6 PM - 9 PM",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      title: Text("Availability"),
                      trailing: Icon(
                        Icons.arrow_right_outlined,
                        size: 40,
                        color: Colors.blue,
                      )),
                  SizedBox(height: height * 0.03),
                  Container(
                    height: height * 0.08,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
