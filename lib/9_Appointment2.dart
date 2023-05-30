import 'package:flutter/material.dart';

class Appointment9 extends StatefulWidget {
  const Appointment9({Key? key}) : super(key: key);

  @override
  State<Appointment9> createState() => _Appointment9State();
}

class _Appointment9State extends State<Appointment9> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: height * 0.045,
                    width: width * 0.095,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Icon(Icons.arrow_back)),
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$",
                        style: TextStyle(fontSize: 17, color: Colors.black54),
                      ),
                      Text(
                        "12",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text("\/Ap.")
                ],
              ),
              SizedBox(height: height * 0.05),
              Container(
                height: height * 0.15,
                width: width * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    image: DecorationImage(
                        image: AssetImage("assets/images/Rectangle 11 (3).png"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(height: height * 0.020),
              Text(
                "Dr. Mim Akhter",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 22),
              ),
              SizedBox(height: height * 0.010),
              Text(
                "Cardiologist in apolo hospital",
                style: TextStyle(
                    color: Colors.black38, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: height * 0.010),
              Row(
                children: [
                  SizedBox(width: width * 0.24),
                  Text(
                    "⭐",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: width * 0.020),
                  Text(
                    "4.5",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  SizedBox(width: width * 0.010),
                  Text("(17 reviews)",
                      style: TextStyle(fontSize: 17, color: Color(0xff4A545E))),
                ],
              ),
              SizedBox(height: height * 0.05),
              SingleChildScrollView(
                child: Container(
                  height: height * 0.2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "Write your symptoms..",
                          focusedBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none))),
                ),
              ),
              SizedBox(height: height * 0.03),
              Container(
                height: height * 0.10,
                width: width * 0.9,
                margin: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Container(
                      height: height * 0.18,
                      width: width * 0.16,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/Group 127 (1).png")),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    title: Text("Schedule",
                        style: TextStyle(color: Colors.black38)),
                    subtitle: Text(
                      "6 AM - 9 AM",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
              Container(
                height: height * 0.09,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff1C6BA4)),
                child: Center(
                  child: Text(
                    "Book Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
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
