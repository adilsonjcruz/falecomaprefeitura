import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: _Formulario(),
    );
  }

  _Formulario() {

    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          Text(" Fale com a Prefeitura",
               style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
          SizedBox(
            height: 25.0,
          ),
          Image.network("https://www.portorealdocolegio.al.gov.br/protocolo/img/login.png",
          height: 200,),
          SizedBox(
            height: 25.0,
          ),
          Text("Usuário:"),
          TextField(),
          SizedBox(
            height: 20.0,
          ),
          Text("Senha:"),
          TextField(),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 50,
            child: RaisedButton(
                color: Colors.blue,
                child: Row(
                  children: <Widget>[
                    Text("Entre com o Facebook                                     ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
                    Image.network("https://brasscom.org.br/wp-content/uploads/2018/02/Icone-Facebook-1.jpg"),
                  ],
                ),
                onPressed: (){}),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 50,
            child: RaisedButton(
                color: Colors.blue,
                child: Row(
                  children: <Widget>[
                    Text("Entre com o Google                                            ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
                    Image.network("https://imagepng.org/wp-content/uploads/2019/08/google-icon.png"),
                  ],
                ),
                onPressed: (){}),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 50,
            child: RaisedButton(
                color: Colors.blue,
                child: Row(
                  children: <Widget>[
                    Text("Cadastre-se                                                            ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
                    Icon(Icons.add_box),
                  ],
                ),
                onPressed: (){}),
          ),
        ],
      ),
    );

  }

}
