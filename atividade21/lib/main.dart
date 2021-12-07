import 'package:flutter/material.dart';

main() => runApp(
      MaterialApp(
        home: Inicio(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Inicio extends StatefulWidget {
  @override
  InicioState createState() => InicioState();
}

class InicioState extends State<Inicio> {
  int indice = 0;
  final List<Widget> rotas = [
    PrimeiraRota(),
    SegundaRota(),
  ];
  void aoPressionar(int indiceRotaSelecionada) {
    setState(
      () {
        this.indice = indiceRotaSelecionada;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: rotas[this.indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.indice,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Primeira Rota',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: 'Segunda Rota',
          ),
        ],
        onTap: (int indiceRotaEscolhida) {
          aoPressionar(indiceRotaEscolhida);
        },
      ),
    );
  }
}

class PrimeiraRota extends StatefulWidget {
  @override
  PrimeiraRotaState createState() => PrimeiraRotaState();
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  @override
  Widget build(BuildContext context) {
    TextStyle estilo = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.green,
    );
    return Center(
      child: Text(
        'Primeira Rota',
        style: estilo,
      ),
    );
  }
}

class SegundaRota extends StatefulWidget {
  @override
  SegundaRotaState createState() => SegundaRotaState();
}

class SegundaRotaState extends State<SegundaRota> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(40),
          child: Center(
            child: Text(
              'Galeria',
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Cartao(
          titulo: 'Imagem 01',
          descricao:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          preco: 3.10,
          url:
              'https://images.pexels.com/photos/9089028/pexels-photo-9089028.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        ),
        Cartao(
          titulo: 'Imagem 02',
          descricao:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          preco: 2.15,
          url:
              'https://images.pexels.com/photos/8971225/pexels-photo-8971225.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        ),
        Cartao(
          titulo: 'Imagem 03',
          descricao:
              'Lorem Ipsum is simply dummy text of the printing andtypesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently withdesktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          preco: 2.95,
          url:
              'https://images.pexels.com/photos/7524543/pexels-photo-7524543.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        ),
        Cartao(
          titulo: 'Imagem 04',
          descricao:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          preco: 1.97,
          url:
              'https://images.pexels.com/photos/9980612/pexels-photo-9980612.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        ),
      ],
    );
  }
}

class Cartao extends StatelessWidget {
  final String titulo;
  final String descricao;
  final double preco;
  final String url;

  Cartao({
    required this.titulo,
    required this.descricao,
    required this.preco,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      margin: EdgeInsets.fromLTRB(30, 5, 30, 15),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4),
              child: Image(
                image: NetworkImage(this.url),
                height: 200,
                width: 400,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                this.titulo,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                this.descricao,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                'R\$ ${this.preco.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  child: Text('DETALHES'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TerceiraRota(
                                titulo: titulo,
                                descricao: descricao,
                                preco: preco,
                                url: url)));
                  },
                ),
                TextButton(
                  child: Text('COMPRAR'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuartaRota()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TerceiraRota extends StatelessWidget {
  final String titulo;
  final String descricao;
  final double preco;
  final String url;
  TerceiraRota({
    required this.titulo,
    required this.descricao,
    required this.preco,
    required this.url,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      margin: EdgeInsets.fromLTRB(30, 5, 30, 15),
      child: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(4, 50, 4, 4),
                child: Image(
                  image: NetworkImage(this.url),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  this.titulo,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  this.descricao,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  'R\$ ${this.preco.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  TextButton(
                    child: Text('Voltar para a Segunda Rota'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class QuartaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle estilo = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.purple,
    );

    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Página de Compra',
            style: estilo,
          ),
        ),
        ButtonBar(
          children: <Widget>[
            TextButton(
              child: Text('Voltar para a Segunda Rota'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ],
    ));
  }
}
