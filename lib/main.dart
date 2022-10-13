import 'package:controle_de_pagamentos/pages/app_pages/confirmar_pagamentos/security_screen.dart';
import 'package:controle_de_pagamentos/pages/app_pages/pagamentos_pendentes/pendent_pay_jdi.dart';
import 'package:controle_de_pagamentos/pages/app_pages/pagamentos_pendentes/pendent_pay_jdii.dart';
import 'package:controle_de_pagamentos/pages/app_pages/pagamentos_pendentes/pendent_pay_mti.dart';
import 'package:controle_de_pagamentos/pages/app_pages/turmas_cadastradas/jardim_i.dart';
import 'package:controle_de_pagamentos/pages/app_pages/turmas_cadastradas/jardim_ii.dart';
import 'package:controle_de_pagamentos/pages/app_pages/turmas_cadastradas/maternal_ii.dart';
import 'package:controle_de_pagamentos/pages/app_pages/acessar_dados/acessar_informacao.dart';
import 'package:controle_de_pagamentos/pages/app_pages/acessar_dados/escolher_turma.dart';
import 'package:controle_de_pagamentos/pages/app_pages/turmas_cadastradas/maternal_i.dart';
import 'package:controle_de_pagamentos/pages/app_pages/confirmar_pagamentos/confirmar_pagamentos.dart';
import 'package:controle_de_pagamentos/pages/app_pages/pagamentos_pendentes/pendent_pay_mtii.dart';
import 'package:flutter/material.dart';

import 'pages/app_pages/criar_cadastro/novo_cadastro.dart';
import 'pages/app_pages/delet_file/delet_file.dart';
import 'pages/app_pages/initial.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gerencia de pagamentos',
      home: const InitialPage(),
      routes: {
        '/Start': (context) => const InitialPage(),
        
        '/AddCadastro': (context) => const AdicionarNovoCadastro(),
        

        '/CheckPaymentsMTII' :(context) => const PagamentosPendentesMTII(),
        '/CheckPaymentsMTI' :(context) => const PagamentosPendentesMTI(),
        '/CheckPaymentsJDI' :(context) => const PagamentosPendentesJDI(),
        '/CheckPaymentsJDII' :(context) => const PagamentosPendentesJDII(),

        '/SelectTurma':(context) => const EscolherTurma(),
        '/MaternalI':(context) => const CadastroMaternalI(),
        '/MaternalII':(context) => const CadastroMaternalII(),
        '/JardimI':(context) => const CadastroJardimI(),
        '/JardimII':(context) => const CadastroJardimII(),

        '/AcessarDados':(context) => const AcessarInformacao(),
        '/SegurityScreen' : (context) => const SegurityScreen(),
        '/ConfirmarPagamentos': (context) => const ConfirmarPagamentos(),

        '/DeletarFile' :(context) => const DeletarDados()
      },
    );
  }
}
