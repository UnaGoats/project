import 'package:flutter/material.dart';
import '../componente/componente.dart';

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
                    MaterialPageRoute(builder: (context) => NovaYork()),
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
                    MaterialPageRoute(builder: (context) => Soleira()),
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
                    MaterialPageRoute(builder: (context) => Areia()),
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
                    MaterialPageRoute(builder: (context) => Uadi()),
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
                    MaterialPageRoute(builder: (context) => Praia()),
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
                    MaterialPageRoute(builder: (context) => Loch()),
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
                    MaterialPageRoute(builder: (context) => SmithRock()),
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
                    MaterialPageRoute(builder: (context) => Rochas()),
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
                    MaterialPageRoute(builder: (context) => Matteuccia()),
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
