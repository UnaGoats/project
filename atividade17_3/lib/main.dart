import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Carrossel(),
      routes: {
        Descricao.caminho: (_) => Descricao(),
      },
    ));

class Carrossel extends StatefulWidget {
  @override
  CarrosselState createState() => CarrosselState();
}

class CarrosselState extends State<Carrossel> {
  int indice = 0;
  List<Map> carroselItems = [
    {
      'arquivo': 'img/cachorro.jpg',
      'titulo': 'Cachorrinho',
      'descricao': 'Cachorrinho, muito fofo'
    },
    {
      'arquivo': 'img/gato.jpg',
      'titulo': 'Gatito',
      'descricao': 'Gatito, fofinho'
    },
    {
      'arquivo': 'img/hamster.jpg',
      'titulo': 'Hamster',
      'descricao': 'Ou vulgo ratito'
    }
  ];
  void anterior() =>
      setState(() => indice = indice > 0 ? indice - 1 : carroselItems.length - 1);
  void posterior() =>
      setState(() => indice = indice < carroselItems.length - 1 ? indice + 1 : 0);
  InkWell imagem() => InkWell(
        child: Stack(
          children: [
            Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                  image: AssetImage(carroselItems[indice]['arquivo']),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 5,
                  )
                ],
              ),
            ),
            Positioned(
              top: 375,
              left: 25,
              right: 25,
              child: PainelPontos(
                numeroPontos: carroselItems.length,
                indice: indice,
              ),
            ),
          ],
        ),
        onTap: () {
          Navigator.pushNamed(
            context,
            Descricao.caminho,
            arguments: ArgumentosDaRota(
                carroselItems[indice]['titulo'], carroselItems[indice]['descricao']),
          );
        },
      );
  Row cursor() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              child: Icon(Icons.arrow_left),
              onPressed: anterior,
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(13),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              child: Icon(Icons.arrow_right),
              onPressed: posterior,
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(13),
              ),
            ),
          ),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrossel'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imagem(),
          cursor(),
        ],
      ),
    );
  }
}

class PainelPontos extends StatelessWidget {
  final int? numeroPontos;
  final int? indice;
  PainelPontos({this.numeroPontos, this.indice});
  Widget fotoInativa() {
    return Padding(
      padding: EdgeInsets.only(left: 3, right: 3),
      child: Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.3,
              blurRadius: 3,
            )
          ],
        ),
      ),
    );
  }

  Widget fotoAtiva() {
    return Padding(
      padding: EdgeInsets.only(left: 3, right: 3),
      child: Container(
        height: 11,
        width: 11,
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.orangeAccent,
              spreadRadius: 0.3,
              blurRadius: 3,
            )
          ],
        ),
      ),
    );
  }

  List<Widget> gerarPainelPontos() {
    List<Widget> pontos = [];
    for (int i = 0; i < this.numeroPontos!; i++)
      pontos.add(i == indice ? fotoAtiva() : fotoInativa());
    return pontos;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: this.gerarPainelPontos(),
      ),
    );
  }
}

class Descricao extends StatelessWidget {
  static const caminho = '/descricao';
  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.titulo),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 150, 8, 10),
              child: Text(
                argumentos.titulo,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 150, 8, 10),
              child: Text(
                argumentos.descricao,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}

class ArgumentosDaRota {
  String titulo;
  String descricao;

  ArgumentosDaRota(this.titulo, this.descricao);
}
