import 'dart:io';

void main() {
  rate();
  choice();
}

dynamic rate() {
  print('Курс на сегодня');
  print('Доллар США:83.0 ');
  print('Евро: 82.2');
  print("Рубль: 1.3250");
  print("Тенге: 0.1150");
}

choice() {
  print("1) Xaтите обменять другую валюту на сом");
  print("2) Xaтите обменять сом на другую валюту");
  print("Ввод:");
  int? a = int.parse(stdin.readLineSync()!);
  if (a == 1) {
    funcOne();
  } else if (a == 2) {
    funcTwo();
  }
}

funcOne() {
  print('EUR');
  print('USD');
  print('RUB');
  print('KZT');
  print("Выберите валюту: ");
  var arr = stdin.readLineSync();
  if (arr == 'EUR') {
    eur();
  } else if (arr == 'USD') {
    usd();
  } else if (arr == 'RUB') {
    rub();
  } else if (arr == 'KZT') {
    kzt();
  } else {
    print('error');
  }
}

funcTwo() {
  print("Сколько сомов вы хотите обменять?");
  print('Ввод:');
  int? som = int.parse(stdin.readLineSync()!);
  print('На какую волюту хотите обменять?');
  print('EUR');
  print('USD');
  print('RUB');
  print('KZT');
  print("Выберите валюту: ");
  var arr = stdin.readLineSync();
  if (arr == 'EUR') {
    var one = 82.2;
    var a = som / one;
    print('обмен:${som} сом = ${a} EUR');
  } else if (arr == 'USD') {
    var one = 83;
    var a = som / one;
    print('обмен:${som} сом = ${a} USD');
  } else if (arr == 'RUB') {
    var one = 1.3250;
    var a = som / one;
    print('обмен:${som} сом = ${a} RUB');
  } else if (arr == 'KZT') {
    var one = 0.1150;
    var a = som / one;
    print('обмен:${som} сом = ${a} KZT');
  } else {
    print('error');
  }
}


eur() {
  print("Сколько EUR вы хотите купить?");
  print('Ввод:');
  var one = 82.2;
  int? sum = int.parse(stdin.readLineSync()!);
  var arr = sum * one;
  print('обмен: ${arr} сом на ${sum} EUR');
}

usd() {
  print("Сколько USD вы хотите купить?");
  print('Ввод:');
  var one = 83.0;
  int? sum = int.parse(stdin.readLineSync()!);
  var arr = sum * one;
  print('обмен: ${arr} сом на ${sum} USD');
}

rub() {
  print("Сколько RUB вы хотите купить?");
  print('Ввод:');
  var one = 1.3250;
  int? sum = int.parse(stdin.readLineSync()!);
  var arr = sum * one;
  print('обмен: ${arr} сом на ${sum} RUB');
}

kzt() {
  print("Сколько KZT вы хотите купить?");
  print('Ввод:');
  var one = 0.1150;
  int? sum = int.parse(stdin.readLineSync()!);
  var arr = sum * one;
  print('обмен: ${arr} сом на ${sum} KZT');
}
