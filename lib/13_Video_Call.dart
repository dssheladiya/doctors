import 'package:flutter/material.dart';

class Videocall13 extends StatefulWidget {
  const Videocall13({Key? key}) : super(key: key);

  @override
  State<Videocall13> createState() => _Videocall13State();
}

class _Videocall13State extends State<Videocall13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 870,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/joseph-gonzalez-iFgRcqHznqg-unsplash 1.png"),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                top: 90,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: Container(
                        height: 130,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Rectangle 11 (3).png"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    SizedBox(height: 380),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Text(
                        "Md Shahin Alam",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          shadows: [
                            Shadow(color: Colors.black38, blurRadius: 10)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text("fghjkl"),
                    const SizedBox(height: 60),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: Icon(Icons.mic_off_outlined,
                                color: Colors.black),
                          ),
                          SizedBox(width: 20),
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 30,
                            child: Icon(Icons.call_end_outlined,
                                color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: Icon(Icons.videocam_outlined,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
