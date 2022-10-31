//import 'dart:html';
//import 'dart:math';
import "package:flutter/Material.dart";
import 'package:zopo/main.dart';

class Butao extends StatelessWidget {
  final String texto;
  final void Function() fn1;
  final int nopcResp;
  final int numPerg;
  const Butao(this.texto, this.nopcResp, this.numPerg, this.fn1, {super.key});

//OutlinedButton(onPressed: funcBtn1, child: const Text("+1")
  @override
  Widget build(BuildContext context) {
    /*
    Color color = listResp[0] == 0
        ? Colors.orange.shade600
        : listResp[0] == 1
            ? Colors.blue.shade600
            : listResp[0] == 2
                ? Colors.green.shade600
                : listResp[0] == 3
                    ? Colors.yellow.shade600
                    : Colors.red.shade600;
  */
    /*
                      ((listResp[0] == 1)
                          ? //azul verde amarelo vermelho
                          Colors.pink[Random().nextInt(301)]
                          : Colors.green[Random().nextInt(301)])))
                      */

    return Container(
      //width: double.infinity,
      margin: const EdgeInsets.all(2),
      child: Column(
        children: [
          ElevatedButton(
              style: ButtonStyle(
                  fixedSize:
                      MaterialStateProperty.all(const Size.fromWidth(420)),
                  backgroundColor: MaterialStateProperty.all(listResp[0] == 0
                      ? Colors.orange.shade700
                      : listResp[0] == 1
                          ? Colors.blue.shade700
                          : listResp[0] == 2
                              ? Colors.green.shade700
                              : listResp[0] == 3
                                  ? Colors.yellow.shade700
                                  : Colors.red.shade700))
              /*
                    listResp[0] == 0
                      ? Colors.orange
                      : //Colors.red))
                      listResp[0] == 1
                          ? //azul verde amarelo vermelho
                          Colors.pink[Random().nextInt(301)]
                          : Colors.green[Random().nextInt(301)]))
                      */
              /*
                      : (listResp[0] == 1)
                          ? //azul verde amarelo vermelho
                          Colors.blue[Random().nextInt(301)]
                          : (listResp[0] == 2)
                              ? Colors.green[Random().nextInt(301)]
                              : (listResp[0] == 3)
                                  ? Colors.yellow[Random().nextInt(301)]
                                  : Colors.red[Random().nextInt(301)]))
                                  */
              ,
              onPressed: () {
                listResp[numPerg] = nopcResp;
                fn1();
              }, //  fn1,
              child: Text(
                texto,
                // style: const TextStyle(
                // color: Color.fromARGB(255, 156, 35, 33),
                //  backgroundColor: Color.fromARGB(255, 14, 153, 130)),
              )),
        ],
      ),
    );
  }
}
