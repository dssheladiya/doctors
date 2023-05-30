import 'package:flutter/material.dart';

class Report3 extends StatefulWidget {
  const Report3({Key? key}) : super(key: key);

  @override
  State<Report3> createState() => _Report3State();
}

class _Report3State extends State<Report3> {
  int mumon = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Report",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 28),
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz, size: 25),
                ],
              ),
              SizedBox(height: height * 0.03),
              Container(
                height: height * 0.20,
                decoration: BoxDecoration(
                  color: Color(0xffDCEDF9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Heart Rate",
                            style: TextStyle(color: Colors.black, fontSize: 23),
                          ),
                          SizedBox(height: height * 0.020),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "96",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 50,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(width: width * 0.01),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Text(
                                  "bpm",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: width * 0.04),
                      Image.asset(
                        "assets/images/Vector 3.png",
                        scale: 0.80,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
              Row(
                children: [
                  Container(
                    height: height * 0.2,
                    width: width * 0.42,
                    decoration: BoxDecoration(
                        color: Color(0xffF5E1E9),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/Vector (1).png",
                                  scale: 0.60),
                              Spacer(),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          SizedBox(height: height * 0.02),
                          Text(
                            "Blood Group",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          SizedBox(height: height * 0.001),
                          Text(
                            "A+",
                            style: TextStyle(color: Colors.black, fontSize: 40),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.05),
                  Container(
                    height: height * 0.2,
                    width: width * 0.42,
                    decoration: BoxDecoration(
                        color: Color(0xffFAF0DB),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/Group (1).png",
                                  scale: 0.70),
                              Spacer(),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          SizedBox(height: height * 0.02),
                          Text(
                            "Weight",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          SizedBox(height: height * 0.001),
                          Row(
                            children: [
                              Text(
                                "80",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 40),
                              ),
                              SizedBox(width: width * 0.005),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "Kg",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              Text(
                "Lattest Report",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: height * 0.03),
              Container(
                height: height * 0.12,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black12)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: ListTile(
                    leading: Container(
                      height: 70,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/images/Group 174.png"),
                              fit: BoxFit.cover)),
                    ),
                    title: Text(
                      "General Health",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    subtitle: Text("8 files"),
                    trailing: Icon(Icons.more_vert_outlined),
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
              Container(
                height: height * 0.12,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueAccent.shade100,
                          offset: Offset(1, 1),
                          blurRadius: 10)
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: ListTile(
                    leading: Container(
                      height: 70,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/images/Group 175.png"),
                              fit: BoxFit.cover)),
                    ),
                    title: Text(
                      "General Health",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    subtitle: Text("8 files"),
                    trailing: Icon(Icons.more_vert_outlined),
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
