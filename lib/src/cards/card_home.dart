import 'package:flutter/material.dart';

class CardHome extends StatefulWidget {
  @override
  _CardHomeState createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
      child: Material(
        elevation: 2,
        color: Color(0xff2D4046),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container(
          padding: EdgeInsets.all(5),
          child: Container(
            height: 180,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(60, 0, 30, 0),
                  child: Icon(
                    Icons.home,
                    size: 120,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        child: Text("Seguro Residencial",
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Text(
                              "O que acha de checar algumas opções para seguro residencial?",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white))),
                                   SizedBox(height: 4,),
                      Material(
                        elevation: 2,
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          height: 40,
                           width: 210,
                            child: Center(
                              child: Text("Ver cotações", 
                              style: TextStyle(fontWeight: FontWeight.bold,),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}