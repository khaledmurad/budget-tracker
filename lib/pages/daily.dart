import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:market_app/models/daily.dart';
import 'package:market_app/models/day_month.dart';


class DailyPage extends StatefulWidget {
  @override
  _DailyPageState createState() => _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    int activeDay = 3;
    return Scaffold(
      backgroundColor: Colors.white30,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.01),
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
                          "Daily Transaction",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Icon(AntDesign.search1)
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(days.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                activeDay = index;
                              });
                            },
                            child: Container(
                              width: (MediaQuery.of(context).size.width - 40) / 7,
                              child: Column(
                                children: [
                                  Text(
                                    days[index]['label'],
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: activeDay == index
                                            ? Color(0xFFFF3378)
                                            : Colors.transparent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: activeDay == index
                                                ? Color(0xFFFF3378)
                                                : Colors.black.withOpacity(0.1))),
                                    child: Center(
                                      child: Text(
                                        days[index]['day'],
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: activeDay == index
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                  children: List.generate(daily.length, (index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: (size.width - 40) * 0.7,
                              child: Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey.withOpacity(0.1),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        daily[index]['icon'],
                                        width: 30,
                                        height: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Container(
                                    width: (size.width - 90) * 0.5,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          daily[index]['name'],
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          daily[index]['date'],
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black.withOpacity(0.5),
                                              fontWeight: FontWeight.w400),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: (size.width - 40) * 0.3,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    daily[index]['price'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.green),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 65, top: 8),
                          child: Divider(
                            thickness: 0.8,
                          ),
                        )
                      ],
                    );
                  })),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Text(
                      "Total",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black.withOpacity(0.4),
                          fontWeight: FontWeight.w600),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "\$1780.00",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
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
