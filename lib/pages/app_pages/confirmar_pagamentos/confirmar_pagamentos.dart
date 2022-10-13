import 'package:controle_de_pagamentos/pages/data/constantes.dart';
import 'package:controle_de_pagamentos/pages/data/database.dart';
import 'package:controle_de_pagamentos/themes/temas.dart';
import 'package:flutter/material.dart';

import '../../data/getter.dart';

class ConfirmarPagamentos extends StatelessWidget {
  const ConfirmarPagamentos({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(null),
          title: const Text(
            'Confirmar pagamento',
            style: TextStyle(
                fontFamily: 'Coming Soon', fontWeight: FontWeight.bold),
          ),
          backgroundColor: Temas().corAppBar(),
        ),
        body: Container(
          color: Temas().corDeFundo(),
          child: ListView.builder(
              itemCount: titleInfo.length - 5,
              itemBuilder: (context, index) {
                var mes = titleInfo[index + 5];
                var aluno = informacoes[0];
                return Container(
                  height: size.height * .1,
                  width: size.width * .5,
                  margin: EdgeInsets.only(top: size.height * .02),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all(Temas().corDosBotaos())),
                    onPressed: () {
                      switch (turmaSelecionada[0]) {
                        case 'MTI':
                          ScriptsDataBase().pagarMesSelecionado(
                              databaseTableNameMTI, mes, 1, idSelecionado[0]);
                          break;

                        case 'MTII':
                          ScriptsDataBase().pagarMesSelecionado(
                              databaseTableNameMTII, mes, 1, idSelecionado[0]);
                          break;

                        case 'JDI':
                          ScriptsDataBase().pagarMesSelecionado(
                              databaseTableNameJDI, mes, 1, idSelecionado[0]);
                          break;

                        case 'JDII':
                          ScriptsDataBase().pagarMesSelecionado(
                              databaseTableNameJDII, mes, 1, idSelecionado[0]);
                          break;
                      }
                      _paymentSucess(mes: mes, aluno: aluno, context: context);
                    },
                    child: Text(
                      mes,
                      style: Temas().styleLetras(),
                    ),
                  ),
                );
              }),
        ));
  }

  _paymentSucess({required mes, required aluno, required context}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
      'Pagamento do Mês de $mes do aluno $aluno realizado com sucesso!',
      style: Temas().styleLetras(),
    )));
    Navigator.pop(context);
    Navigator.pop(context);
    Navigator.pop(context);
    Navigator.pop(context);
    Navigator.pop(context);
  }
}
