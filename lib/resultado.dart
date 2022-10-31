import "package:flutter/Material.dart";
import "main.dart";

class Resultado extends StatelessWidget {
  final Function() reiniciar;
  const Resultado(this.reiniciar, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        const Text("\nParabéns!\n",
            style: TextStyle(
                fontSize: 38,
                color: Colors.white,
                fontWeight: FontWeight.w900)),
        Text(
          "Você gosta da cor ${(ZopoState().lista[0]["resposta"] as List)[listResp[0] - 1]}, seu animal favorito "
          "é o ${(ZopoState().lista[1]["resposta"] as List)[listResp[1] - 1]} e torce para o "
          "${(ZopoState().lista[2]["resposta"] as List)[listResp[2] - 1]}. \n",
          style: const TextStyle(
              fontSize: 28, color: Colors.white, fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: reiniciar,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(listResp[0] == 0
                  ? Colors.orange.shade600
                  : listResp[0] == 1
                      ? Colors.blue.shade600
                      : listResp[0] == 2
                          ? Colors.green.shade600
                          : listResp[0] == 3
                              ? Colors.yellow.shade600
                              : Colors.red.shade600)),
          child: const Text("Reiniciar"),
        )
      ],
    ));
  }
}
