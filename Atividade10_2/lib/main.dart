import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}


class HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String resp = "";


  imc() {
    String mensagem;
    double peso = double.parse(this.pesoController.text);
    double altura = double.parse(this.alturaController.text);
    double imc = peso / (altura * altura);
    mensagem = imc.toStringAsFixed(2) + ': ';

    if (imc < 16) {
      return mensagem + "Magreza Grave";
    } else if (imc < 17) {
      return mensagem + "Magreza Moderada";
    } else if (imc < 18.5) {
      return mensagem + "Magreza Leve";
    } else if (imc < 25) {
      return mensagem + "Saudavel";
    } else if (imc < 30) {
      return mensagem + "Sobrepeso";
    } else if (imc < 35) {
      return mensagem + "Obesidade Grau I";
    } else if (imc < 40) {
      return mensagem + "Obesidade Grau II(severa)";
    } else {
      return mensagem + "Obesidade Grau III(mórbida)";
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: pesoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => pesoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o seu peso, ex: 80',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: alturaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => alturaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe a sua altura, ex: 1.70',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              String msg = imc();
              print(msg);
              setState(() => this.resp = msg);
            },
            child: Text(
              'IMC',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              this.resp,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
                child: Image(
                  image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ18r50C_9QMLSBMa4rj5HlBsAUaxZwALKj8U-UrspNNzDmixr8UvzlM-_O98f_7tIp70&usqp=CAU',
                ),
              ),
            ),
          ),

        ],
        
      ),
      
    );
  }
}
