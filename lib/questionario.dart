import "package:flutter/material.dart";
import "main.dart";
import "butao.dart";

int nopcResp = 0;

class Questionario extends StatelessWidget {
  const Questionario(this._listIn, this.temPerg, this.nvezes, this.funcBtnIn,
      {super.key});
  final void Function() funcBtnIn;
  final List<Map<String, Object>> _listIn;
  final bool temPerg;
  final int nvezes;

  @override
  Widget build(BuildContext context) {
    nopcResp = 0; //reset
    final List<String> respostas =
        temPerg ? _listIn[nvezes]['resposta'] as List<String> : [""];

    final List<Widget> widgets =
        respostas.map((t) => Butao(t, ++nopcResp, nvezes, funcBtnIn)).toList();

    return Column(
      children: <Widget>[
        Zoom(_listIn[nvezes]["texto"].toString()),
        ...widgets,
      ],
    );
  }
}
