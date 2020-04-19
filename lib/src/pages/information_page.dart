import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackagr1d_web/src/pages/final_route.dart';
import 'package:hackagr1d_web/src/navBar.dart';


class InformationPage extends StatefulWidget {
  InformationPage({Key key}) : super(key: key);

  @override
  _InformationPageState createState() => new _InformationPageState();
}

class _InformationPageState extends State<InformationPage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  PageController _pageController;

  Color left = Colors.black;
  Color right = Colors.white;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowGlow();
        },
        child: SingleChildScrollView(
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
                  padding: EdgeInsets.only(top: 35.0),
                ),
                Center(
                  child: Text('COTAÇÕES',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  ),
                   SizedBox(height: 30),
                Expanded(
                  flex: 2,
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (i) {
                      if (i == 0) {
                        setState(() {
                          right = Colors.white;
                          left = Colors.black;
                        });
                      } else if (i == 1) {
                        setState(() {
                          right = Colors.black;
                          left = Colors.white;
                        });
                      }
                    },
                    children: <Widget>[

                      new Container(
                        child: _buildSignUp(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _pageController = PageController();
  }

  void showInSnackBar(String value) {
    FocusScope.of(context).requestFocus(new FocusNode());
    _scaffoldKey.currentState?.removeCurrentSnackBar();
    _scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontSize: 16.0, fontFamily: "Rubik"),
      ),
      backgroundColor: Colors.blue,
      duration: Duration(seconds: 3),
    ));
  }


  Widget _buildSignUp(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              Card(
                elevation: 2.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: 540.0,
                  height: 305.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Text("Plano ABC",
                      style: TextStyle(
                         fontFamily: "Rubik",
                         fontSize: 22.0,
                         fontWeight: FontWeight.bold,
                      ),),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, left: 25.0, right: 25.0),
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
                            hintText: "Descontos especiais",
                            hintStyle: TextStyle(
                                fontFamily: "Rubik", fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.only(
                            top: 2.0, left: 25.0, right: 25.0),
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
                            hintText: "Seu carro ganha asas",
                            hintStyle: TextStyle(
                                fontFamily: "Rubik", fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 2.0, left: 25.0, right: 25.0),
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
                            hintText: "Cobertura contra roubo e furto",
                            hintStyle: TextStyle(
                                fontFamily: "Rubik", fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('R\$ xxx, xx mensais',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),),
                      SizedBox(height: 5),
                      MaterialButton(
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        onPressed: () {
                          
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FinalRoute()));
                          
                        },
                        child: Text(
                          "Contratar" ,
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
                  
                  
                   SizedBox(height: 30),

                  Stack(
            alignment: Alignment.topCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              Card(
                elevation: 2.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: 540.0,
                  height: 305.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Text("Plano XYZ",
                      style: TextStyle(
                         fontFamily: "Rubik",
                         fontSize: 22.0,
                         fontWeight: FontWeight.bold,
                      ),),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, left: 25.0, right: 25.0),
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
                            hintText: "Cobertura contra roubo e furto",
                            hintStyle: TextStyle(
                                fontFamily: "Rubik", fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.only(
                            top: 2.0, left: 25.0, right: 25.0),
                        child: TextField(
                          readOnly: true,
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                            hintText: "Seu carro vira um Ferrari",
                            hintStyle: TextStyle(
                                fontFamily: "Rubik", fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 2.0, left: 25.0, right: 25.0),
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
                            hintText: "Primeira anuidade grátis",
                            hintStyle: TextStyle(
                                fontFamily: "Rubik", fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('R\$ xxx, xx mensais',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),),
                      SizedBox(height: 5),
                      MaterialButton(
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        onPressed: () {
                          
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FinalRoute()));
                          
                        },
                        child: Text(
                          "Contratar" ,
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]
      ),
      ),
    );
  }
    } 