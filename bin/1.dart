import 'dart:io';

// soal 1
void main() {
  print("Masukkan Digit Angka");
  final input = stdin.readLineSync();
  int num = int.parse(input!);

  if (num % 3 == 0 && num % 5 == 0) {
    print("Hello World");
  }
  else if (num % 3 == 0) {
    print("Hello");
  }
  else if (num % 5 == 0) {
    print("World");
  }
  else {
    print("Inputan tidak habis dibagi 3 atau 5!");
  }
}
