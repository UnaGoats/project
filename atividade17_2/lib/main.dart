import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        SegundaRota.caminhoDaRota: (context) => SegundaRota(),
        TerceiraRota.caminhoDaRota: (context) => TerceiraRota(),
      },
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  final TextEditingController valorEmRealController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversão de Moedas'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: valorEmRealController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => valorEmRealController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Insira o valor em Real(R\$)',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  SegundaRota.caminhoDaRota,
                  arguments: double.parse(valorEmRealController.text),
                );
              },
              icon: Icon(Icons.navigate_next),
              label: const Text('Próximo'),
            ),
          ),
        ],
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  static const caminhoDaRota = '/segundaRota';

  final TextEditingController cotacaoDolarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double valorEmReal = ModalRoute.of(context)!.settings.arguments as double;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cotação'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: cotacaoDolarController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => cotacaoDolarController.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Insira a cotação do dólar',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    TerceiraRota.caminhoDaRota,
                    arguments: ArgumentosDaRota(
                        valorEmReal, double.parse(cotacaoDolarController.text)),
                  );
                },
                icon: Icon(Icons.navigate_next),
                label: const Text('Próximo'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TerceiraRota extends StatelessWidget {
  static const caminhoDaRota = '/terceiraRota';

  converter(double valorReal, double cotacao) => valorReal / cotacao;

  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
      ),
      body: Center(
        child: Container(
          child: Text(
            'R\$ ${argumentos.valorEmReal.toStringAsFixed(2)} = US ${converter(argumentos.valorEmReal, argumentos.cotacao).toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class ArgumentosDaRota {
  double valorEmReal;
  double cotacao;
  ArgumentosDaRota(this.valorEmReal, this.cotacao);
}
