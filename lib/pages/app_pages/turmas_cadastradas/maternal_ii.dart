import 'package:controle_de_pagamentos/pages/data/scripts.dart';
import 'package:controle_de_pagamentos/pages/data/temporary/modelo_de_impressao.dart';
import 'package:controle_de_pagamentos/themes/temas.dart';
import 'package:controle_de_pagamentos/widgets/my_widgets.dart';
import 'package:flutter/material.dart';

import '../../data/getter.dart';
import '../criar_cadastro/novo_cadastro.dart';

class CadastroMaternalII extends StatefulWidget {
  const CadastroMaternalII({super.key});

  @override
  State<CadastroMaternalII> createState() => _HomePageState();
}

class _HomePageState extends State<CadastroMaternalII> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
          child: Container(
            color: Temas().corAppBar(),
            child: Column(
              children: [
                SizedBox(height:  size.height * .1,),
                MyWidgets().checkPayMTII(context: context)
              ],
            ),
          )
        ),
        appBar: AppBar(
          title: MyWidgets().textAppBar(texto: 'Cadastros do Maternal II'),
          backgroundColor: Temas().corAppBar(),
        ),
        body: Container(
            color: Temas().corDeFundo(),
            padding: const EdgeInsets.only(top: 30),
            child: FutureBuilder(
                future: GetterDatabase().getMaternalII(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<ModeloDeImpressao>> snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                        child: CircularProgressIndicator(
                      color: Colors.indigo,
                    ));
                  }
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        final ModeloDeImpressao arquivos =
                            snapshot.data![index];
                        final id = arquivos.userID;
                        final aluno = arquivos.nomeAluno;
                        final responsavel = arquivos.nomeResponsavel;
                        final diaPagamento = arquivos.diaPagamento;
                        final telefone = arquivos.telefone;
                        final turma = arquivos.turma;

                        return Column(
                          children: <Widget>[
                            const SizedBox(
                              width: 50,
                            ),
                            Container(
                              height: size.height * .1,
                              width: size.width * .7,
                              margin: EdgeInsets.only(top: size.height * .02),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      )),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Temas().corDosBotaos())),
                                  onPressed: () {
                                    // #region Atualizador de informa????es
                                    gerente.verificarPaymentJaneiro(
                                        janeiro: '${arquivos.payJaneiro}');
                                    gerente.verificarPaymentFevereiro(
                                        fevereiro: '${arquivos.payFevereiro}');
                                    gerente.verificarPaymentMarco(
                                        marco: '${arquivos.payMarco}');
                                    gerente.verificarPaymentAbril(
                                        abril: '${arquivos.payAbril}');
                                    gerente.verificarPaymentMaio(
                                        maio: '${arquivos.payMaio}');
                                    gerente.verificarPaymentJunho(
                                        junho: '${arquivos.payJunho}');
                                    gerente.verificarPaymentJulho(
                                        julho: '${arquivos.payJulho}');
                                    gerente.verificarPaymentAgosto(
                                        agosto: '${arquivos.payAgosto}');
                                    gerente.verificarPaymentSetembro(
                                        setembro: '${arquivos.paySetembro}');
                                    gerente.verificarPaymentOutubro(
                                        outubro: '${arquivos.payOutubro}');
                                    gerente.verificarPaymentNovembro(
                                        novembro: '${arquivos.payNovembro}');
                                    gerente.verificarPaymentDezembro(
                                        dezembro: '${arquivos.payDezembro}');
                                    // #endregion

                                    // #region Salvar requisi????es
                                    informacoes.clear();
                                    idSelecionado.clear();
                                    idSelecionado.add(id);
                                    informacoes.add(aluno);
                                    informacoes.add(responsavel);
                                    informacoes.add(diaPagamento);
                                    informacoes.add(telefone);
                                    informacoes.add(turma);

                                    informacoes.add(gerente.paymentJaneiro);
                                    informacoes.add(gerente.paymentFevereiro);
                                    informacoes.add(gerente.paymentMarco);
                                    informacoes.add(gerente.paymentAbril);
                                    informacoes.add(gerente.paymentMaio);
                                    informacoes.add(gerente.paymentJunho);
                                    informacoes.add(gerente.paymentJulho);
                                    informacoes.add(gerente.paymentAgosto);
                                    informacoes.add(gerente.paymentSetembro);
                                    informacoes.add(gerente.paymentOutubro);
                                    informacoes.add(gerente.paymentNovembro);
                                    informacoes.add(gerente.paymentDezembro);
                                    // #endregion
                                    Navigator.pushNamed(context, '/AcessarDados');
                                  },
                                  child: Text(
                                    aluno,
                                    style: Temas().styleLetras()
                                  )),
                            )
                          ],
                        );
                      });
                })));
  }
}
