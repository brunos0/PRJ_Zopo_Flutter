import 'package:flutter/Material.dart';
//import 'butao.dart';
import 'resultado.dart';
import 'questionario.dart';
//import 'dart:math';

List listResp = [0, 0, 0];

main() => runApp(const Zopo());

class ZopoState extends State<Zopo> {
  int nvezes = 0;

  final List<Map<String, Object>> _list1 = const [
    {
      "texto": 'Qual a sua cor favorita?',
      "resposta": ['Azul', 'Verde', 'Amarela', 'Vermelha']
    },
    {
      "texto": 'Qual o seu animal favorito?',
      "resposta": ['Cachorro', 'Gato', 'Passaro', 'Peixe']
    },
    {
      "texto": 'Qual o seu time de futebol favorito?',
      "resposta": ['Corinthians', 'Palmeiras', 'São Paulo', 'Santos']
    }
  ];

  void funcBtn1() {
    setState(() {
      nvezes++;
    });
    //print("a");
  }

  void restart() {
    setState(() {
      nvezes = 0;
      listResp = [0, 0, 0];
    });
  }

  bool get temPerg {
    return nvezes < _list1.length;
  }

  List get lista {
    return _list1;
  }

  @override
  Widget build(BuildContext context) {
    /*
    List<String> respostas =
        temPerg ? _list1[nvezes]['resposta'] as List<String> : [""];

    List<Widget> widgets = respostas.map((t) => Butao(t, funcBtn1)).toList();
    */
    /*
    List<Widget> resp = [];
    for (String textoResp in (list1[nvezes]['resposta'] as List)) {
      //print(textoResp.toString());
      resp.add(Butao(textoResp, funcBtn1));
    }
    */
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: listResp[0] == 0
                ? Colors.orange.shade300
                : listResp[0] == 1
                    ? Colors.blue.shade300
                    : listResp[0] == 2
                        ? Colors.green.shade300
                        : listResp[0] == 3
                            ? Colors.yellow.shade300
                            : Colors.red.shade300),
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Perguntas",
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              centerTitle: true,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                temPerg
                    ? Questionario(_list1, temPerg, nvezes, funcBtn1)
                    : Resultado(restart),
                Text("Desenvolvido por Bruno Horvat",
                    style: TextStyle(fontSize: 28, color: Colors.white
                        /*,
                        backgroundColor: listResp[0] == 0
                            ? Colors.orange.shade300
                            : listResp[0] == 1
                                ? Colors.blue.shade300
                                : listResp[0] == 2
                                    ? Colors.green.shade300
                                    : listResp[0] == 3
                                        ? Colors.yellow.shade300
                                        : Colors.red.shade300),
                  */
                        )),
              ],
            )));
  }
}

//this._listIn, this.temPerg, this.nvezes, this.funcBtnIn,
class Zopo extends StatefulWidget {
  const Zopo({super.key});

  @override
  ZopoState createState() {
    return ZopoState();
  }
}

class Zoom extends StatelessWidget {
  final String texto;
  const Zoom(this.texto, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      margin: const EdgeInsets.all(2),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 28, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
