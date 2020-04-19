import 'package:flutter/material.dart';
import 'package:hackagr1d_web/src/home.dart';
import 'package:hackagr1d_web/src/loginPage.dart';
import 'package:hackagr1d_web/src/profilePage.dart';
import 'package:hackagr1d_web/src/benefits.dart';
import 'package:hackagr1d_web/src/welcomePage.dart';

Color palleteLightGrey = Color(0xffc4d1fa);
Color palleteLightBlue = Color(0xff4286F4);
Color palleteMediumBlue = Color(0xff4286F4);
Color palleteBlue = Color(0xff1144e8);

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

bool is_landing_page = true;

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              onPressed: (){
                is_landing_page = true;
                Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
              },
              child: 
            Text(
              "FindSeguros",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: palleteBlue,
                  fontSize: 30,
                  letterSpacing: 2),
            ),),
            Row(
              children: <Widget>[
                FlatButton(child: Text("Menu Principal"), onPressed: (){
                  is_landing_page = false;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },),
                SizedBox(
                  width: 30,
                ),
                FlatButton(child: Text("Recompensas"), onPressed: (){
                  is_landing_page = false;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BenefitsPage()));
                },),
                SizedBox(
                  width: 30,
                ),
                FlatButton(child: Text("Perfil"), onPressed: (){
                  is_landing_page = false;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                },),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: is_landing_page? palleteMediumBlue: Color(0xffFF5455),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {
                    is_landing_page ? 
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage())):
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
                    is_landing_page = true;
                  },
                  child: Text(
                    is_landing_page ? "Login": "Sair" ,
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          FlatButton(
              onPressed: (){
                is_landing_page = true;
                Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
              },
              child:
          Text(
            "FindSeguros",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: palleteBlue, fontSize: 30, letterSpacing: 2),
          ),),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(child: Text("Menu Principal"), onPressed: (){
                  is_landing_page = false;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },),
                SizedBox(
                  width: 30,
                ),
                FlatButton(child: Text("Recompensas"), onPressed: (){
                  is_landing_page = false;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BenefitsPage()));
                },),
                SizedBox(
                  width: 30,
                ),
                FlatButton(child: Text("Perfil"), onPressed: (){
                  is_landing_page = false;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                },),
              ],
            ),
          )
        ]),
      ),
    );
  }
}