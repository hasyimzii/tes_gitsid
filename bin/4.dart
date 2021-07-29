import 'dart:io';

// soal 4
void main() {
  print("Masukkan Kata/Kalimat");
  final input = stdin.readLineSync();
  String result = input!.split('').reversed.join('');
  print(result);
}
