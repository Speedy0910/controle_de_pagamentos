import 'package:flutter/material.dart';

import '../../themes/temas.dart';

var turmaSelecionada = [];
var informacoes = [];
var idSelecionado = [];
var tableSelecionada = [];

var nomeDosPagos = [];
var pagos = [];
var nomeDosNotPagos = [];
var notPagos = [];

class PendentPayment {
  verifyNotPayment({required payment, required size, required nome}) {
    if (payment == 0) {
      return Column(
        children: <Widget>[
          SizedBox(
            width: size.width * .6,
            child: Text(
              'Aluno: $nome',
              textAlign: TextAlign.center,
              style: Temas().styleSubTitles(),
            ),
          ),
          Container(
              height: size.height * .1,
              width: size.width * .7,
              margin: EdgeInsets.only(
                  top: size.height * .02, bottom: size.height * .02),
              child: Container(
                height: size.height * .1,
                decoration: BoxDecoration(
                  color: Temas().corDosBotaos(),
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                    child: Text('Pagamento não efetuado',
                        style: Temas().styleLetras())),
              )),
        ],
      );
    } else {
      return const SizedBox();
    }
  }
}
