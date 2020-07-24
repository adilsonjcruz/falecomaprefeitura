import 'package:falecomaprefeitura/listagem.dart';
import 'package:falecomaprefeitura/login.dart';
import 'package:falecomaprefeitura/mensagens.dart';
import 'package:falecomaprefeitura/menu.dart';
import 'package:falecomaprefeitura/nav.dart';
import 'package:falecomaprefeitura/ocorrencias.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Cadastrar Ocorrência:'),
    );
  }
}

class TiposOcorrencias {
  int id;
  String descricao;

  TiposOcorrencias(this.id, this.descricao);

  static List<TiposOcorrencias> getTiposOcorrencias() {
    return <TiposOcorrencias>[
      TiposOcorrencias(1, 'Iluminação'),
      TiposOcorrencias(2, 'Limpeza'),
      TiposOcorrencias(3, 'Galerias Pluviais'),
      TiposOcorrencias(4, 'Praças'),
      TiposOcorrencias(5, 'Banheiros Públicos'),
      TiposOcorrencias(6, 'Áreas Livres'),
      TiposOcorrencias(7, 'Estruturas')
    ];
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<TiposOcorrencias> _tiposocorrencias =
      TiposOcorrencias.getTiposOcorrencias();
  List<DropdownMenuItem<TiposOcorrencias>> _dropdownMenuItens;

  TiposOcorrencias _selectedTipoOcorrencia;

  @override
  void initState() {
    _dropdownMenuItens = buildDropDownMenuItens(_tiposocorrencias);
    _selectedTipoOcorrencia = _dropdownMenuItens[0].value;
    super.initState();
  }

  List<DropdownMenuItem<TiposOcorrencias>> buildDropDownMenuItens(
      List tiposocorrencias) {
    List<DropdownMenuItem<TiposOcorrencias>> items = List();

    for (TiposOcorrencias ocorrencia in tiposocorrencias) {
      items.add(
        DropdownMenuItem(
          value: ocorrencia,
          child: Text(ocorrencia.descricao),
        ),
      );
    }

    return items;
  }

  onChangeDropDownItem(TiposOcorrencias selectedOcorrencia) {
    setState(() {
      _selectedTipoOcorrencia = selectedOcorrencia;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children:  <Widget>[ Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Tipo de Ocorrência:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  DropdownButton(
                    value: _selectedTipoOcorrencia,
                    items: _dropdownMenuItens,
                    onChanged: onChangeDropDownItem,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text("Descrição:",
                   style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(
                height: 5.0,
              ),
              TextField(decoration: InputDecoration(border: const OutlineInputBorder()),
                  maxLines: 6),
              SizedBox(
                height: 5.0,
              ),
              Text("Local:",
                style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(
                height: 5.0,
              ),
              TextField(decoration: InputDecoration(border: const OutlineInputBorder())),
              SizedBox(
                height: 5.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: RaisedButton(
                        color: Colors.blue,
                        child: Row(
                          children: <Widget>[
                            Text("Foto da Galeria", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
                            Icon(Icons.image),
                          ],
                        ),
                        onPressed: (){
                          push(context, Menu());
                        }),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    child: RaisedButton(
                        color: Colors.blue,
                        child: Row(
                          children: <Widget>[
                            Text("Foto da Camera", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
                            Icon(Icons.add_a_photo),
                          ],
                        ),
                        onPressed: (){
                          push(context, Mensagens());
                        }),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text("Imagens Anexadas:",
                   style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10.0,
              ),
              Text("IMG001.JPG",style: TextStyle(fontSize: 18),),
              Text("IMG002.JPG",style: TextStyle(fontSize: 18),),
              Text("IMG003.JPG",style: TextStyle(fontSize: 18),),
              Text("IMG004.JPG",style: TextStyle(fontSize: 18),),
              SizedBox(
                height: 30.0,
              ),
              Container(
                child: RaisedButton(
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Visualizar Imagens", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
                      ],
                    ),
                    onPressed: (){
                      push(context,Listagem());
                    }),
              ),
            ],
          ),
          ]
      )),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
                heroTag: "btn1",
                child: Icon(Icons.cancel),
                onPressed: () {
                  push(context, Ocorrencias());
                }),
            SizedBox(
              width: 8,
            ),
            FloatingActionButton(
                heroTag: "btn2",
                child: Icon(Icons.save),
                onPressed: () {
                  push(context, Login());
                })
          ],
        ),
    );
  }

}
