import 'package:flutter/material.dart';

class Arscanning14 extends StatefulWidget {
  const Arscanning14({Key? key}) : super(key: key);

  @override
  State<Arscanning14> createState() => _Arscanning14State();
}

class _Arscanning14State extends State<Arscanning14> {
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
                top: 30,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: [
                      Icon(Icons.add, color: Colors.white, size: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
