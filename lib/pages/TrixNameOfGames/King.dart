import 'package:flutter/material.dart';

class King extends StatefulWidget {
  const King({super.key});

  @override
  State<King> createState() => _KingState();
}

class _KingState extends State<King> {
  int _countL = 0;
  int _countR = 0;
  int counter = 0;
  double T = 0;
  double B = 0;
  double R = 0;
  double L = 0;
  // -------- Left Button ---------
  void incrementCountL() {
    if (_countL >= 1 || R == 200) {
      return;
    }
    setState(() {
      _countL += 1;
      _countR = 0;
      T = 280;
      L = 200;
      counter += 1;
    });
  }

  void decrementCountL() {
    if (_countL < 1) {
      return;
    }
    setState(() {
      _countL -= 1;
      T = 0;
      L = 0;
    });
  }

  // -------- Right Button ---------
  void incrementCountR() {
    if (_countR >= 1 || L == 200) {
      return;
    }
    setState(() {
      _countR += 1;
      _countL = 0;
      T = 280;
      R = 200;
    });
  }

  void decrementCountR() {
    if (_countR < 1) {
      return;
    }
    setState(() {
      _countR -= 1;
      T = 0;
      R = 0;
    });
  }

  void resetCount() {
    setState(() {
      _countL = 0;
      _countR = 0;
      R = L = B = T = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: Container(
        color: Color.fromARGB(255, 187, 187, 187),
        child: ListView(children: [
          Container(
            margin: EdgeInsets.only(right: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: resetCount,
                    child: Icon(Icons.refresh),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))))),
              ],
            ),
          ),
          Text(
            "King",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            // color: Colors.black,
            height: 400,
            child: Stack(
              children: [
                AnimatedPositioned(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 80,
                            child: Image.asset("images/CardKing.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  duration: Duration(milliseconds: 400),
                  top: T,
                  bottom: B,
                  right: R,
                  left: L,
                  curve: Curves.fastOutSlowIn,
                ),
                AnimatedPositioned(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.green,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 80,
                            child: Image.asset("images/CardKing.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  duration: Duration(milliseconds: 400),
                  top: T,
                  bottom: B,
                  right: R,
                  left: L,
                  curve: Curves.fastOutSlowIn,
                ),
                AnimatedPositioned(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.green,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 80,
                            child: Image.asset("images/CardKing.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  duration: Duration(milliseconds: 400),
                  top: T,
                  bottom: B,
                  right: R,
                  left: L,
                  curve: Curves.fastOutSlowIn,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "US",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "YOU",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blueGrey,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: decrementCountL,
                            icon: Icon(Icons.remove),
                            color: Colors.white,
                          ),
                          Text(
                            '${_countL}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: incrementCountL,
                            icon: Icon(Icons.add),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blueGrey,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: decrementCountR,
                            icon: Icon(Icons.remove),
                            color: Colors.white,
                          ),
                          Text(
                            '${_countR}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: incrementCountR,
                            icon: Icon(Icons.add),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Done"),
          )
        ]),
      )),
    );
  }
}
