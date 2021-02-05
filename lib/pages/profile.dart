import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController _email =
  TextEditingController(text: "khaledmurad@gmail.com");
  TextEditingController dateOfBirth = TextEditingController(text: "25-05-1996");
  TextEditingController password = TextEditingController(text: "aaaa1234");
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white30,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.white70.withOpacity(0.01),
                  spreadRadius: 10,
                  blurRadius: 3,
                  // changes position of shadow
                ),
              ]),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 60, right: 20, left: 20, bottom: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Icon(AntDesign.setting)
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Container(
                          width: (size.width - 40) * 0.4,
                          child: Container(
                            child: Stack(
                              children: [
                                RotatedBox(
                                  quarterTurns: -2,
                                  child: CircularPercentIndicator(
                                      circularStrokeCap: CircularStrokeCap.round,
                                      backgroundColor: Colors.grey.withOpacity(0.3),
                                      radius: 110.0,
                                      lineWidth: 6.0,
                                      percent: 0.53,
                                      progressColor: Color(0xFFFF3378)),
                                ),
                                Positioned(
                                  top: 16,
                                  left: 13,
                                  child: Container(
                                    width: 85,
                                    height: 85,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://images.unsplash.com/photo-1531256456869-ce942a665e80?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTI4fHxwcm9maWxlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
                                            fit: BoxFit.cover)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: (size.width - 40) * 0.6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Abbie Wilson",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Credit score: 73.50",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(0.4)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFFFF3378),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFFF3378).withOpacity(0.01),
                              spreadRadius: 10,
                              blurRadius: 3,
                              // changes position of shadow
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 25, bottom: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "United Bank Asia",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "\$2446.90",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white)),
                              child: Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Text(
                                  "Update",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color(0xff67727d)),
                  ),
                  TextField(
                    controller: _email,
                    cursorColor: Colors.black,
                    style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
                    decoration: InputDecoration(
                        hintText: "Email", border: InputBorder.none),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Date of birth",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color(0xff67727d)),
                  ),
                  TextField(
                    controller: dateOfBirth,
                    cursorColor: Colors.black,
                    style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
                    decoration: InputDecoration(
                        hintText: "Date of birth", border: InputBorder.none),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Date of birth",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color(0xff67727d)),
                  ),
                  TextField(
                    obscureText: true,
                    controller: password,
                    cursorColor: Colors.black,
                    style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
                    decoration: InputDecoration(
                        hintText: "Password", border: InputBorder.none),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
