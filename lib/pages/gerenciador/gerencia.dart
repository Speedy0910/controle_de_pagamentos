import 'package:mobx/mobx.dart';

part 'gerencia.g.dart';

// ignore: library_private_types_in_public_api
class Gerencia = _Gerencia with _$Gerencia;

abstract class _Gerencia with Store {
// #region Nome completo responsavel
  @observable
  String? _nomeCompletoResponsavel;

  @computed
  String get nomeResponsavel => _nomeCompletoResponsavel ?? '';

  @action
  atualizarNomeCompletoResponsavel({required String nome}) {
    _nomeCompletoResponsavel = nome;
  }
// #endregion

// #region Dia de pagamento
  @observable
  int? _diaDePagamento;

  @computed
  int get dia => _diaDePagamento ?? 0;

  @action
  atualizarDiaDePagamento({required String dia}) {
    _diaDePagamento = int.tryParse(dia);
  }
// #endregion

// #region Telefone de contato
  @observable
  int? _telefone;

  @computed
  int get telefone => _telefone ?? 000000000;

  @action
  atualizarTelefone({required String telefone}) {
    _telefone = int.tryParse(telefone);
  }
// #endregion

// #region Nome completo do Aluno
  @observable
  String? _nomeCompletoAluno;

  @computed
  String get nomeAluno => _nomeCompletoAluno ?? '';

  @action
  atualizarNomeCompletoAluno({required String nome}) {
    _nomeCompletoAluno = nome;
  }
// #endregion

// #region Turma
  @observable
  String? _turma;

  @computed
  String get turma => _turma ?? '';

  @action
  atualizarTurma({required String turma}) {
    _turma = turma;
  }

// #endregion

// #region Pagamento de Janeiro
  @observable
  int? _paymentJaneiro;

  @computed
  String get paymentJaneiro => paymentTrueJaneiro ? 'não foi pago' : 'pago';

  @computed
  bool get paymentTrueJaneiro => _paymentJaneiro != 1;

  @action
  verificarPaymentJaneiro({required String janeiro}) {
    _paymentJaneiro = int.tryParse(janeiro);
  }
// #endregion

// #region Pagamento de Fevereiro
  @observable
  String? _paymentFevereiro;

  @computed
  String get paymentFevereiro => paymentTrueFevereiro ? 'não foi pago' : 'pago';

  @computed
  bool get paymentTrueFevereiro => _paymentFevereiro != '1';

  @action
  verificarPaymentFevereiro({required String fevereiro}) {
    _paymentFevereiro = fevereiro;
  }
// #endregion

// #region Pagamento de Março
  @observable
  int? _paymentMarco;

  @computed
  String get paymentMarco => paymentTrueMarco ? 'não foi pago' : 'pago';

  @computed
  bool get paymentTrueMarco => _paymentMarco != 1;

  @action
  verificarPaymentMarco({required String marco}) {
    _paymentMarco = int.tryParse(marco);
  }

// #endregion

// #region Pagamento de Abril
  @observable
  int? _paymentAbril;

  @computed
  String get paymentAbril => paymentTrueAbril ? 'não foi pago' : 'pago';

  @computed
  bool get paymentTrueAbril => _paymentAbril != 1;

  @action
  verificarPaymentAbril({required String abril}) {
    _paymentAbril = int.tryParse(abril);
  }
// #endregion

// #region Pagamento de Maio
  @observable
  int? _paymentMaio;

  @computed
  String get paymentMaio => paymentTrueMaio ? 'não foi pago' : 'pago';

  @computed
  bool get paymentTrueMaio => _paymentMaio != 1;

  @action
  verificarPaymentMaio({required String maio}) {
    _paymentMaio = int.tryParse(maio);
  }
// #endregion

// #region Pagamento de Junho
  @observable
  int? _paymentJunho;

  @computed
  String get paymentJunho => paymentTrueJunho ? 'não foi pago' : 'pago';

  @computed
  bool get paymentTrueJunho => _paymentJunho != 1;

  @action
  verificarPaymentJunho({required String junho}) {
    _paymentJunho = int.tryParse(junho);
  }
// #endregion

// #region Pagamento de Julho
  @observable
  int? _paymentJulho;

  @computed
  String get paymentJulho => paymentTrueJulho ? 'não foi pago' : 'pago';

  @computed
  bool get paymentTrueJulho => _paymentJulho != 1;

  @action
  verificarPaymentJulho({required String julho}) {
    _paymentJulho = int.tryParse(julho);
  }
// #endregion

// #region Pagamento de Agosto
  @observable
  int? _paymentAgosto;

  @computed
  String get paymentAgosto => paymentTrueAgosto ? 'não foi pago' : 'pago';

  @computed
  bool get paymentTrueAgosto => _paymentAgosto != 1;

  @action
  verificarPaymentAgosto({required String agosto}) {
    _paymentAgosto = int.tryParse(agosto);
  }
// #endregion

// #region Pagamento de Setembro
  @observable
  int? _paymentSetembro;

  @computed
  String get paymentSetembro => paymentTrueSetembro ? 'não foi pago' : 'pago';

  @computed
  bool get paymentTrueSetembro => _paymentSetembro != 1;

  @action
  verificarPaymentSetembro({required String setembro}) {
    _paymentSetembro = int.tryParse(setembro);
  }
// #endregion

// #region Pagamento de Outubro
  @observable
  int? _paymentOutubro;

  @computed
  String get paymentOutubro => paymentTrueOutubro ? 'não foi pago' : 'pago';

  @computed
  bool get paymentTrueOutubro => _paymentOutubro != 1;

  @action
  verificarPaymentOutubro({required String outubro}) {
    _paymentOutubro = int.tryParse(outubro);
  }
// #endregion

// #region Pagamento de Novembro
  @observable
  int? _paymentNovembro;

  @computed
  String get paymentNovembro => paymentTrueNovembro ? 'não foi pago' : 'pago';

  @computed
  bool get paymentTrueNovembro => _paymentNovembro != 1;

  @action
  verificarPaymentNovembro({required String novembro}) {
    _paymentNovembro = int.tryParse(novembro);
  }
// #endregion

// #region Pagamento de Dezembro
  @observable
  int? _paymentDezembro;

  @computed
  String get paymentDezembro => paymentTrueDezembro ? 'não foi pago' : 'pago';

  @computed
  bool get paymentTrueDezembro => _paymentDezembro != 1;

  @action
  verificarPaymentDezembro({required String dezembro}) {
    _paymentDezembro = int.tryParse(dezembro);
  }
// #endregion

// #region Testes de preenchimento

  // Todos os dados estão preenchidos?
  @computed
  bool get dadosPreenchidos =>
      nomeResponsavelValido &&
      diaValido &&
      telefoneValido &&
      nomeAlunoValido &&
      turmaValida;

  // Nome responsavel validado
  @computed
  bool get nomeResponsavelValido => nomeResponsavel.isNotEmpty;
  // É um dia válido?
  @computed
  bool get diaValido => 0 < dia && dia < 31;
  // É um telefone válido?
  @computed
  bool get telefoneValido => telefone.toString().length == 9;
  // Nome aluno completo validado
  bool get nomeAlunoValido => nomeAluno.isNotEmpty;
  // Tuma valida?
  bool get turmaValida =>
      turma == 'MTI' || turma == 'MTII' || turma == 'JDI' || turma == 'JDII';
// #endregion

  @observable
  String? _getterKey;

  @computed
  String get getterKey => _getterKey ?? '';

  @computed
  bool get correctKey => _getterKey == '123';

  @action
  validadorKey({required key}) {
    _getterKey = key;
  }

}
