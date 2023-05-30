import 'package:flutter/material.dart';

class PaymentMethod11 extends StatefulWidget {
  const PaymentMethod11({Key? key}) : super(key: key);

  @override
  State<PaymentMethod11> createState() => _PaymentMethod11State();
}

class _PaymentMethod11State extends State<PaymentMethod11> {
  List colo = [Colors.blue, Colors.deepOrangeAccent, Colors.blue];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: width * 0.04),
                Container(
                  height: height * 0.045,
                  width: width * 0.095,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: InkResponse(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                ),
                SizedBox(width: width * 0.17),
                Text(
                  "Payment Method",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            SizedBox(
              height: height * 0.25,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    selected = value;
                  });
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [],
                  );
                },
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(
                3,
                (index) => CircleAvatar(
                    radius: 4,
                    backgroundColor: selected == index
                        ? Color(0xff1C6BA4)
                        : Colors.blue.shade100),
              ),
            ),
            SizedBox(height: height * 0.02),
            Text("data")
          ],
        ),
      ),
    );
  }
}
