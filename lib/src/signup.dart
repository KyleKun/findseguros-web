import 'package:flutter/material.dart';
import 'package:hackagr1d_web/src/Widget/bezierContainer.dart';
import 'package:hackagr1d_web/src/home.dart';
import 'package:hackagr1d_web/src/loginPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navBar.dart';
import 'profilePage.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


Color palleteLightGrey = Color(0xffc4d1fa);
Color palleteLightBlue = Color(0xff4286F4);
Color palleteMediumBlue = Color(0xff4286F4);
Color palleteBlue = Color(0xff1144e8);


class SignUpPage extends StatefulWidget {
  SignUpPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Voltar',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget _submitButton() {
    return InkWell(
      onTap: () {
        is_landing_page = false;
        Alert(
          context: context,
          type: AlertType.success,
          title: 'Cadastro realizado!',
          desc: 'Bem vindo(a) João!\nPara começar, que tal dar uma olhada em nosso pacotes?',
          buttons: [
            DialogButton(
              color: Colors.green,
              width: 200.0,
              child: Text(
                'Vamos lá!',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
              onPressed: () {
                  Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                setState(() {
                      FocusScope.of(context).requestFocus(new FocusNode());
                });
              },
            ),
          ],
        );      
      },
      child: Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
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
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [palleteBlue, palleteMediumBlue])),
      child: Text(
        'Cadastrar',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      ),
    );
  }

  Widget _loginAccountLabel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Já tem uma conta?',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text(
              'Login',
              style: TextStyle(
                  color: palleteLightBlue,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'CADASTRO',
          style: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 42,
            fontWeight: FontWeight.w700,
            color: palleteBlue,
          ),
        ),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Nome completo"),
        _entryField("Endereço de email"),
        _entryField("Senha", isPassword: true),
        _entryField("Repita a senha", isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: SizedBox(),
                    ),
                    _title(),
                    SizedBox(
                      height: 50,
                    ),
                    _emailPasswordWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                    onTap: () {
                      is_landing_page = false;
                      Alert(
                        context: context,
                        type: AlertType.success,
                        title: 'Cadastro realizado!',
                        desc: 'Bem vindo(a) João!\nPara começar, que tal dar uma olhada em nosso pacotes?',
                        buttons: [
                          DialogButton(
                            color: Colors.green,
                            width: 200.0,
                            child: Text(
                              'Vamos lá!',
                              style: TextStyle(fontSize: 18.0, color: Colors.white),
                            ),
                            onPressed: () {
                                Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Home()));
                              setState(() {
                                    FocusScope.of(context).requestFocus(new FocusNode());
                              });
                            },
                          ),
                        ],
                      ).show();      
                    },
                    child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    alignment: Alignment.center,
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
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [palleteBlue, palleteMediumBlue])),
                    child: Text(
                      'Cadastrar',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    ),
                  ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _loginAccountLabel(),
              ),
              Positioned(top: 40, left: 0, child: _backButton()),
            ],
          ),
        )
      )
    );
  }
}
