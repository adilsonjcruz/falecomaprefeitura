import 'package:flutter/material.dart';

class Mensagens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minhas Mensagens"),
      ),
      body: _body(),
    );
  }

  _body() {
     return ListView(
       children: <Widget>[
       ListTile(
         title: Text("Obrigado por registrar a ocorrência de nº 003090. Estamos avaliando a situação."),
         subtitle: Text("Em Avaliação"),
         leading: Icon(Icons.message,size: 50,),
       ),
         ListTile(
           title: Text("Sua ocorrência de nº 005899 já foi solucionada."),
           subtitle: Text("Concluída"),
           leading: Icon(Icons.message,size: 50,),
         ),
         ListTile(
           title: Text("Sua ocorrência de nº 001980 não procede mais. A situação já foi resolvida."),
           subtitle: Text("Cancelada"),
           leading: Icon(Icons.message,size: 50,),
         )
       ],
     );
  }

}
