// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gerencia.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Gerencia on _Gerencia, Store {
  Computed<String>? _$nomeResponsavelComputed;

  @override
  String get nomeResponsavel => (_$nomeResponsavelComputed ??= Computed<String>(
          () => super.nomeResponsavel,
          name: '_Gerencia.nomeResponsavel'))
      .value;
  Computed<int>? _$diaComputed;

  @override
  int get dia =>
      (_$diaComputed ??= Computed<int>(() => super.dia, name: '_Gerencia.dia'))
          .value;
  Computed<int>? _$telefoneComputed;

  @override
  int get telefone => (_$telefoneComputed ??=
          Computed<int>(() => super.telefone, name: '_Gerencia.telefone'))
      .value;
  Computed<String>? _$nomeAlunoComputed;

  @override
  String get nomeAluno => (_$nomeAlunoComputed ??=
          Computed<String>(() => super.nomeAluno, name: '_Gerencia.nomeAluno'))
      .value;
  Computed<String>? _$turmaComputed;

  @override
  String get turma => (_$turmaComputed ??=
          Computed<String>(() => super.turma, name: '_Gerencia.turma'))
      .value;
  Computed<bool>? _$dadosPreenchidosComputed;

  @override
  bool get dadosPreenchidos => (_$dadosPreenchidosComputed ??= Computed<bool>(
          () => super.dadosPreenchidos,
          name: '_Gerencia.dadosPreenchidos'))
      .value;
  Computed<bool>? _$nomeResponsavelValidoComputed;

  @override
  bool get nomeResponsavelValido => (_$nomeResponsavelValidoComputed ??=
          Computed<bool>(() => super.nomeResponsavelValido,
              name: '_Gerencia.nomeResponsavelValido'))
      .value;
  Computed<bool>? _$diaValidoComputed;

  @override
  bool get diaValido => (_$diaValidoComputed ??=
          Computed<bool>(() => super.diaValido, name: '_Gerencia.diaValido'))
      .value;
  Computed<bool>? _$telefoneValidoComputed;

  @override
  bool get telefoneValido =>
      (_$telefoneValidoComputed ??= Computed<bool>(() => super.telefoneValido,
              name: '_Gerencia.telefoneValido'))
          .value;

  late final _$_nomeCompletoResponsavelAtom =
      Atom(name: '_Gerencia._nomeCompletoResponsavel', context: context);

  @override
  String? get _nomeCompletoResponsavel {
    _$_nomeCompletoResponsavelAtom.reportRead();
    return super._nomeCompletoResponsavel;
  }

  @override
  set _nomeCompletoResponsavel(String? value) {
    _$_nomeCompletoResponsavelAtom
        .reportWrite(value, super._nomeCompletoResponsavel, () {
      super._nomeCompletoResponsavel = value;
    });
  }

  late final _$_diaDePagamentoAtom =
      Atom(name: '_Gerencia._diaDePagamento', context: context);

  @override
  int? get _diaDePagamento {
    _$_diaDePagamentoAtom.reportRead();
    return super._diaDePagamento;
  }

  @override
  set _diaDePagamento(int? value) {
    _$_diaDePagamentoAtom.reportWrite(value, super._diaDePagamento, () {
      super._diaDePagamento = value;
    });
  }

  late final _$_telefoneAtom =
      Atom(name: '_Gerencia._telefone', context: context);

  @override
  int? get _telefone {
    _$_telefoneAtom.reportRead();
    return super._telefone;
  }

  @override
  set _telefone(int? value) {
    _$_telefoneAtom.reportWrite(value, super._telefone, () {
      super._telefone = value;
    });
  }

  late final _$_nomeCompletoAlunoAtom =
      Atom(name: '_Gerencia._nomeCompletoAluno', context: context);

  @override
  String? get _nomeCompletoAluno {
    _$_nomeCompletoAlunoAtom.reportRead();
    return super._nomeCompletoAluno;
  }

  @override
  set _nomeCompletoAluno(String? value) {
    _$_nomeCompletoAlunoAtom.reportWrite(value, super._nomeCompletoAluno, () {
      super._nomeCompletoAluno = value;
    });
  }

  late final _$_turmaAtom = Atom(name: '_Gerencia._turma', context: context);

  @override
  String? get _turma {
    _$_turmaAtom.reportRead();
    return super._turma;
  }

  @override
  set _turma(String? value) {
    _$_turmaAtom.reportWrite(value, super._turma, () {
      super._turma = value;
    });
  }

  late final _$_GerenciaActionController =
      ActionController(name: '_Gerencia', context: context);

  @override
  dynamic atualizarNomeCompletoResponsavel({required String nome}) {
    final _$actionInfo = _$_GerenciaActionController.startAction(
        name: '_Gerencia.atualizarNomeCompletoResponsavel');
    try {
      return super.atualizarNomeCompletoResponsavel(nome: nome);
    } finally {
      _$_GerenciaActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic atualizarDiaDePagamento({required String dia}) {
    final _$actionInfo = _$_GerenciaActionController.startAction(
        name: '_Gerencia.atualizarDiaDePagamento');
    try {
      return super.atualizarDiaDePagamento(dia: dia);
    } finally {
      _$_GerenciaActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic atualizarTelefone({required String telefone}) {
    final _$actionInfo = _$_GerenciaActionController.startAction(
        name: '_Gerencia.atualizarTelefone');
    try {
      return super.atualizarTelefone(telefone: telefone);
    } finally {
      _$_GerenciaActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic atualizarNomeCompletoAluno({required String nome}) {
    final _$actionInfo = _$_GerenciaActionController.startAction(
        name: '_Gerencia.atualizarNomeCompletoAluno');
    try {
      return super.atualizarNomeCompletoAluno(nome: nome);
    } finally {
      _$_GerenciaActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic atualizarTurma({required String turma}) {
    final _$actionInfo = _$_GerenciaActionController.startAction(
        name: '_Gerencia.atualizarTurma');
    try {
      return super.atualizarTurma(turma: turma);
    } finally {
      _$_GerenciaActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nomeResponsavel: ${nomeResponsavel},
dia: ${dia},
telefone: ${telefone},
nomeAluno: ${nomeAluno},
turma: ${turma},
dadosPreenchidos: ${dadosPreenchidos},
nomeResponsavelValido: ${nomeResponsavelValido},
diaValido: ${diaValido},
telefoneValido: ${telefoneValido}
    ''';
  }
}
