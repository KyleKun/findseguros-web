import 'package:flutter/material.dart';
import 'package:hackagr1d_web/src/loginPage.dart';
import 'package:hackagr1d_web/src/signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'navBar.dart';


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
                  color: Colors.purple),
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
              color: Colors.white,
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
                  style: TextStyle(color: Colors.purple),
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
          height: 400.0,
          width: 700.0,
          child: Carousel(
            boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            dotIncreasedColor: Colors.purple,
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.bottomRight,
            dotVerticalPadding: 10.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,
            images: [
              Image.asset("welcome_image.png", width: width,),
              Image.asset("wallet.png", width: width,),
              Image.asset("security.png", width: width),
            ],
          ),
      ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset("verified.png", width: 40,),
        SizedBox(width: 130,),
        Image.asset("money.png", width: 40,),
        SizedBox(width: 130,),
        Image.asset("car.png", width: 40,),
      ],),
      SizedBox(height: 10,),
      //Container(color: Colors.purple, width: 500, height: 5,),
      Row(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(color: Colors.purple, width: 50, height: 4),
        SizedBox(width: 120,),
        Container(color: Colors.purple, width: 50, height: 4),
        SizedBox(width: 120,),
        Container(color: Colors.purple, width: 50, height: 4),
      ],),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
          Text('\nPacotes e\npromoções\nbaseados em\nseu perfil'),
          SizedBox(width: 60,),
          Text('Ganhe descontos\ne benefícios\nexclusivos'),
          SizedBox(width: 60,),
          Text('Seu carro\nnunca mais\nvai se sentir\ninseguro'),
      ],),
      Container(color: Colors.white, width: width, child: SizedBox(height: 45),)
      ],)
      
    ]; 
  }
}
  





/**
class WelcomePage extends StatefulWidget {
  WelcomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Widget _submitButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color(0xffd896ff).withAlpha(100),
                  offset: Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ],
            color: Colors.white),
        child: Text(
          'Login',
          style: TextStyle(fontSize: 20, color: Color(0xffd896ff)),
        ),
      ),
    );
  }

  Widget _signUpButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Text(
          'Registrar',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  Widget _label() {
    return Container(
        margin: EdgeInsets.only(top: 40, bottom: 20),
        child: Column(
          children: <Widget>[
            Text(
              'Logue com suas digitais!',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            SizedBox(
              height: 20,
            ),
            Icon(Icons.fingerprint, size: 90, color: Colors.white),
            SizedBox(
              height: 20,
            ),
            Text(
              'Touch ID',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ));
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'T',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: 'es',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 't',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(2, 4),
                      blurRadius: 5,
                      spreadRadius: 2)
                ],
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffefbbff), Color(0xff800080)])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _title(),
                SizedBox(
                  height: 80,
                ),
                _submitButton(),
                SizedBox(
                  height: 20,
                ),
                _signUpButton(),
                SizedBox(
                  height: 20,
                ),
                //_label()
              ],
            ),
          ),
      ),
    );
  }
}
*/