import 'dart:io';

// soal 2
void main() {
  validate (email) {
    String start = email[0];
    var endSplit = email[1].split(".");
    String mid = endSplit[0];
    var end = endSplit.removeAt(0);

    // cek panjang karakter
    if (start.length <= 20) {
      // cek domain .co.id
      if (endSplit[0] == "co" && endSplit[1] == "id") {
        return "Email sudah sesuai!";
      }
      // cek domain .id
      else if (endSplit[0] == "id") {
        return "Email sudah sesuai!";
      }
      else {
        return "Domain hanya bisa .id atau .co.id";
      }
    }
    else {
      return "Maksimum karakter hanya 20";
    }
  }

  print("Masukkan Email");
  final input = stdin.readLineSync();
  var check = input?.contains('@');

  // cek @
  if (check == true) {
    var result = input!.split("@");
    print(validate(result));
  }
  else {
    print("Email harus menggunakan @");
  }
}
