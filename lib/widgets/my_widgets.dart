import 'package:controle_de_pagamentos/pages/app_pages/criar_cadastro/novo_cadastro.dart';
import 'package:controle_de_pagamentos/pages/data/scripts.dart';
import 'package:controle_de_pagamentos/themes/temas.dart';
import 'package:flutter/material.dart';

class MyWidgets {
  textAppBar({required texto}) {
    return Text(
      texto,
      textAlign: TextAlign.start,
      style: Temas().styleTextoAppBar(),
    );
  }

  entrarEmContato({required context, required telefone, required msg}) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .2,
      width: size.width * .5,
      margin: EdgeInsets.only(top: size.height * .05),
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            )),
            backgroundColor: MaterialStateProperty.all(Temas().corDosBotaos())),
        onPressed: () {
          MyScripts().abrirWhatsApp(telefone: telefone, msg: msg);
        },
        child: Text('Entrar em contato', style: Temas().styleBotaos()),
      ),
    );
  }

  confirmPay({required context}) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .2,
      width: size.width * .5,
      margin: EdgeInsets.only(top: size.height * .05),
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            )),
            backgroundColor: MaterialStateProperty.all(Temas().corDosBotaos())),
        onPressed: () {
          gerente.validadorKey(key: '');
          Navigator.pushNamed(context, '/SegurityScreen');
        },
        child: Text('Criar novo Pagamento', style: Temas().styleBotaos()),
      ),
    );
  }

  deleteFile({required context}) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .2,
      width: size.width * .5,
      margin: EdgeInsets.only(top: size.height * .05),
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            )),
            backgroundColor: MaterialStateProperty.all(Temas().corDosBotaos())),
        onPressed: () {
          gerente.validadorKey(key: '');
          Navigator.pushNamed(context, '/DeletarFile');
        },
        child: Text('Deletar Arquivo do aluno', style: Temas().styleBotaos()),
      ),
    );
  }

  checkPayMTI({required context}) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .25,
      width: size.width * .5,
      margin: EdgeInsets.only(top: size.height * .05),
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            )),
            backgroundColor: MaterialStateProperty.all(Temas().corDosBotaos())),
        onPressed: () {
          Navigator.pushNamed(context, '/CheckPaymentsMTI');
        },
        child: Text('Verificar pagamentos pendentes',
            style: Temas().styleBotaos()),
      ),
    );
  }

  checkPayMTII({required context}) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .25,
      width: size.width * .5,
      margin: EdgeInsets.only(top: size.height * .05),
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            )),
            backgroundColor: MaterialStateProperty.all(Temas().corDosBotaos())),
        onPressed: () {
          Navigator.pushNamed(context, '/CheckPaymentsMTII');
        },
        child: Text('Verificar pagamentos pendentes',
            style: Temas().styleBotaos()),
      ),
    );
  }

  checkPayJDI({required context}) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .25,
      width: size.width * .5,
      margin: EdgeInsets.only(top: size.height * .05),
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            )),
            backgroundColor: MaterialStateProperty.all(Temas().corDosBotaos())),
        onPressed: () {
          Navigator.pushNamed(context, '/CheckPaymentsJDI');
        },
        child: Text('Verificar pagamentos pendentes',
            style: Temas().styleBotaos()),
      ),
    );
  }

  checkPayJDII({required context}) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .25,
      width: size.width * .5,
      margin: EdgeInsets.only(top: size.height * .05),
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            )),
            backgroundColor: MaterialStateProperty.all(Temas().corDosBotaos())),
        onPressed: () {
          Navigator.pushNamed(context, '/CheckPaymentsJDII');
        },
        child: Text('Verificar pagamentos pendentes',
            style: Temas().styleBotaos()),
      ),
    );
  }
}
