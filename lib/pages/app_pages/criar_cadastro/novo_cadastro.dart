import 'package:controle_de_pagamentos/pages/data/temporary/banco_temporario.dart';
import 'package:controle_de_pagamentos/pages/data/database.dart';
import 'package:controle_de_pagamentos/pages/gerenciador/gerencia.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../themes/temas.dart';

final gerente = Gerencia();
late BuildContext _context;

class AdicionarNovoCadastro extends StatelessWidget {
  const AdicionarNovoCadastro({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _context = context;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(null),
        title: Text(
          'Realizar novo Cadastro',
          style:
              Temas().styleTextoAppBar()
        ),
        backgroundColor: Temas().corAppBar(),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back))
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: Temas().corDeFundo(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height * .2,
                width: size.width * .3,
                child: Image.asset('assets/imgs/logo_escola.png'),
              ),
              // Input Nome completo do responsavel
              Container(
                width: size.width * .8,
                margin: EdgeInsets.only(top: size.height * .02),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Nome do Responsavel completo'),
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    gerente.atualizarNomeCompletoResponsavel(nome: value);
                  },
                ),
              ),
              // Input Dia do pagamento
              Container(
                width: size.width * .8,
                margin: EdgeInsets.only(top: size.height * .04),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: 'Dia do pagamento desejado'),
                  onChanged: (value) {
                    gerente.atualizarDiaDePagamento(dia: value);
                  },
                ),
              ),
              // Input do telefone de contato
              Container(
                width: size.width * .8,
                margin: EdgeInsets.only(top: size.height * .04),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      labelText: 'Telefone de contato (Sem o DDD)'),
                  onChanged: (telefone) {
                    gerente.atualizarTelefone(telefone: telefone);
                  },
                ),
              ),
              // Nome completo do aluno
              Container(
                width: size.width * .8,
                margin: EdgeInsets.only(top: size.height * .06),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Nome Completo do Aluno'),
                  textInputAction: TextInputAction.next,
                  onChanged: (nomeAluno) {
                    gerente.atualizarNomeCompletoAluno(nome: nomeAluno);
                  },
                ),
              ),
              //Turma do aluno
              Container(
                width: size.width * .8,
                margin: EdgeInsets.only(top: size.height * .06, bottom: size.height * .02),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Turma (MTI, MTII, JDI, JDII)'),
                  textInputAction: TextInputAction.done,
                  onChanged: (turmaAluno) {
                    gerente.atualizarTurma(turma: turmaAluno);
                  },
                ),
              ),

              SizedBox(
                height: size.height * .1,
                width: size.width * .4,
                child: Observer(builder: (_) {
                  return ElevatedButton(
                      onPressed: gerente.dadosPreenchidos ? _botaoSalvar : null,
                      child: const Text(
                        'Salvar',
                        style: TextStyle(
                            fontFamily: 'Coming Soon',
                            fontWeight: FontWeight.bold),
                      ));
                }),
              )
            ],
          ),
        ),
      ),
    );
  }

  _botaoSalvar() async {
    await ScriptsDataBase().create(BancoTemporario(
        nomeResponsavel: gerente.nomeResponsavel,
        diaPagamento: gerente.dia,
        telefone: gerente.telefone,
        nomeAluno: gerente.nomeAluno,
        turma: gerente.turma));
    await _sucessMessage();
  }

  _sucessMessage() async {
    ScaffoldMessenger.of(_context).showSnackBar(SnackBar(
        content: Text(
      '${gerente.nomeResponsavel} responsável de ${gerente.nomeAluno} cadastrado com sucesso!',
      style: Temas().styleLetras(),
    )));
    Navigator.pop(_context);
  }
}
