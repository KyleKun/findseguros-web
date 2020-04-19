import 'package:flutter/material.dart';
import 'package:hackagr1d_web/src/home.dart';
import 'package:hackagr1d_web/src/navBar.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'information_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _AddInfoState();
}

class _AddInfoState extends State<AddInfo> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  Map<String, dynamic> dados;

  var textEditingController = TextEditingController();
  var maskTextInputFormatter = MaskTextInputFormatter(mask: "###.###.###-##", filter: { "#": RegExp(r'[0-9]') });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      body: new SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Navbar(),
              SizedBox(height: 20),
              Container(
                width: 800,
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
              Container(
                width: 600,
                child:
              Column(children: <Widget>[
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
                height: 50,
                width: 300,
                child: new RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: new Text(
                    'Enviar',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                   onPressed: () async {
                  final response = await http.get(
                  'HTTPS://gateway.gr1d.io/sandbox/procob/v1/consultas/v2/L0001/${textEditingController.text}',
                  headers: {
                    'Content-type': 'application/json',
                    'X-Api-Key': 'b3e7c74c-5d76-46ed-9e98-da89ae257c7d',
                  },
                );
                setState(() {
                  dados = jsonDecode(response.body);
                });
                print(dados);
                if (dados != null && !dados["message"].startsWith("Quota") && dados["code"] != 999){
                Alert(context: context,
                image: Image.asset("procob.png"),
                        title: 'Confira seus dados',
                        desc: 'Utilização da API Procob para validação de dados.\n\nNome: ${dados["content"]["nome"]["conteudo"]["nome"]}\nSituação na receita: ${dados["content"]["nome"]["conteudo"]["situacao_receita"]}',
                        buttons: [
                          DialogButton(
                            color: Colors.green,
                            width: 200.0,
                            child: Text(
                              'Continuar',
                              style: TextStyle(fontSize: 18.0, color: Colors.white),
                            ),
                            onPressed: () {
                                Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => InformationPage()));
                              setState(() {
                                    FocusScope.of(context).requestFocus(new FocusNode());
                              });
                            },
                          ),
                        ],).show();
                }
                else{
                  Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => InformationPage()));
                }
              },
  
                  color: Colors.blue,
                ),
                margin: new EdgeInsets.only(
                  top: 40.0
                ),
              ),
              SizedBox(height: 50),
              ],),
              ),
            ],
          ),
        ),
    );
  }
}