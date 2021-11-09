import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: PrimeiraRota(),
      ),
    );

class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Album'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Text(
                  'Nova York, EUA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                margin: EdgeInsets.all(5),
              ),
              TextButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NovaYork1()),
                  );
                },
              ),
              Container(
                child: Text(
                  'Soleira',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                margin: EdgeInsets.all(5),
              ),
              TextButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Soleira2()),
                  );
                },
              ),
              Container(
                child: Text(
                  'Areia',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                margin: EdgeInsets.all(5),
              ),
              TextButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213783/pexels-photo-213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Areia3()),
                  );
                },
              ),
              Container(
                child: Text(
                  'Uádi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                margin: EdgeInsets.all(5),
              ),
              TextButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213784/pexels-photo-213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Uadi4()),
                  );
                },
              ),
              Container(
                child: Text(
                  'Praia',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                margin: EdgeInsets.all(5),
              ),
              TextButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213785/pexels-photo-213785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Praia5()),
                  );
                },
              ),
              Container(
                child: Text(
                  'Loch',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                margin: EdgeInsets.all(5),
              ),
              TextButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213786/pexels-photo-213786.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loch6()),
                  );
                },
              ),
              Container(
                child: Text(
                  'Parque Estadual de Smith Rock',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                margin: EdgeInsets.all(5),
              ),
              TextButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213787/pexels-photo-213787.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SmithRock7()),
                  );
                },
              ),
              Container(
                child: Text(
                  'Rochas',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                margin: EdgeInsets.all(5),
              ),
              TextButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213788/pexels-photo-213788.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rochas8()),
                  );
                },
              ),
              Container(
                child: Text(
                  'Matteuccia struthiopteris',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                margin: EdgeInsets.all(5),
              ),
              TextButton(
                child: Image.network(
                  'https://images.pexels.com/photos/213789/pexels-photo-213789.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Matteuccia9()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Nova York
class NovaYork1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova York"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Nova York, EUA',
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
                'A cidade de Nova York compreende 5 distritos situados no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Manhattan, um distrito com alta densidade demográfica que está entre os principais centros comerciais, financeiros e culturais do mundo.',
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
}

//Soleira
class Soleira2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Soleira"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Soleira',
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
                'Soleira, em geologia, é uma massa de rocha ígnea de forma tabular, muitas vezes horizontal e que intruíu lateralmente por entre camadas mais antigas de rocha sedimentar, lava ou tufos vulcânicos ou até mesmo segundo a direcção de foliação em rochas metamórficas.',
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
}

//Areia
class Areia3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Areia"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Areia',
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
                'Areia é um conjunto de partículas de rochas degradadas, um material de origem mineral finamente dividido em grânulos ou granito, composta basicamente de dióxido de silício, com 0,063 a 2 mm.\n\nForma-se à superfície da Terra pela fragmentação das rochas por erosão, por ação do vento ou da água. Por meio de processos de sedimentação pode ser transformada em arenito.',
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
}

//Uádi
class Uadi4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uádi"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Uádi',
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
                'Um uádi, uade, uédi ou uede é um leito seco de rio no qual as águas correm apenas na estação das chuvas. O termo é usado nas regiões desérticas da Norte da África e da Ásia e é muito comum em topônimos.',
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
}

//Praia
class Praia5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praia"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Praia',
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
                'Uma praia (do latim tardio plagia) é uma formação geológica composta por partículas soltas de mineral ou rocha na forma de areia, cascalho, seixo ou calhaus ao longo da margem de um corpo de água (rio ou oceano), seja uma costa ou praia fluvial.',
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
}

//Loch
class Loch6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loch"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Loch',
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
                'Loch é a palavra gaélica escocesa, escocesa e irlandesa para um lago ou enseada marítima. É cognato com o manx lough, cornish logh, e uma das palavras galesas para lago, llwch.',
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
}

//Smith Rock
class SmithRock7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parque Estadual de Smith Rock"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Parque Estadual de Smith Rock',
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
                'O Smith Rock State Park é um parque estadual localizado no alto deserto do Oregon, próximo às comunidades de Redmond e Terrebonne. A área de uso diário do parque está aberta diariamente do amanhecer ao anoitecer. O parque também possui uma área de camping que acomoda apenas barracas.',
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
}

//Rochas
class Rochas8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rochas"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Rochas',
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
                'Rocha é um agregado consolidado de um ou mais minerais formado por processos naturais. Além de minerais, as rochas também podem conter matéria orgânica, fósseis, água, vidro vulcânico e outros componentes sólidos naturais.',
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
}

//Rochas
class Matteuccia9 extends StatelessWidget {
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
}
