import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trix_app/pages/Trix.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: Text("أحـسـبـلـي",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
            backgroundColor: Color.fromARGB(255, 146, 10, 10),
            centerTitle: true,
          ),
          drawer: Drawer(
            child: ListView(children: [
              UserAccountsDrawerHeader(
                  accountName: null,
                  accountEmail: null,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/drawer.jpg"),
                        fit: BoxFit.cover),
                  )),
              ListTile(
                title: Text(
                  "حول التطبيق",
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                    "أحسبلي، تطبيق لحساب ألعاب الوراق مثل التركس و طرنيب وكونكان"),
                leading: Icon(
                  Icons.app_registration_rounded,
                  size: 25,
                ),
              )
            ]),
          ),
          body: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      child: Text(
                        "أخــتــر اللــــــعــبـة",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w800),
                      ),
                    ),

                    // ------ START BUTTON ------
                    Container(
                      height: 150,
                      child: InkWell(
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            "images/TrixButton.png",
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                        onTap: () {
                          setState(() {
                            _isVisible = true;
                          });
                        },
                      ),
                    ),
                    // ------ END BUTTON ------
                    Visibility(
                      visible: _isVisible,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: (() {
                              Navigator.of(context).pushNamed("trixSharake");
                            }),
                            child: Text(
                              "تركس شراكة",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.red)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: (() {
                              Navigator.of(context).pushNamed("trix");
                            }),
                            child: Text(
                              "بدون شراكة ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.red)),
                          )
                        ],
                      ),
                    ),

                    Container(
                      height: 150,
                      child: InkWell(
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            "images/TrixButton.png",
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                        onTap: () {
                          setState(() {
                            _isVisible = false;
                          });
                        },
                      ),
                    ),

                    Container(
                      height: 150,
                      child: InkWell(
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            "images/TrixButton.png",
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
