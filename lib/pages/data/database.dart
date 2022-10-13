import 'package:controle_de_pagamentos/pages/data/constantes.dart';
import 'package:controle_de_pagamentos/pages/data/scripts.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'temporary/banco_temporario.dart';

class MyDataBase {
// #region Iniciar banco de dados
  Future<Database> getDatabase() async {
    //await deleteDatabase(join(await getDatabasesPath(), nomedb));
    return openDatabase(join(await getDatabasesPath(), nomedb),
        onCreate: (db, version) async {
      await db.execute(MyScripts().databaseScriptCreateMTI());
      await db.execute(MyScripts().databaseScriptCreateMTII());
      await db.execute(MyScripts().databaseScriptCreateJDI());
      await db.execute(MyScripts().databaseScriptCreateJDII());
    }, version: databaseVersion);
  }
// #endregion

}

class ScriptsDataBase {
  // #region Upgrade pagamentos
  Future pagarMesSelecionado(nomeTabela, atualizarInfoMes, newInfo, id) async {
    final db = await MyDataBase().getDatabase();
    final upgrade = db.rawUpdate('''
    UPDATE $nomeTabela
    SET $atualizarInfoMes = ?
    WHERE Id = ?
    ''', [newInfo, id]);

    return upgrade;
  }
  // #endregion

  deletFileScript({required nomeTabela, required id}) async {
    final db = await MyDataBase().getDatabase();
    final deletFile = db.rawDelete('''
    DELETE FROM $nomeTabela
    WHERE id = $id;
    ''');
    return deletFile;
  }

// #region Criar novo arquivo dentro do banco de dados
  Future create(BancoTemporario banco) async {
    try {
      final Database db = await MyDataBase().getDatabase();
      switch (banco.turma) {
        // Se for maternal I
        case 'MTI':
          banco.userID =
              await db.rawInsert('''insert into $databaseTableNameMTI(
        $databaseNomeCompletoResponsavel, 
        $databaseDiaPagamento, 
        $databaseTelefone, 
        $databaseNomeCompletoAluno,
        $databaseTurma,
        $databaseMesJaneiro,
        $databaseMesFevereiro,
        $databaseMesMarco,
        $databaseMesAbril,
        $databaseMesMaio,
        $databaseMesJunho,
        $databaseMesJulho,
        $databaseMesAgosto,
        $databaseMesSetembro,
        $databaseMesOutubro,
        $databaseMesNovembro,
        $databaseMesDezembro) 
        VALUES(
          '${banco.nomeResponsavel}', 
          '${banco.diaPagamento}', 
         '${banco.telefone}', 
          '${banco.nomeAluno}',
          '${banco.turma}',
          '0', '0', '0',
          '0', '0', '0',
          '0', '0', '0',
          '0', '0', '0');''');
          break;

        // Se for maternal II
        case 'MTII':
          banco.userID =
              await db.rawInsert('''insert into $databaseTableNameMTII(
        $databaseNomeCompletoResponsavel, 
        $databaseDiaPagamento, 
        $databaseTelefone, 
        $databaseNomeCompletoAluno,
        $databaseTurma,
        $databaseMesJaneiro,
        $databaseMesFevereiro,
        $databaseMesMarco,
        $databaseMesAbril,
        $databaseMesMaio,
        $databaseMesJunho,
        $databaseMesJulho,
        $databaseMesAgosto,
        $databaseMesSetembro,
        $databaseMesOutubro,
        $databaseMesNovembro,
        $databaseMesDezembro) 
        VALUES(
          '${banco.nomeResponsavel}', 
          '${banco.diaPagamento}', 
         '${banco.telefone}', 
          '${banco.nomeAluno}',
          '${banco.turma}',
          '0', '0', '0',
          '0', '0', '0',
          '0', '0', '0',
          '0', '0', '0');''');
          break;

        // Se for jardim I
        case 'JDI':
          banco.userID =
              await db.rawInsert('''insert into $databaseTableNameJDI(
        $databaseNomeCompletoResponsavel, 
        $databaseDiaPagamento, 
        $databaseTelefone, 
        $databaseNomeCompletoAluno,
        $databaseTurma,
        $databaseMesJaneiro,
        $databaseMesFevereiro,
        $databaseMesMarco,
        $databaseMesAbril,
        $databaseMesMaio,
        $databaseMesJunho,
        $databaseMesJulho,
        $databaseMesAgosto,
        $databaseMesSetembro,
        $databaseMesOutubro,
        $databaseMesNovembro,
        $databaseMesDezembro) 
        VALUES(
          '${banco.nomeResponsavel}', 
          '${banco.diaPagamento}', 
         '${banco.telefone}', 
          '${banco.nomeAluno}',
          '${banco.turma}',
          '0', '0', '0',
          '0', '0', '0',
          '0', '0', '0',
          '0', '0', '0');''');
          break;

        // Se for jardim II
        case 'JDII':
          banco.userID =
              await db.rawInsert('''insert into $databaseTableNameJDII(
        $databaseNomeCompletoResponsavel, 
        $databaseDiaPagamento, 
        $databaseTelefone, 
        $databaseNomeCompletoAluno,
        $databaseTurma,
        $databaseMesJaneiro,
        $databaseMesFevereiro,
        $databaseMesMarco,
        $databaseMesAbril,
        $databaseMesMaio,
        $databaseMesJunho,
        $databaseMesJulho,
        $databaseMesAgosto,
        $databaseMesSetembro,
        $databaseMesOutubro,
        $databaseMesNovembro,
        $databaseMesDezembro) 
        VALUES(
          '${banco.nomeResponsavel}', 
          '${banco.diaPagamento}', 
         '${banco.telefone}', 
          '${banco.nomeAluno}',
          '${banco.turma}',
          '0', '0', '0',
          '0', '0', '0',
          '0', '0', '0',
          '0', '0', '0');''');
          break;
      }
    } catch (ex) {
      return;
    }
  }
// #endregion

}
