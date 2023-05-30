import 'package:flutter/material.dart';

class notifications4 extends StatefulWidget {
  const notifications4({Key? key}) : super(key: key);

  @override
  State<notifications4> createState() => _notifications4State();
}

class _notifications4State extends State<notifications4> {
  List menu = [
    "3 Schedules!",
    "14 Messages",
    "Medicine",
    "Vaccine Update",
    "App Update"
  ];
  List im = [
    "assets/images/Group 127 (1).png",
    "assets/images/Group 127 (2).png",
    "assets/images/Group 127.png",
    "assets/images/Group 127 (4).png",
    "assets/images/Group 127 (3).png"
  ];
  List colo = [
    Colors.black38,
    Colors.black38,
    Colors.transparent,
    Colors.black38,
    Colors.black38,
  ];
  int selected = 0;
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
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text(
                  "notifications",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    5,
                    (index) => InkResponse(
                      onTap: () {
                        setState(() {});
                        selected = index;
                      },
                      child: Container(
                        height: height * 0.13,
                        width: width * 0.9,
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: colo[index]),
                            boxShadow: [
                              BoxShadow(
                                  color: selected == index
                                      ? Colors.lightBlueAccent.shade100
                                      : Colors.transparent,
                                  offset: Offset(1, 1),
                                  blurRadius: 10)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          child: ListTile(
                            leading: Container(
                              height: height * 0.18,
                              width: width * 0.16,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(im[index])),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            title: Text(menu[index]),
                            subtitle: Text("Check your schedule Today"),
                          ),
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
