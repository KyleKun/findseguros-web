import 'package:flutter/material.dart';

class CardAuto extends StatefulWidget {
  @override
  _CardAutoState createState() => _CardAutoState();
}

class _CardAutoState extends State<CardAuto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
      child: Material(
        elevation: 2,
        color: Color(0xff4286F4),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container(
          padding: EdgeInsets.all(5),
          child: Container(
            height: 180,
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        child: Text("Seguro Auto",
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Text(
                              "Buscando seguro para o seu Auto? Que tal conferir nossas melhores opções de seguro?",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white))), 
                      SizedBox(height: 8,),
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
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 60, 0),
                  child: Icon(
                    Icons.motorcycle,
                    size: 120,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}