import 'package:dart_1/dart_1.dart' as dart_1;

void main(List<String> arguments) {
  print('Hello world: ${dart_1.calculate()}!');

  // Jobsheet 2
  for (int i = 20; i > 10; i--) {
    print('Nama saya Fulan, sekarang berumur ${i - 2}');
  }

  // Jobsheet 3
  // Praktikum 1: Menerapkan Control Flows ("if/else")
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }
  if (test == "test2") print("Test2 again");

  String test1 = "true";
  if (test1 == true) {
    print("Kebenaran");
  }

  // Praktikum 2: Menerapkan Perulangan "while" dan "do-while"
  int counter = 0;
  while (counter < 33) {
    print(counter);
    counter++;
  }
  do {
    print(counter);
    counter++;
  } while (counter < 77);

  // Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"
  for (int index = 10; index < 27; index++) {
    if (index == 21) {
      break;
    } else if (index > 1 && index < 7) {
      continue;
    } else {
      print(index);
    }
  }

  // Tugas Praktikum
  for (int i = 2; i <= 201; i++) {
    bool prima = true;
    for (int j = 2; j * j <= i; j++) {
      if (i % j == 0) {
        prima = false;
        break;
      }
    }
    if (prima) {
      print(i);
    }
  }
}
