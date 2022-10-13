import 'package:controle_de_pagamentos/pages/data/temporary/banco_temporario.dart';
import 'package:controle_de_pagamentos/pages/data/constantes.dart';

// ignore: must_be_immutable
class ModeloDeImpressao extends BancoTemporario {
  ModeloDeImpressao(
      {required id,
      required nomeResponsavel,
      required diaPagamento,
      required telefone,
      required nomeAluno,
      required turma, 
      required payJaneiro,
      required payFevereiro,
      required payMarco,
      required payAbril,
      required payMaio,
      required payJunho,
      required payJulho,
      required payAgosto,
      required paySetembro,
      required payOutubro,
      required payNovembro,
      required payDezembro})
      : super(
            userID: id,
            nomeResponsavel: nomeResponsavel,
            diaPagamento: diaPagamento,
            telefone: telefone,
            nomeAluno: nomeAluno,
            turma: turma,
            payJaneiro: payJaneiro,
            payFevereiro: payFevereiro,
            payMarco: payMarco,
            payAbril: payAbril,
            payMaio: payMaio,
            payJunho: payJunho,
            payJulho: payJulho,
            payAgosto: payAgosto,
            paySetembro: paySetembro,
            payOutubro: payOutubro,
            payNovembro: payNovembro,
            payDezembro: payDezembro);

  factory ModeloDeImpressao.fromMap(Map<String, Object?> map) {
    return ModeloDeImpressao(
        id: (map[databaseID] as num).toInt(),
        nomeResponsavel: map[databaseNomeCompletoResponsavel],
        diaPagamento: (map[databaseDiaPagamento] as num).toInt(),
        telefone: (map[databaseTelefone] as num).toInt(),
        nomeAluno: map[databaseNomeCompletoAluno],
        turma: map[databaseTurma],
        payJaneiro: (map[databaseMesJaneiro] as num).toInt(),
        payFevereiro: (map[databaseMesFevereiro] as num).toInt(),
        payMarco: (map[databaseMesMarco] as num).toInt(),
        payAbril: (map[databaseMesAbril] as num).toInt(),
        payMaio: (map[databaseMesMaio] as num).toInt(),
        payJunho: (map[databaseMesJunho] as num).toInt(),
        payJulho: (map[databaseMesJulho] as num).toInt(),
        payAgosto: (map[databaseMesAgosto] as num).toInt(),
        paySetembro: (map[databaseMesSetembro] as num).toInt(),
        payOutubro: (map[databaseMesOutubro] as num).toInt(),
        payNovembro: (map[databaseMesNovembro] as num).toInt(),
        payDezembro: (map[databaseMesDezembro] as num).toInt()
        );
  }
}
