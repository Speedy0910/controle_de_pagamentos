import 'package:flutter/material.dart';

class Temas {
  corDeFundo() {
    return _corDeFundo;
  }

  corAppBar() {
    return _corAppBar;
  }

  corDeDestaque() {
    return _corDeDestaque;
  }

  corDosBotaos() {
    return _corDosBotaos;
  }

  styleLetras() {
    return _estiloDasLetras;
  }

  styleBotaos() {
    return _estiloDosBotaos;
  }

  styleTextoAppBar() {
    return _estiloTextoAppBar;
  }

  styleTitles() {
    return _estiloTitles;
  }

  styleSubTitles() {
    return _estiloSubTitles;
  }
}

var _corAppBar = const Color.fromARGB(255, 253, 173, 114);
var _corDeFundo = const Color.fromARGB(255, 198, 181, 167);
final _corDeDestaque = Colors.brown.shade400;
const _corDosBotaos = Colors.brown;

const _estiloDasLetras = TextStyle(
    fontFamily: 'Coming Soon',
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold);

const _estiloDosBotaos = TextStyle(
    fontFamily: 'Coming Soon',
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold);

const _estiloTextoAppBar = TextStyle(
    fontFamily: 'Coming Soon',
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.bold);

const _estiloTitles = TextStyle(
    fontFamily: 'Coming Soon',
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic);

const _estiloSubTitles = TextStyle(
    fontFamily: 'Coming Soon',
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic);