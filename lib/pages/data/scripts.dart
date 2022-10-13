import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';
import 'constantes.dart';
import 'database.dart';
import 'temporary/modelo_de_impressao.dart';

class MyScripts {
  databaseScriptCreateMTI() {
    const String databaseScripCreateMTI = '''
      CREATE TABLE $databaseTableNameMTI($databaseID INTEGER PRIMARY KEY AUTOINCREMENT,
      $databaseNomeCompletoResponsavel TEXT,
      $databaseDiaPagamento INTEGER,
      $databaseTelefone INTEGER,
      $databaseNomeCompletoAluno TEXT,
      $databaseTurma TEXT,
      $databaseMesJaneiro INTEGER,
      $databaseMesFevereiro INTEGER,
      $databaseMesMarco INTEGER,
      $databaseMesAbril INTEGER,
      $databaseMesMaio INTEGER,
      $databaseMesJunho INTEGER,
      $databaseMesJulho INTEGER,
      $databaseMesAgosto INTEGER,
      $databaseMesSetembro INTEGER,
      $databaseMesOutubro INTEGER,
      $databaseMesNovembro INTEGER,
      $databaseMesDezembro INTEGER
    )''';
    return databaseScripCreateMTI;
  }

  databaseScriptCreateMTII() {
    const String databaseScripCreateMTII = '''
      CREATE TABLE $databaseTableNameMTII($databaseID INTEGER PRIMARY KEY AUTOINCREMENT,
      $databaseNomeCompletoResponsavel TEXT,
      $databaseDiaPagamento INTEGER,
      $databaseTelefone INTEGER,
      $databaseNomeCompletoAluno TEXT,
      $databaseTurma TEXT,
      $databaseMesJaneiro INTEGER,
      $databaseMesFevereiro INTEGER,
      $databaseMesMarco INTEGER,
      $databaseMesAbril INTEGER,
      $databaseMesMaio INTEGER,
      $databaseMesJunho INTEGER,
      $databaseMesJulho INTEGER,
      $databaseMesAgosto INTEGER,
      $databaseMesSetembro INTEGER,
      $databaseMesOutubro INTEGER,
      $databaseMesNovembro INTEGER,
      $databaseMesDezembro INTEGER
    )''';
    return databaseScripCreateMTII;
  }

  databaseScriptCreateJDI() {
    const String databaseScripCreateJDI = '''
      CREATE TABLE $databaseTableNameJDI($databaseID INTEGER PRIMARY KEY AUTOINCREMENT,
      $databaseNomeCompletoResponsavel TEXT,
      $databaseDiaPagamento INTEGER,
      $databaseTelefone INTEGER,
      $databaseNomeCompletoAluno TEXT,
      $databaseTurma TEXT,
      $databaseMesJaneiro INTEGER,
      $databaseMesFevereiro INTEGER,
      $databaseMesMarco INTEGER,
      $databaseMesAbril INTEGER,
      $databaseMesMaio INTEGER,
      $databaseMesJunho INTEGER,
      $databaseMesJulho INTEGER,
      $databaseMesAgosto INTEGER,
      $databaseMesSetembro INTEGER,
      $databaseMesOutubro INTEGER,
      $databaseMesNovembro INTEGER,
      $databaseMesDezembro INTEGER
    )''';
    return databaseScripCreateJDI;
  }

  databaseScriptCreateJDII() {
    const String databaseScriptCreateJDII = '''
      CREATE TABLE $databaseTableNameJDII($databaseID INTEGER PRIMARY KEY AUTOINCREMENT,
      $databaseNomeCompletoResponsavel TEXT,
      $databaseDiaPagamento INTEGER,
      $databaseTelefone INTEGER,
      $databaseNomeCompletoAluno TEXT,
      $databaseTurma TEXT,
      $databaseMesJaneiro INTEGER,
      $databaseMesFevereiro INTEGER,
      $databaseMesMarco INTEGER,
      $databaseMesAbril INTEGER,
      $databaseMesMaio INTEGER,
      $databaseMesJunho INTEGER,
      $databaseMesJulho INTEGER,
      $databaseMesAgosto INTEGER,
      $databaseMesSetembro INTEGER,
      $databaseMesOutubro INTEGER,
      $databaseMesNovembro INTEGER,
      $databaseMesDezembro INTEGER
    )''';
    return databaseScriptCreateJDII;
  }

  abrirWhatsApp({required telefone, required msg}) async {
    if (Platform.isAndroid) {
      final urlAndroid = Uri.parse(
          'whatsapp://send?phone=$telefone&text=${Uri.encodeFull(msg)}');
      if (await launchUrl(urlAndroid)) {
        debugPrint('Android Right !');
      }
    } else {
      final urlIos =
          Uri.parse('whatsapp://wa.me/$telefone/?text=${Uri.encodeFull(msg)}');
      if (await launchUrl(urlIos)) {
        debugPrint('Ios Right !');
      }
    }
  }
}

class GetterDatabase {
// #region get

  // Maternal I
  Future<List<ModeloDeImpressao>> getMaternalI() async {
    try {
      final Database db = await MyDataBase().getDatabase();

      final List<Map<String, dynamic>> userMap =
          await db.query(databaseTableNameMTI);

      return List.generate(userMap.length, (index) {
        return ModeloDeImpressao.fromMap(userMap[index]);
      });
    } catch (ex) {
      return List.empty();
    }
  }

  // Maternal II
  Future<List<ModeloDeImpressao>> getMaternalII() async {
    try {
      final Database db = await MyDataBase().getDatabase();

      final List<Map<String, dynamic>> userMap =
          await db.query(databaseTableNameMTII);

      return List.generate(userMap.length, (index) {
        return ModeloDeImpressao.fromMap(userMap[index]);
      });
    } catch (ex) {
      return List.empty();
    }
  }

  // Jardim I
  Future<List<ModeloDeImpressao>> getJardimI() async {
    try {
      final Database db = await MyDataBase().getDatabase();

      final List<Map<String, dynamic>> userMap =
          await db.query(databaseTableNameJDI);

      return List.generate(userMap.length, (index) {
        return ModeloDeImpressao.fromMap(userMap[index]);
      });
    } catch (ex) {
      return List.empty();
    }
  }

  // Jardim II
  Future<List<ModeloDeImpressao>> getJardimII() async {
    try {
      final Database db = await MyDataBase().getDatabase();

      final List<Map<String, dynamic>> userMap =
          await db.query(databaseTableNameJDII);

      return List.generate(userMap.length, (index) {
        return ModeloDeImpressao.fromMap(userMap[index]);
      });
    } catch (ex) {
      return List.empty();
    }
  }
// #endregion
}
