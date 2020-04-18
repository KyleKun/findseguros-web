import 'package:hackagr1d_web/src/cards/card_benefits_1.dart';
import 'package:hackagr1d_web/src/cards/card_benefits_2.dart';
import 'package:hackagr1d_web/src/cards/card_1.dart';
import 'package:hackagr1d_web/src/cards/card_2.dart';
import 'package:flutter/material.dart';
import 'package:hackagr1d_web/src/information_page.dart';
import 'package:hackagr1d_web/src/navBar.dart';
import 'package:hackagr1d_web/src/profilePage.dart';

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
                      "Seus produtos",
                      style: TextStyle(color: Color(0xff4286F4), fontSize: 16),
                    ),
                  ),
                  GestureDetector(
                    child: Card1(), onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => InformationPage()));
                    },
                  ),
                  GestureDetector(child: Card2(), onTap: (){},),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      "Conheça nossos Benefícios",
                      style: TextStyle(color: Color(0xff4286F4), fontSize: 16),
                    ),
                  ),
                  GestureDetector(child: CardBeneficio1(), onTap: (){},),
                  GestureDetector(child: CardBeneficio2(), onTap: (){},)
                ],
              ),
            ));
          }))
        ],
      ),
    );
  }
}