import "package:flutter/material.dart";
import 'package:zopo/main.dart';

class Butao extends StatelessWidget {
  final String texto;
  final void Function() fn1;
  final int nopcResp;
  final int numPerg;
  const Butao(this.texto, this.nopcResp, this.numPerg, this.fn1, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                                  : Colors.red.shade700)),
              onPressed: () {
                listResp[numPerg] = nopcResp;
                fn1();
              },
              child: Text(
                texto,
              )),
        ],
      ),
    );
  }
}
