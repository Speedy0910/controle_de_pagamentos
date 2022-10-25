import 'package:controle_de_pagamentos/pages/data/getter.dart';
import 'package:controle_de_pagamentos/pages/data/scripts.dart';
import 'package:controle_de_pagamentos/pages/data/temporary/modelo_de_impressao.dart';
import 'package:controle_de_pagamentos/themes/temas.dart';
import 'package:controle_de_pagamentos/widgets/my_widgets.dart';
import 'package:flutter/material.dart';

class PagamentosPendentesJDI
 extends StatefulWidget {
  const PagamentosPendentesJDI
  ({super.key});

  @override
  State<PagamentosPendentesJDI
  > createState() => _HomePageState();
}

class _HomePageState extends State<PagamentosPendentesJDI
> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        drawer: Drawer(backgroundColor: Temas().corAppBar()),
        appBar: AppBar(
          title: MyWidgets().textAppBar(texto: 'Pendências do JDI'),
          backgroundColor: Temas().corAppBar(),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
              color: Temas().corDeFundo(),
              padding: const EdgeInsets.only(top: 30),
              child: FutureBuilder(
                  future: GetterDatabase().getJardimI(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<ModeloDeImpressao>> snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(
                          child: CircularProgressIndicator(
                        color: Colors.indigo,
                      ));
                    }
                    return Column(
                      children: [
                        // Pagamentos pendentes de Janeiro
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                bottom: size.height * .03),
                              child: Text('Pagamentos de janeiro',
                              style: Temas().styleTitles(),),
                            ),
                            SizedBox(
                              height: size.height * .35,
                              child: ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    final ModeloDeImpressao arquivos =
                                        snapshot.data![index];
                                    final nome = arquivos.nomeAluno;
                                    return Column(
                                      children: [
                                        PendentPayment().verifyNotPayment(
                                            size: size,
                                            payment: arquivos.payJaneiro,
                                            nome: nome,
                                            ),
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        ),
                        //Pagamentos de Fevereiro
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: size.height * .1,
                                bottom: size.height * .03),
                              child: Text('Pagamentos de Fevereiro',
                              style: Temas().styleTitles(),),
                            ),
                            SizedBox(
                              height: size.height * .35,
                              child: ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    final ModeloDeImpressao arquivos =
                                        snapshot.data![index];
                                    final nome = arquivos.nomeAluno;
                                    return Column(
                                      children: [
                                        PendentPayment().verifyNotPayment(
                                            size: size,
                                            payment: arquivos.payFevereiro,
                                            nome: nome),
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        ),
                        //Pagamentos de Março
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: size.height * .1,
                                bottom: size.height * .03),
                              child: Text('Pagamentos de Março',
                              style: Temas().styleTitles(),),
                            ),
                            SizedBox(
                              height: size.height * .35,
                              child: ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    final ModeloDeImpressao arquivos =
                                        snapshot.data![index];
                                    final nome = arquivos.nomeAluno;
                                    return Column(
                                      children: [
                                        PendentPayment().verifyNotPayment(
                                            size: size,
                                            payment: arquivos.payMarco,
                                            nome: nome),
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        ),
                        //Pagamentos de Abril
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: size.height * .1,
                                bottom: size.height * .03),
                              child: Text('Pagamentos de Abril',
                              style: Temas().styleTitles(),),
                            ),
                            SizedBox(
                              height: size.height * .35,
                              child: ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    final ModeloDeImpressao arquivos =
                                        snapshot.data![index];
                                    final nome = arquivos.nomeAluno;
                                    return Column(
                                      children: [
                                        PendentPayment().verifyNotPayment(
                                            size: size,
                                            payment: arquivos.payAbril,
                                            nome: nome),
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        ),
                        //Pagamentos de Maio
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: size.height * .1,
                                bottom: size.height * .03),
                              child: Text('Pagamentos de Maio',
                              style: Temas().styleTitles(),),
                            ),
                            SizedBox(
                              height: size.height * .35,
                              child: ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    final ModeloDeImpressao arquivos =
                                        snapshot.data![index];
                                    final nome = arquivos.nomeAluno;
                                    return Column(
                                      children: [
                                        PendentPayment().verifyNotPayment(
                                            size: size,
                                            payment: arquivos.payMaio,
                                            nome: nome),
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        ),  
                        //Pagamentos de Junho
                          Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: size.height * .1,
                                bottom: size.height * .03),
                              child: Text('Pagamentos de Junho',
                              style: Temas().styleTitles(),),
                            ),
                            SizedBox(
                              height: size.height * .35,
                              child: ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    final ModeloDeImpressao arquivos =
                                        snapshot.data![index];
                                    final nome = arquivos.nomeAluno;
                                    return Column(
                                      children: [
                                        PendentPayment().verifyNotPayment(
                                            size: size,
                                            payment: arquivos.payJunho,
                                            nome: nome),
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        ),
                        //Pagamentos de Julho
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: size.height * .1,
                                bottom: size.height * .03),
                              child: Text('Pagamentos de Julho',
                              style: Temas().styleTitles(),),
                            ),
                            SizedBox(
                              height: size.height * .35,
                              child: ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    final ModeloDeImpressao arquivos =
                                        snapshot.data![index];
                                    final nome = arquivos.nomeAluno;
                                    return Column(
                                      children: [
                                        PendentPayment().verifyNotPayment(
                                            size: size,
                                            payment: arquivos.payJulho,
                                            nome: nome),
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        ),
                        //Pagamentos de Agosto
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: size.height * .1,
                                bottom: size.height * .03),
                              child: Text('Pagamentos de Agosto',
                              style: Temas().styleTitles(),),
                            ),
                            SizedBox(
                              height: size.height * .35,
                              child: ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    final ModeloDeImpressao arquivos =
                                        snapshot.data![index];
                                    final nome = arquivos.nomeAluno;
                                    return Column(
                                      children: [
                                        PendentPayment().verifyNotPayment(
                                            size: size,
                                            payment: arquivos.payAgosto,
                                            nome: nome),
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        ),
                        //Pagamentos de Setembro
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: size.height * .1,
                                bottom: size.height * .03),
                              child: Text('Pagamentos de Setembro',
                              style: Temas().styleTitles(),),
                            ),
                            SizedBox(
                              height: size.height * .35,
                              child: ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    final ModeloDeImpressao arquivos =
                                        snapshot.data![index];
                                    final nome = arquivos.nomeAluno;
                                    return Column(
                                      children: [
                                        PendentPayment().verifyNotPayment(
                                            size: size,
                                            payment: arquivos.paySetembro,
                                            nome: nome),
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        ),
                        //Pagamentos de Outubro
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: size.height * .1,
                                bottom: size.height * .03),
                              child: Text('Pagamentos de Outubro',
                              style: Temas().styleTitles(),),
                            ),
                            SizedBox(
                              height: size.height * .35,
                              child: ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    final ModeloDeImpressao arquivos =
                                        snapshot.data![index];
                                    final nome = arquivos.nomeAluno;
                                    return Column(
                                      children: [
                                        PendentPayment().verifyNotPayment(
                                            size: size,
                                            payment: arquivos.payOutubro,
                                            nome: nome),
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        ),
                        //Pagamentos de Novembro
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: size.height * .1,
                                bottom: size.height * .03),
                              child: Text('Pagamentos de Novembro',
                              style: Temas().styleTitles(),),
                            ),
                            SizedBox(
                              height: size.height * .35,
                              child: ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    final ModeloDeImpressao arquivos =
                                        snapshot.data![index];
                                    final nome = arquivos.nomeAluno;
                                    return Column(
                                      children: [
                                        PendentPayment().verifyNotPayment(
                                            size: size,
                                            payment: arquivos.payNovembro,
                                            nome: nome),
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        ),
                        //Pagamentos de Dezembro
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: size.height * .1,
                                bottom: size.height * .03),
                              child: Text('Pagamentos de Dezembro',
                              style: Temas().styleTitles(),),
                            ),
                            SizedBox(
                              height: size.height * .35,
                              child: ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    final ModeloDeImpressao arquivos =
                                        snapshot.data![index];
                                    final nome = arquivos.nomeAluno;
                                    return Column(
                                      children: [
                                        PendentPayment().verifyNotPayment(
                                            size: size,
                                            payment: arquivos.payDezembro,
                                            nome: nome),
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ],
                    );
                  })),
        ));
  }
}
