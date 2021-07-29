import 'dart:io';

// soal 3
void main() {
  convert (time) {
    var head = time.first.substring(0,2);
    var tail = time.last;
    if (tail == "AM") {
      if (head == "12") {
        return "00";
      }
      else {
        return head;
      }
    }
    else if (tail == "PM"){
      if (head == "12") {
        return head;
      }
      else {
        var headNum = int.parse(head);
        var headPM = headNum + 12;
        return headPM.toString();
      }
    }
  }

  print("Masukkan Waktu (XX:XX:XX AM/PM)");
  final input = stdin.readLineSync();
  var result = input!.split(" ");

  var head = convert(result);
  var mid = result.first.substring(2,5);

  print(head+mid);
}
