import 'package:flutter/material.dart';
import 'package:hackagr1d_web/src/navBar.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'information_page.dart';

class AddInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _AddInfoState();
}

class _AddInfoState extends State<AddInfo> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  var textEditingController = TextEditingController();
  var maskTextInputFormatter = MaskTextInputFormatter(mask: "###.###.###-##", filter: { "#": RegExp(r'[0-9]') });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          key: this._formKey,
          child: new ListView(
            children: <Widget>[
              Navbar(),
              SizedBox(height: 20),
              Container(
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Text("Antes dos melhores preços...",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),),
                 ],),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("precisamos de algumas informações:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
              ],),
              SizedBox(height: 40,),
              Center(child:Text("Seu CPF:")),
              SizedBox(height: 20,),
              new TextFormField(
                controller: textEditingController, 
                inputFormatters: [maskTextInputFormatter], 
                autocorrect: false,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                  ),
                  hintText: 'xxx.xxx.xxx-xx',
                  labelText: 'CPF',
                )
              ),
              SizedBox(height: 40,),
              Center(child:Text("Sua CNH:")),
              SizedBox(height: 20,),
              new TextFormField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                  ),
                  hintText: 'xxxxxxxxxxx (11 dígitos)',
                  labelText: 'CNH'
                )
              ),
              SizedBox(height: 40,),
              Center(child:Text("Fabricante do veículo:")),
              SizedBox(height: 20,),
              new TextFormField(
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                  ),
                  hintText: 'Chevrolet',
                  labelText: 'Fabricante'
                )
              ),
              SizedBox(height: 40,),
              Center(child:Text("Modelo do veículo:")),
              SizedBox(height: 20,),
              new TextFormField(
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                  ),
                  hintText: 'Astra 2.0 140cv',
                  labelText: 'Modelo'
                )
              ),
              SizedBox(height: 40,),
              Center(child: Text("Ano:")),
              SizedBox(height: 20,),
              new TextFormField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                  ),
                  hintText: '2007',
                  labelText: 'Ano'
                )
              ),
              new Container(
                width: screenSize.width,
                child: new RaisedButton(
                  child: new Text(
                    'Enviar',
                    style: new TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => InformationPage())),
                  color: Colors.blue,
                ),
                margin: new EdgeInsets.only(
                  top: 20.0
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}