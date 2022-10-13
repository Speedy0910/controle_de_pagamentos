import 'package:controle_de_pagamentos/pages/app_pages/criar_cadastro/novo_cadastro.dart';
import 'package:controle_de_pagamentos/pages/data/constantes.dart';
import 'package:controle_de_pagamentos/pages/data/database.dart';
import 'package:controle_de_pagamentos/pages/data/getter.dart';
import 'package:controle_de_pagamentos/themes/temas.dart';
import 'package:flutter/material.dart';

class DeletarDados extends StatefulWidget {
  const DeletarDados({super.key});

  @override
  State<DeletarDados> createState() => _DeletarDadosState();
}

class _DeletarDadosState extends State<DeletarDados> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(null),
        title: Text('Deletar ${informacoes[0]} ?', style: Temas().styleTextoAppBar(),),
        backgroundColor: Temas().corAppBar(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Temas().corDeFundo(),
        child: Wrap(
          children: [
            Container(
                height: size.height * .3,
                width: size.width * .7,
                margin: EdgeInsets.only(
                    top: size.height * .05,
                    bottom: size.height * .05,
                    left: size.width * .15),
                child: Image.asset('assets/imgs/logo_escola.png')),
            Container(
              height: size.height * .2,
              padding: EdgeInsets.only(
                  left: size.width * .1, right: size.width * .1),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                  color: Temas().corDeDestaque()),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * .015),
                    child: const Text(
                      'Digite sua senha:',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(
                    onChanged: (value) {
                      gerente.validadorKey(key: value);
                    },
                  ),
                ],
              ),
            ),
            //Confirmar
            Container(
              margin: EdgeInsets.only(
                  top: size.height * .08, left: size.width * .25),
              child: SizedBox(
                height: size.height * .13,
                width: size.width * .5,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)))),
                        backgroundColor:
                            MaterialStateProperty.all(Temas().corDeDestaque())),
                    onPressed: gerente.correctKey
                        ? () {
                            ScriptsDataBase().deletFileScript(
                                nomeTabela: _turmaSelecionada(),
                                id: idSelecionado[0]);
                            _sucessDelet(
                                context: context, aluno: informacoes[0]);
                          }
                        : null,
                    child: const Text('Confirmar')),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _turmaSelecionada() {
    switch (turmaSelecionada[0]) {
      case 'MTI':
        tableSelecionada.clear();
        tableSelecionada.add(databaseTableNameMTI);
        break;
      case 'MTII':
        tableSelecionada.clear();
        tableSelecionada.add(databaseTableNameMTII);
        break;
      case 'JDI':
        tableSelecionada.clear();
        tableSelecionada.add(databaseTableNameJDI);
        break;
      case 'JDII':
        tableSelecionada.clear();
        tableSelecionada.add(databaseTableNameJDII);
        break;
    }
    return tableSelecionada[0];
  }

  _sucessDelet({required context, required aluno}) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(
          'Os dados do Aluno(a) $aluno foram deletados!',
          style: Temas().styleLetras(),
          )));
    Navigator.pop(context);
    Navigator.pop(context);
    Navigator.pop(context);
    Navigator.pop(context);
    Navigator.pop(context);
  }
}
