import 'package:hackagr1d_web/src/pages/add_info.dart';
import 'package:hackagr1d_web/src/cards/card_benefits_1.dart';
import 'package:hackagr1d_web/src/cards/card_benefits_2.dart';
import 'package:hackagr1d_web/src/cards/card_auto.dart';
import 'package:hackagr1d_web/src/cards/card_home.dart';
import 'package:hackagr1d_web/src/cards/card_2.dart';
import 'package:flutter/material.dart';
import 'package:hackagr1d_web/src/cards/card_life.dart';
import 'package:hackagr1d_web/src/pages/benefits.dart';
import 'package:hackagr1d_web/src/pages/information_page.dart';
import 'package:hackagr1d_web/src/navBar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Navbar(),
          Expanded(child: LayoutBuilder(builder:
              (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
                child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      "Produtos em destaque",
                      style: TextStyle(color: Color(0xff4286F4), fontSize: 16),
                    ),
                  ),
                  GestureDetector(
                    child: CardAuto(), onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddInfo()));
                    },
                  ),
                  GestureDetector(child: CardHome(), onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddInfo()));
                  },),
                  GestureDetector(child: CardLife(), onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddInfo()));
                  },),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      "Conheça nossos Benefícios",
                      style: TextStyle(color: Color(0xff4286F4), fontSize: 16),
                    ),
                  ),
                  GestureDetector(child: CardBeneficio1(), onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => BenefitsPage()));
                  },),
                  GestureDetector(child: CardBeneficio2(), onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddInfo()));
                  },)
                ],
              ),
            ));
          }))
        ],
      ),
    );
  }
}