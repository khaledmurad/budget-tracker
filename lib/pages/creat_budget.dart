import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:market_app/models/create_budget_json.dart';


class CreatBudgetPage extends StatefulWidget {
  @override
  _CreatBudgetPageState createState() => _CreatBudgetPageState();
}

class _CreatBudgetPageState extends State<CreatBudgetPage> {
  int activeCategory = 0;
  TextEditingController _budgetName =
  TextEditingController(text: "Grocery Budget");
  TextEditingController _budgetPrice = TextEditingController(text: "\$1500.00");
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
                          "Create budget",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Row(
                          children: [Icon(AntDesign.search1)],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Text(
                "Choose category",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.5)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(categories.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          activeCategory = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 10,
                          ),
                          width: 150,
                          height: 170,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 2,
                                  color: activeCategory == index
                                      ? Color(0xFFFF3378)
                                      : Colors.transparent),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.01),
                                  spreadRadius: 10,
                                  blurRadius: 3,
                                  // changes position of shadow
                                ),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 20, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey.withOpacity(0.15)),
                                    child: Center(
                                      child: Image.asset(
                                        categories[index]['icon'],
                                        width: 30,
                                        height: 30,
                                        fit: BoxFit.contain,
                                      ),
                                    )),
                                Text(
                                  categories[index]['name'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  })),
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
                    "budget name",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color(0xff67727d)),
                  ),
                  TextField(
                    controller: _budgetName,
                    cursorColor: Colors.black,
                    style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
                    decoration: InputDecoration(
                        hintText: "Enter Budget Name", border: InputBorder.none),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: (size.width - 140),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Enter budget",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: Color(0xff67727d)),
                            ),
                            TextField(
                              controller: _budgetPrice,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                  hintText: "Enter Budget",
                                  border: InputBorder.none),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFFFF3378),
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
