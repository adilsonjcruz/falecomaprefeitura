import 'package:flutter/material.dart';

class Ocorrencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listagem de Ocorrencias"),
      ),
      body: _listaOcorrencias(),
    );
  }

  _listaOcorrencias() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("001980 - Recolher galhos de poda de arvore..."),
          subtitle: Text("Tipo de Ocorrência: Limpeza"),
        ),
        ListTile(
          title: Text("003177 - Limpeza de Galeria Pluvial..."),
          subtitle: Text("Tipo de Ocorrência: Limpeza"),
        ),
        ListTile(
          title: Text("003090 - Remoção de Lixo na Via Pública..."),
          subtitle: Text("Tipo de Ocorrência: Limpeza"),
        ),
        ListTile(
          title: Text("005899 - Troca de Lâmpada em Poste..."),
          subtitle: Text("Tipo de Ocorrência: Iluminação"),
        ),
        ListTile(
          title: Text("001850 - Solicitação de Caçamba para Entulhos..."),
          subtitle: Text("Tipo de Ocorrência: Limpeza"),
        ),
        ListTile(
          title: Text("001851 - Consertar Banco na Praça 9 de Julho..."),
          subtitle: Text("Tipo de Ocorrência: Estrutura"),
        ),
        ListTile(
          title: Text("003808 - Consertar Sinalização de Trânsito..."),
          subtitle: Text("Tipo de Ocorrência: Trânsito"),
        ),
      ],
    );
  }
}
