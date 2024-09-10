import 'dart:io';

void main() {
  int jumlahSemester, jumlahMatkul, totalSKS = 0;
  List<List<String>> matkul = [];
  List<List<int>> sks = [];
  List<List<String>> nilaiHuruf = [];
  List<int> sksSemester = [];
  List<double> nrSemester = [];
  double totalNR = 0;

  print('==============================================');
  print('\tProgram Menghitung IPK Mahasiswa');
  print('==============================================');

  stdout.write('Masukkan jumlah semester: ');
  jumlahSemester = int.parse(stdin.readLineSync()!);

  if (jumlahSemester < 2 || jumlahSemester > 14) {
    print('Jumlah semester salah!');
    return;
  } else {
    for (int i = 0; i < jumlahSemester; i++) {
      int jumlahNilai = 0;
      int jumlahSks = 0;

      stdout.write('Masukkan jumlah mata kuliah semester ${i + 1}: ');
      jumlahMatkul = int.parse(stdin.readLineSync()!);

      if (jumlahMatkul < 2) {
        print('Jumlah matakuliah kurang dari 2 setiap semester');
        return;
      } else {
        matkul.add([]);
        sks.add([]);
        nilaiHuruf.add([]);

        for (int j = 0; j < jumlahMatkul; j++) {
          stdout.write('Masukkan mata kuliah ke ${j + 1}\n');
          stdout.write('Masukkan nama matkul: ');
          matkul[i].add(stdin.readLineSync()!);

          stdout.write('Masukkan jumlah sks matkul: ');
          sks[i].add(int.parse(stdin.readLineSync()!));

          stdout.write('Masukkan nilai matkul: ');
          nilaiHuruf[i].add(stdin.readLineSync()!);

          print('--------------------------------------------');

          int nilai;
          switch (nilaiHuruf[i][j]) {
            case 'A':
              nilai = 4 * sks[i][j];
              break;
            case 'B':
              nilai = 3 * sks[i][j];
              break;
            case 'C':
              nilai = 2 * sks[i][j];
              break;
            case 'D':
              nilai = 1 * sks[i][j];
              break;
            case 'E':
              nilai = 0 * sks[i][j];
              break;
            default:
              print('Input salah!');
              return;
          }

          jumlahNilai += nilai;
          jumlahSks += sks[i][j];
        }

        if (jumlahSks > 24) {
          print('Jumlah SKS semester lebih dari 24');
          return;
        } else {
          sksSemester.add(jumlahSks);
          nrSemester.add(jumlahNilai / jumlahSks);
        }
      }
    }
  }

  print('==============================================');
  print('\t\tTranskrip Nilai');
  print('==============================================');
  for (int i = 0; i < jumlahSemester; i++) {
    print('\nHasil Semester${i + 1}:\n');
    print('${'Mata Kuliah'.padRight(12)}${'SKS'.padRight(12)}Nilai');
    for (int j = 0; j < matkul[i].length; j++) {
      print(
          '${matkul[i][j].padRight(12)}${sks[i][j].toString().padRight(12)}${nilaiHuruf[i][j]}');
    }
    print('\n\nSKS\t: ${sksSemester[i]}');
    print('NR\t: ${nrSemester[i].toStringAsFixed(2)}');
    totalSKS += sksSemester[i];
    totalNR += nrSemester[i];
    print('--------------------------------------------');
  }

  double ipk = totalNR / jumlahSemester;
  print('\nTotal SKS\t: $totalSKS');
  print('IPK\t\t: ${ipk.toStringAsFixed(2)}');
  print('==============================================');
}
