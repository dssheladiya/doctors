import 'package:flutter/material.dart';

class Uidesigner12 extends StatefulWidget {
  const Uidesigner12({Key? key}) : super(key: key);

  @override
  State<Uidesigner12> createState() => _Uidesigner12State();
}

class _Uidesigner12State extends State<Uidesigner12> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff1C6BA4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Container(
                  height: height * 0.050,
                  width: width * 0.12,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: InkResponse(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.06),
              Container(
                height: height * 0.14,
                width: width * 0.28,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(28),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/Rectangle 11 (3).png"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(height: height * 0.02),
              const Text(
                "Shahin Alam",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 23),
              ),
              const Text(
                "Ui Designer",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              SizedBox(height: height * 0.06),
              Container(
                height: height * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(width: width * 0.05),
                    const Icon(Icons.settings,
                        color: Color(0xff4A545E), size: 30),
                    SizedBox(width: width * 0.02),
                    const Text(
                      "Account Settings",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                height: height * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(width: width * 0.05),
                    const Icon(Icons.add_circle_outline,
                        color: Color(0xff4A545E), size: 30),
                    SizedBox(width: width * 0.02),
                    const Text(
                      "Privacy Policy ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                height: height * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(width: width * 0.05),
                    const Icon(Icons.payment,
                        color: Color(0xff4A545E), size: 30),
                    SizedBox(width: width * 0.02),
                    const Text(
                      "Payment Settings ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                height: height * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(width: width * 0.05),
                    const Icon(Icons.payment,
                        color: Color(0xff4A545E), size: 30),
                    SizedBox(width: width * 0.02),
                    const Text(
                      "Payment Settings ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.1),
              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: Row(
                  children: [
                    const Icon(Icons.logout, color: Colors.white, size: 35),
                    SizedBox(width: width * 0.03),
                    const Text(
                      "Log Out",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
