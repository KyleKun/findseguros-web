import 'package:flutter/material.dart';
import 'package:hackagr1d_web/src/pages/loginPage.dart';
import 'package:hackagr1d_web/src/pages/signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'navBar.dart';


Color palleteLightGrey = Color(0xffc4d1fa);
Color palleteLightBlue = Color(0xff4286F4);
Color palleteMediumBlue = Color(0xff4286F4);
Color palleteBlue = Color(0xff1144e8);

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    SingleChildScrollView(child: 
    Container(color: Colors.white, child: 
    Column(
        children: <Widget>[
          Navbar(),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 20.0, horizontal: 40.0),
            child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: pageChildren(constraints.biggest.width / 2),
                );
              } else {
                return Column(
                  children: pageChildren(constraints.biggest.width),
          );
        }
      },
                ),
              ),
            ],
              
          
    ))));
  }


  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(child: Text(
              "Seu seguro",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: palleteMediumBlue),
            )
            ,padding: EdgeInsets.only(left: 20),),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Na medida certa e sempre com você.",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(height: 20,),
            Padding(padding: EdgeInsets.only(left: 20),
            child:
            MaterialButton(
              color: palleteBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUpPage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Cadastrar",
                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ),
          ],
        ),
      ),
      Column(children: <Widget>[
Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: SizedBox(
          height: 425.0,
          width: 700.0,
          child: Carousel(
            boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            dotIncreasedColor: palleteLightGrey,
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.bottomRight,
            dotVerticalPadding: 10.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,
            images: [
              Image.network("https://i.imgur.com/X7AJPJP.png", width: width,),
              Image.network("https://i.imgur.com/Hplx5rq.png", width: width,),
              Image.network("https://i.imgur.com/MpcMmZ7.png", width: width),
            ],
          ),
      ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.network("https://i.imgur.com/qRFwgsH.png", width: 40,),
        SizedBox(width: 130,),
        Image.network("https://i.imgur.com/5S3ZsUP.png", width: 40,),
        SizedBox(width: 130,),
        Image.network("https://i.imgur.com/6bHFNmc.png", width: 40,),
      ],),
      SizedBox(height: 10,),
      //Container(color: Colors.purple, width: 500, height: 5,),
      Row(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(color: palleteBlue, width: 50, height: 4),
        SizedBox(width: 120,),
        Container(color: palleteBlue, width: 50, height: 4),
        SizedBox(width: 120,),
        Container(color: palleteBlue, width: 50, height: 4),
      ],),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
          Text('\nPacotes e\npromoções\nbaseados\nno seu perfil'),
          SizedBox(width: 60,),
          Text('Ganhe descontos\ne benefícios\nexclusivos'),
          SizedBox(width: 60,),
          Text('Seu carro\nnunca mais\nvai se sentir\ninseguro'),
      ],),
      Container(color: Colors.white, width: width, child: SizedBox(height: 45),)
      ],),
    ]; 
  }
}