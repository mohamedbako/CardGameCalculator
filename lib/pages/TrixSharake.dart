import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'TrixNameOfGames/King.dart';

class TrixSharake extends StatefulWidget {
  @override
  State<TrixSharake> createState() => __TrixSharakeState();
}

class __TrixSharakeState extends State<TrixSharake> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
              title: Text("أحـسـبـلـي",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
              backgroundColor: Color.fromARGB(255, 146, 10, 10),
              centerTitle: true),
          body: ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 25),
                  child: Text(
                    "تـركــس شــراكـة",
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.w900),
                  ),
                ),
              ),

              Divider(
                color: Color.fromARGB(255, 67, 67, 67),
                indent: 80,
                endIndent: 80,
              ),

              // START TABLE
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),

/*                 height: 200,
                color: Color.fromARGB(255, 247, 78, 78),
                margin: EdgeInsets.only(left: 20, right: 20, top: 25), */
                child: DataTable(
                  headingRowHeight: 50,
                  headingRowColor: MaterialStateColor.resolveWith(
                      (states) => Color.fromARGB(255, 215, 215, 215)),
                  dataRowHeight: 40,
                  dataRowColor: MaterialStateColor.resolveWith(
                      (states) => Colors.white70),
                  showBottomBorder: true,
                  border: TableBorder.all(
                      width: 1.5,
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  columns: [
                    DataColumn(
                        label: Text(
                      "",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                    DataColumn(
                        label: Text(
                      "لـنـا",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                    DataColumn(
                        label: Text(
                      "لــهم",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ))
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text("Ali")),
                      DataCell(Text("BAKO")),
                      DataCell(Text("BAKO"))
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ali")),
                      DataCell(Text("BAKO")),
                      DataCell(Text("BAKO"))
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ali")),
                      DataCell(Text("BAKO")),
                      DataCell(Text("BAKO"))
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ali")),
                      DataCell(Text("BAKO")),
                      DataCell(Text("BAKO"))
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Ali")),
                      DataCell(Text("BAKO")),
                      DataCell(Text("BAKO"))
                    ]),
                  ],
                ),
              ),
              // START TABLE

              // التسمايات
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "التسمايات",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),

              Container(
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  children: [
                    InkWell(
                      child: Image.asset("images/King.png"),
                      onTap: () {
                        Navigator.of(context).pushNamed("King");
                      },
                    ),
                    InkWell(
                      child: Image.asset("images/Queen.png"),
                      onTap: () {
                        print("object");
                      },
                    ),
                    InkWell(
                      child: Image.asset("images/Lotush.png"),
                      onTap: () {
                        print("object");
                      },
                    ),
                    InkWell(
                      child: Image.asset("images/Dinar.png"),
                      onTap: () {
                        print("object");
                      },
                    ),
                    InkWell(
                      child: Image.asset("images/Trix.png"),
                      onTap: () {
                        print("object");
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
