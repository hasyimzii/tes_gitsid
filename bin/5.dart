import 'dart:io';

// soal 5
void main() {
  palindrome (String text) {
    String start = text[0];
    String end = text.substring(text.length - 1);
    String cut = text.substring( 1, text.length - 1 );
    
    if (start == end) {
      if (text.length > 2) {
        return palindrome(cut);
      }
      else {
        return "Result True (karena termasuk palindrome)";
      }
    }
    else {
      return "Result False (karena bukan palindrome)";
    }
  }

  print("Masukkan Kata/Kalimat");
  final input = stdin.readLineSync();
  String result = input!.replaceAll(" ", "");
  print(palindrome(result));
}
