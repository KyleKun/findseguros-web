import 'package:flutter/material.dart';

class CardLife extends StatefulWidget {
  @override
  _CardLifeState createState() => _CardLifeState();
}

class _CardLifeState extends State<CardLife> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
      child: Material(
        elevation: 2,
        color: Color(0xffFF5455),
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
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        child: Text("Seguro de Vida",
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Text(
                              "Quando se trata da nossa família, não podemos deixar pra depois. Confira algumas opções de seguro de vida para o seu perfil.",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                                  ),
                                ),
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
                    Icons.person,
                    size: 120,
                    color: Colors.white,
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