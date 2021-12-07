import 'package:flutter/material.dart';

void main() {
  return runApp(Aplicativo());
}

class Produto {
  int id;
  String url, nome, descricao;
  double preco;
  Produto({
    required this.id,
    required this.url,
    required this.nome,
    required this.descricao,
    required this.preco,
  });
  static List<Produto> getProdutos() {
    return [
      Produto(
        id: 1,
        url: 'https://picsum.photos/250?image=9',
        nome: 'Notebook',
        descricao: 'Notebook Dell Inspiron I15 Intel 8GB 1TB 15,6" Preto',
        preco: 30109.98,
      ),
      Produto(
        id: 2,
        url:
            'https://images.pexels.com/photos/1070850/pexels-photo-1070850.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        nome: 'Bolo',
        descricao: 'Bolo em camadas com cobertura de frutas e nozes',
        preco: 15.19,
      ),
      Produto(
        id: 3,
        url:
            'https://images.pexels.com/photos/213798/pexels-photo-213798.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        nome: 'Torre e aerogerador',
        descricao: 'Torre e aerogerador - de energia eólica',
        preco: 50125.47,
      ),
    ];
  }
}

class ListaMenu {
  static List<DropdownMenuItem<Produto>> getListaProdutosMenu(List produtos) {
    List<DropdownMenuItem<Produto>> listaProdutosMenu = []; //Nova lista.
    for (Produto produto in produtos) {
      listaProdutosMenu.add(
        DropdownMenuItem(
          value: produto,
          child: Text(
            produto.nome,
          ),
        ),
      );
    }
    return listaProdutosMenu;
  }
}

class Aplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo de DropdownMenu'),
        ),
        body: Center(
          child: MenuSuspenso(),
        ),
      ),
    );
  }
}

class MenuSuspenso extends StatefulWidget {
  MenuSuspensoState createState() {
    return MenuSuspensoState();
  }
}

class MenuSuspensoState extends State<MenuSuspenso> {
  Produto? produtoSelecionado;
  List<DropdownMenuItem<Produto>>? listaProdutosMenu;
  /*O método initState() gera o estado inicial do widget
 quando um objeto da classe é instanciado.*/
  @override
  void initState() {
    listaProdutosMenu = ListaMenu.getListaProdutosMenu(
      Produto.getProdutos(),
    );
    produtoSelecionado = listaProdutosMenu![0].value;
    super.initState();
  }

  aoSelecionarProduto(Produto? produtoSelecionado) {
    setState(
      () {
        this.produtoSelecionado = produtoSelecionado;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Produto:',
          style: TextStyle(
              fontSize: 25,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold),
        ),
        DropdownButton(
          value: this.produtoSelecionado,
          items: this.listaProdutosMenu,
          onChanged: this.aoSelecionarProduto,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
        ),
        Text('Produto selecionado: ${this.produtoSelecionado!.nome}'),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image(
            image: NetworkImage(this.produtoSelecionado!.url),
            height: 250,
            width: 250,
          ),
        ),
        Text(this.produtoSelecionado!.descricao),
        Padding(padding: EdgeInsets.all(5)),
        Text(
          'R\$ ${this.produtoSelecionado!.preco}',
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
