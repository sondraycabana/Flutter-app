import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: w,
                height: h * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/redbg.jpg"), fit: BoxFit.cover)),
                child: Column(
                  children: [
                    SizedBox(
                      height: h * 0.12,
                    ),
                    CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 60,
                        backgroundImage: AssetImage("img/pics3.png"))
                  ],
                )),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                width: w,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      // Row(
                      //   children: [
                      //     Expanded(
                      //       child: Container(),
                      //     ),
                      //     Text("Sign in to your account",
                      //         style: TextStyle(
                      //           fontSize: 20,
                      //           color: Colors.grey[500],
                      //         )),
                      //   ],
                      // ),
                    ])),
            SizedBox(
              height: 70,
            ),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54)),
                  Text("email@email.com",
                      style: TextStyle(fontSize: 18, color: Colors.grey[500])),
                ],
              ),
            ),
            SizedBox(height: 180),
            Container(
              width: w * 0.5,
              height: h * 0.08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage("img/redbg.jpg"), fit: BoxFit.cover)),
              child: Center(
                child: Text("Sign out",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
