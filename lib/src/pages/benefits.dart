import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackagr1d_web/src/navBar.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Color palleteLightGrey = Color(0xffc4d1fa);
Color palleteLightBlue = Color(0xff4286F4);
Color palleteMediumBlue = Color(0xff4286F4);
Color palleteBlue = Color(0xff1144e8);

class BenefitsPage extends StatefulWidget {
  BenefitsPage({Key key}) : super(key: key);

  @override
  _BenefitsPage createState() => _BenefitsPage();
}

class _BenefitsPage extends State<BenefitsPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1080, height: 1860, allowFontScaling: false);
    return Scaffold(
        backgroundColor: Colors.white,
        body:  SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(120)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Navbar(),
                    SizedBox(
                      height: ScreenUtil().setHeight(50),
                    ),
                    Container(
                    height: 150,
                    width: 300,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      color: palleteLightBlue,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 10,
                            color: Color(0x12000000))
                      ]),
                      child: Center(
                        child: 
                        Text(
                          'Seus pontos: \n 330',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: 'Rubik',
                          ),
                        ),)
                      ),

                    SizedBox(height: 40,),
                      Row(
                        children: <Widget>[
                          Text(
                            "Benefícios disponíveis",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Rubik',
                              color: palleteMediumBlue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow( // bottomLeft
                                  offset: Offset(-2.5, -2.5),
                                  color: Colors.white,
                                ),
                                Shadow( // bottomRight
                                    offset: Offset(-2.5, -2.5),
                                    color: Colors.white
                                ),
                                Shadow( // topRight
                                    offset: Offset(2.5, 2.5),
                                    color: Colors.white
                                ),
                                Shadow( // topLeft
                                    offset: Offset(-2.5, 2.5),
                                    color: Colors.white
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: .5, color: Colors.black),
                      SizedBox(height: 10),

                        Container(
                            color: Color.fromRGBO(243, 245, 248, 1),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                  Text('10\% de desconto em \n seguro de vida!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Rubik',
                              color: palleteMediumBlue,
                              fontSize: 22
                            ),
                            ),
                          SizedBox(width: 8),
                                    
                          
                          FlatButton(
                          color: palleteLightBlue,
                          onPressed: () {
                            Alert(
                                  context: context,
                                  type: AlertType.error,
                                  title: 'Pontos insuficientes!',
                                  desc: 'Não desanime! Você ganhará mais pontos ao longo do tempo e também ao contratar novos seguros.',
                                  buttons: [
                                    DialogButton(
                                      color: Colors.green,
                                      width: 200.0,
                                      child: Text(
                                        'OK',
                                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        setState(() {

                                              FocusScope.of(context).requestFocus(new FocusNode());
                                        });
                          },
                        ),
                      ],
                    ).show();
                          }, 
                          child: Text(
                            'Adquirir \n 970 pontos',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontFamily: 'Rubik',),
                            )
                          ),
                          SizedBox(width: 10),
                          IconButton(
                            icon: Icon(Icons.info_outline), 
                            onPressed: (){
                            Alert(
                                  context: context,
                                  type: AlertType.warning,
                                  title: '1 Reparo Residencial GRATUITO',
                                  desc: 'Este benefício te dá o direito de receber a visita de um técnico especializado vinculado ao seguro residencial "xyz"!\nPara maiores informações veja a página do produto dessa seguradora.',
                                  buttons: [
                                    DialogButton(
                                      color: Colors.green,
                                      width: 200.0,
                                      child: Text(
                                        'OK',
                                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        setState(() {

                                              FocusScope.of(context).requestFocus(new FocusNode());
                                        });
                          },
                        ),
                        DialogButton(
                                      color: Colors.orange,
                                      width: 200.0,
                                      child: Text(
                                        'VER PRODUTO',
                                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        setState(() {

                                              FocusScope.of(context).requestFocus(new FocusNode());
                                        });
                                      }
                        ),
                      ],
                    ).show();
                          }),
                          
                              ],
                            )
                          ),

                        SizedBox(height: 40,),
                      Row(
                        children: <Widget>[
                          Text(
                            "Benefícios adquiridos",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Rubik',
                              color: palleteMediumBlue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow( // bottomLeft
                                  offset: Offset(-2.5, -2.5),
                                  color: Colors.white,
                                ),
                                Shadow( // bottomRight
                                    offset: Offset(-2.5, -2.5),
                                    color: Colors.white
                                ),
                                Shadow( // topRight
                                    offset: Offset(2.5, 2.5),
                                    color: Colors.white
                                ),
                                Shadow( // topLeft
                                    offset: Offset(-2.5, 2.5),
                                    color: Colors.white
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: .5, color: Colors.black),
                      SizedBox(height: 10),

                        Container(
                            color: Color.fromRGBO(243, 245, 248, 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                 Text('1 Reparo Residencial',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Rubik',
                                        color: palleteMediumBlue,
                                        fontSize: 22
                            ),
                          ),
                          SizedBox(width: 8),
                          FlatButton(
                          color: Colors.grey[600],
                          onPressed: () {}, 
                          child: Text(
                            'Adquirido',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontFamily: 'Rubik',),
                            )
                          
                          ),
                          SizedBox(width: 10),
                          IconButton(
                            icon: Icon(Icons.info_outline), 
                            onPressed: (){
                            Alert(
                                  context: context,
                                  type: AlertType.warning,
                                  title: '1 Reparo Residencial GRATUITO',
                                  desc: 'Este benefício te dá o direito de receber a visita de um técnico especializado vinculado ao seguro residencial "xyz"\nPara maiores informações veja a página do produto dessa seguradora.',
                                  buttons: [
                                    DialogButton(
                                      color: Colors.green,
                                      width: 200.0,
                                      child: Text(
                                        'OK',
                                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        setState(() {

                                              FocusScope.of(context).requestFocus(new FocusNode());
                                        });
                          },
                        ),
                        DialogButton(
                                      color: Colors.orange,
                                      width: 200.0,
                                      child: Text(
                                        'VER PRODUTO',
                                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        setState(() {

                                              FocusScope.of(context).requestFocus(new FocusNode());
                                        });
                                      }
                        ),
                      ],
                    ).show();
                          })
                              ],
                            )
                          ),

                           Container(
                            color: Color.fromRGBO(243, 245, 248, 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                 Text('20\$ de cashback',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Rubik',
                                        color: palleteMediumBlue,
                                        fontSize: 22
                            ),
                          ),
                          SizedBox(width: 50),
                          FlatButton(
                          color: Colors.grey[600],
                          onPressed: () {}, 
                          child: Text(
                            'Adquirido',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontFamily: 'Rubik',),
                            )
                          
                          ),
                          SizedBox(width: 10),
                          IconButton(
                            icon: Icon(Icons.info_outline), 
                            onPressed: (){
                            Alert(
                                  context: context,
                                  type: AlertType.warning,
                                  title: '1 Reparo Residencial GRATUITO',
                                  desc: 'Este benefício te dá o direito de receber a visita de um técnico especializado vinculado ao seguro residencial "xyz"\nPara maiores informações veja a página do produto dessa seguradora.',
                                  buttons: [
                                    DialogButton(
                                      color: Colors.green,
                                      width: 200.0,
                                      child: Text(
                                        'OK',
                                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        setState(() {

                                              FocusScope.of(context).requestFocus(new FocusNode());
                                        });
                          },
                        ),
                        DialogButton(
                                      color: Colors.orange,
                                      width: 200.0,
                                      child: Text(
                                        'VER PRODUTO',
                                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        setState(() {

                                              FocusScope.of(context).requestFocus(new FocusNode());
                                        });
                                      }
                        ),
                      ],
                    ).show();
                          }),
                              ],
                            )
                          ),



]))));
  }
} 