import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackagr1d_web/src/welcomePage.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:hackagr1d_web/src/navBar.dart';


class FinalRoute extends StatefulWidget {
  FinalRoute({Key key}) : super(key: key);

  @override
  _FinalRouteState createState() => new _FinalRouteState();
}

class _FinalRouteState extends State<FinalRoute>{
 

  Color left = Colors.black;
  Color right = Colors.white;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
          child: Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    Colors.lightBlue[100], Colors.lightBlue[300],
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height >= 745.0
                ? MediaQuery.of(context).size.height
                : 775.0,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Navbar(),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                Center(
                  child:  Container(
                width: 800,
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Text("Antes de fechar negócio...",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),),
                 ],),),),
                   Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(child: Text("analisamos seu perfil e montamos\npacotes que você não pode perder!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                   ),],),
                   SizedBox(height: 30),
                      new Center(child: Container(
                        width: 800,
                        child: _buildPackages(context),
                      ),
                      ),
                    ],
                  ),
                ),
            
          ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

  }

  Widget _buildPackages(BuildContext context) {
    return Column(
      children: <Widget>[

    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            elevation: 2,
            color: Colors.white,
            shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    Colors.orange[200], Colors.orange[100],
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
                  width: 240.0,
                  height: 405.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.person_outline, size: 120, color: Colors.redAccent,),
                      SizedBox(height: 10),
                      Center(child: Text("Combo\n+Seguro de Vida",
                      style: TextStyle(
                         fontFamily: "Rubik",
                         fontSize: 18.0,
                         fontWeight: FontWeight.bold,
                      ),),),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, left: 25.0, right: 25.0, bottom: 10.0),
                        child: TextField(
                          readOnly: true,
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            hintText: "+ 1000 pontos",
                            hintStyle: TextStyle(
                                fontFamily: "Rubik", fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, left: 25.0, right: 25.0, bottom: 10.0),
                        child: TextField(
                          readOnly: true,
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            hintText: "1ª parcela FREE",
                            hintStyle: TextStyle(
                                fontFamily: "Rubik", fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        onPressed: () {

                          is_landing_page = true;
                          
                          Alert(
                        context: context,
                        type: AlertType.success,
                        title: 'Ótima escolha!',
                        desc: 'Estamos felizes que demonstrou interesse em uma de nossas recomendações Caio!\nSempre recomendamos as melhores opções baseadas em seu perfil!\nVocê será redirecionado à página da seguradora correspondente ao(s) produto(s) selecionados.',
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
                                        MaterialPageRoute(builder: (context) => WelcomePage()));
                              setState(() {
                                    FocusScope.of(context).requestFocus(new FocusNode());
                              });
                            },
                          ),
                        ],
                      ).show(); 
                          
                        },
                        child: Text(
                          "Ver detalhes do pacote" ,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      
                    ],

                  ),
          ),
          ),
          Card(
            elevation: 2,
            color: Colors.white,
            shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    Colors.purple[200], Colors.purple[100],
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
                  width: 240.0,
                  height: 405.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.home, size: 120, color: Colors.yellow[300],),
                      SizedBox(height: 10),
                      Center(child: Text("Combo\n+Seguro Residencia",
                      style: TextStyle(
                         fontFamily: "Rubik",
                         fontSize: 18.0,
                         fontWeight: FontWeight.bold,
                      ),),),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, left: 25.0, right: 25.0, bottom: 10.0),
                        child: TextField(
                          readOnly: true,
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            hintText: "+ 1500 pontos",
                            hintStyle: TextStyle(
                                fontFamily: "Rubik", fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, left: 25.0, right: 25.0, bottom: 10.0),
                        child: TextField(
                          readOnly: true,
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            hintText: "\$50 cashback",
                            hintStyle: TextStyle(
                                fontFamily: "Rubik", fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        onPressed: () {

                          is_landing_page = true;
                          
                          Alert(
                        context: context,
                        type: AlertType.success,
                        title: 'Ótima escolha!',
                        desc: 'Estamos felizes que demonstrou interesse em uma de nossas recomendações Caio!\nSempre recomendamos as melhores opções baseadas em seu perfil!\nVocê será redirecionado à página da seguradora correspondente ao(s) produto(s) selecionados.',
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
                                        MaterialPageRoute(builder: (context) => WelcomePage()));
                              setState(() {
                                    FocusScope.of(context).requestFocus(new FocusNode());
                              });
                            },
                          ),
                        ],
                      ).show();      
                          
                        },
                        child: Text(
                          "Ver detalhes do pacote" ,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),                    
                    ],
                  ),
          ),
          ),
          
          
          ],
    ),
    Text("Ou"),
                      MaterialButton(
                        color: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        onPressed: () {
                          
                        is_landing_page = true;

                          Alert(
                        context: context,
                        type: AlertType.success,
                        title: 'Obrigado!',
                        desc: 'Parábens pela escolha Caio!\nPara finalizar o pedido você será redirecionado à página da seguradora correspondente ao(s) produto(s) selecionados.',
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
                                        MaterialPageRoute(builder: (context) => WelcomePage()));
                              setState(() {
                                    FocusScope.of(context).requestFocus(new FocusNode());
                              });
                            },
                          ),
                        ],
                      ).show();      
                          
                        },
                        child: Text(
                          "Finalizar pedido" ,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
    ],
    );
    }
    }
