import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => PrimeiraRota(),
        '/segunda': (context) => Tela("Segunda Rota"),
        '/terceira': (context) => Tela("Terceira Rota"),
      },
    );
  }
}

class Tela extends StatelessWidget {
  final String titulo;
  Tela(this.titulo);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: Center(
        child: new ListView(
          children: [
            new Container(
              alignment: Alignment.center,
              padding: new EdgeInsets.all(50),
              child: new Text(
                titulo,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            new Container(
                alignment: Alignment.center,
                child: new TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: new Text(
                    "Voltar para a Primeira Rota",
                    style: new TextStyle(color: Colors.white),
                  ),
                  style: new ButtonStyle(backgroundColor: new MyColor(),
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(50)) ),
                )),
          ],
        ),
      ),
    );
  }
}

class MyColor extends MaterialStateColor {
  const MyColor() : super(_defaultColor);

  static const int _defaultColor = 0xFF2596be;
  static const int _pressedColor = 0xffabdbe3;

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return const Color(_pressedColor);
    }
    return const Color(_defaultColor);
  }
}

class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              accountName: Text("Ana"),
              accountEmail: Text("ana@ana.com.br"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.video_collection),
              title: Text("Rota 02"),
              subtitle: Text("Siga para a Rota 02."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, "/segunda");
              },
            ),
            ListTile(
              leading: Icon(Icons.analytics),
              title: Text("Rota 03"),
              subtitle: Text("Siga para a Rota 03"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, "/terceira");
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Rota 01"),
              subtitle: Text("Voltar para a Rota 01"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                if (Navigator.canPop(context)) Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      drawerEnableOpenDragGesture: false,
      body: Center(
        child: const Text('Corpo'),
      ),
    );
  }
}
