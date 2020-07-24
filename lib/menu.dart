import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opções"),
      ),
      body: _Body(),
    );
  }

  _Body() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: Column(
              children: <Widget>[
                Image.network("https://cdn.imgbin.com/5/19/14/imgbin-building-city-icons-1AVesZcY1sUxG6YM9YHXGgSyN.jpg",
                               width: 350,),
                ListTile(
                  title: Text("Seja Bem Vindo João"),
                  subtitle: Text("Bastos, 01 de Junho de 2020."),
                )
              ],
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_box,
                        size: 90,
                      ),
                      Text("Adicionar Ocorrência", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.list,
                        size: 90,
                      ),
                      Text("Minhas Ocorrências", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.message,
                      size: 90,
                    ),
                    Text("Minhas Mensagens", style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              )),
              SizedBox(
                width: 2,
              ),
              Expanded(
                  child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.exit_to_app,
                      size: 90,
                    ),
                    Text("Logout", style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              )),
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            height: 50,
          ),
        ],
      ),
    );
  }
}
