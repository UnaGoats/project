import 'package:flutter/material.dart';
import 'rota/rota.dart';

void main() => runApp(
      MaterialApp(
        home: PrimeiraRota(),
      ),
    );

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Matteuccia struthiopteris"),
    ),
    body: Center(
      child: Column(
        children: [
          Container(
            child: Text(
              'Matteuccia struthiopteris',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 40,
              ),
            ),
            margin: EdgeInsets.all(80),
          ),
          Container(
            child: Text(
              'Matteuccia é um gênero de samambaias com uma espécie: Matteuccia struthiopteris. O epíteto da espécie struthiopteris deriva das palavras gregas antigas στρουθίων "avestruz" e πτερίς "samambaia".',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            margin: EdgeInsets.all(80),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Voltar'),
          ),
        ],
      ),
    ),
  );
}
