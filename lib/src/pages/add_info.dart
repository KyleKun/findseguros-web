import 'package:flutter/material.dart';
import 'package:hackagr1d_web/src/pages/home.dart';
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
  Map<String, dynamic> dadosCar;

  var textEditingController = TextEditingController();
  var carController = TextEditingController();
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
                  hintText: 'ex.: Chevrolet',
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
                  hintText: 'ex.: Astra 2.0 140cv',
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
                  hintText: 'ex.: 2007',
                  labelText: 'Ano'
                )
              ),
              SizedBox(height: 40,),
              Center(child: Text("Placa:")),
              SizedBox(height: 20,),
              new TextFormField(
                controller: carController, 
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                  ),
                  hintText: 'ex.: DAP4523',
                  labelText: 'Placa'
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
                     var dadosEncontrados;
                     if (carController.text != null && carController.text != ""){
                       print('entrou');
                      final responseCar = await http.post(
                      'HTTPS://gateway.gr1d.io/sandbox/infocar/codificacao/v1/INFOCAR_CODIFICACAO',
                      headers: {
                        'X-Api-Key': 'de86d264-f778-420c-9f69-6466694345a6',
                      },
                      body: jsonEncode({
                        "parameters": {"dado": "${carController.text}", "tipo": "PLACA"}
                      }));
                     
               
                  dadosCar = jsonDecode(responseCar.body);
                  dadosEncontrados = dadosCar["soap:Envelope"]["soap:Body"]["CodificacaoFIPEResponse"]["CodificacaoFIPEResult"]["INFO-XML"]["RESPOSTA"]["INFOCAR_CODIFICACAO_XML"]["DADOS_DO_VEICULO"];
               
                      }
                      else{
                        print('NN entrou');
                      }


                  final response = await http.get(
                  'HTTPS://gateway.gr1d.io/sandbox/procob/v1/consultas/v2/L0001/${textEditingController.text}',
                  headers: {
                    'Content-type': 'application/json',
                    'X-Api-Key': 'b3e7c74c-5d76-46ed-9e98-da89ae257c7d',
                  },
                );
               
                  dados = jsonDecode(response.body);
                 
                
                print('CPF');
                print(dados);
                
                
                print('CAR');
                print(dadosEncontrados);
                if (textEditingController.text != null && textEditingController.text != "" && !dados["message"].startsWith("Quota") && dados["code"] != 999 && carController.text != null && carController.text != ""){
                  print('Vai mostrar');
                  
                  var nome = dados["content"]["nome"]["conteudo"]["nome"];
                  var sit_receita = dados["content"]["nome"]["conteudo"]["situacao_receita"];
                  var modelo = dadosEncontrados["MARCA_MODELO"];
                  var ano = dadosEncontrados["ANO"];
                  var cor = dadosEncontrados["COR"];
                  var chassi = dadosEncontrados["CHASSI"];

                  print(nome);
                  print(sit_receita);
                  print(modelo);
                Alert(context: context,
                image: Image.asset("apis.png"),
                        title: 'Confira seus dados',
                        desc: 'Utilização das APIs Procob e Infocar Codificação para validação de dados.\n\nNome: $nome\nSituação na receita: $sit_receita\n\nModelo: $modelo\nCor: $cor\nAno: $ano\nChassi: $chassi',
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