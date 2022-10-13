import 'package:controle_de_pagamentos/pages/app_pages/criar_cadastro/novo_cadastro.dart';
import 'package:controle_de_pagamentos/themes/temas.dart';
import 'package:flutter/material.dart';

class SegurityScreen extends StatefulWidget {
  const SegurityScreen({super.key});

  @override
  State<SegurityScreen> createState() => _SegurityScreenState();
}

class _SegurityScreenState extends State<SegurityScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Prosseguir para pagamentos',
          style: Temas().styleTextoAppBar(),
        ),
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
                            Navigator.pushNamed(
                                context, '/ConfirmarPagamentos');
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
}
