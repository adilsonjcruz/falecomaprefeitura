import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listagem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Imagens da Ocorrência:"),
      ),
      body: _ListView(),
    );
  }

  _ListView() {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Text("IMG001.JPG", style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(
            height: 5.0,
          ),
          Image.network("https://g37.com.br/imagens/70111/apos-poda-de-arvore-galhos-sao-deixados-no-canteiro-central_2382017848430.jpg",
                        width: 100, height: 250,),
          SizedBox(
            height: 5.0,
          ),
          Text("IMG002.JPG", style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(
            height: 5.0,
          ),
          Image.network("https://g37.com.br/imagens/70111/apos-poda-de-arvore-galhos-sao-deixados-no-canteiro-central_2382017848441.jpg",
            width: 100, height: 250,),
          SizedBox(
            height: 5.0,
          ),
          Text("IMG003.JPG", style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(
            height: 5.0,
          ),
          Image.network("http://www.gazetainterior.com.br/wp-content/uploads/2015/11/Galhos-Poda-Prefeitura-de-Potirendaba.jpg",
            width: 100, height: 300,),
        ],
      ),
    );
  }
}
