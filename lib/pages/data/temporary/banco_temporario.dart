import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class BancoTemporario extends Equatable {
  late int? userID;
  final String nomeResponsavel;
  final int diaPagamento;
  final int telefone;
  final String nomeAluno;
  final String turma;
  final int? payJaneiro;
  final int? payFevereiro;
  final int? payMarco;
  final int? payAbril;
  final int? payMaio;
  final int? payJunho;
  final int? payJulho;
  final int? payAgosto;
  final int? paySetembro;
  final int? payOutubro;
  final int? payNovembro;
  final int? payDezembro;

  BancoTemporario({
    this.userID,
    required this.nomeResponsavel,
    required this.diaPagamento,
    required this.telefone,
    required this.nomeAluno,
    required this.turma,
    this.payJaneiro,
    this.payFevereiro,
    this.payMarco,
    this.payAbril,
    this.payMaio,
    this.payJunho,
    this.payJulho,
    this.payAgosto,
    this.paySetembro,
    this.payOutubro,
    this.payNovembro,
    this.payDezembro,
  });

  @override
  List<Object?> get props => [
        userID,
        nomeResponsavel,
        diaPagamento,
        telefone,
        nomeAluno,
        turma,
        payJaneiro,
        payFevereiro,
        payMarco,
        payAbril,
        payMaio,
        payJunho,
        payJulho,
        payAgosto,
        paySetembro,
        payOutubro,
        payNovembro,
        payDezembro
      ];
}
