import 'package:controle_de_pagamentos/pages/app_pages/criar_cadastro/novo_cadastro.dart';
import 'package:controle_de_pagamentos/widgets/my_widgets.dart';
import 'package:flutter/material.dart';

import '../../themes/temas.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(null),
        backgroundColor: Temas().corAppBar(),
        title: MyWidgets().textAppBar(texto: 'Gerenciador de Pagamentos'),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: Temas().corDeFundo(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * .2,
                width: size.width * .3,
                margin: EdgeInsets.only(top: size.height * .05),
                child: Image.asset('assets/imgs/logo_escola.png'),
              ),
              //Adicionar novo cadastro
              Container(
                height: size.height * .2,
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
                    gerente.atualizarNomeCompletoResponsavel(nome: '');
                    gerente.atualizarDiaDePagamento(dia: '');
                    gerente.atualizarTelefone(telefone: '');
                    gerente.atualizarNomeCompletoAluno(nome: '');
                    gerente.atualizarTurma(turma: '');
                    Navigator.pushNamed(context, '/AddCadastro');
                  },
                  child: Text('Adicionar novo cadastro',
                      textAlign: TextAlign.center,
                      style: Temas().styleLetras()),
                ),
              ),

              //Para todo as pessoas cadastradas
              Container(
                height: size.height * .2,
                width: size.width * .5,
                margin: EdgeInsets.only(top: size.height * .05),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all(Temas().corDosBotaos())),
                  onPressed: () {
                    Navigator.pushNamed(context, '/SelectTurma');
                  },
                  child: Text('Pessoas cadastradas',
                      textAlign: TextAlign.center,
                      style: Temas().styleLetras()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
