// Target: simpan file ini dengan nama lib/latihan/latihan.dart

// 1. Buat class Mahasiswa dengan property nama, nim, ipk
class Mahasiswa {
  String nama;
  String nim;
  double ipk;

  Mahasiswa(this.nama, this.nim, this.ipk);
}

void main() {
  // 2. Buat List<Mahasiswa> berisi 3 data
  List<Mahasiswa> daftarMahasiswa = [
    Mahasiswa('Andi', '100231001', 3.2),
    Mahasiswa('Budi', '100231002', 3.9),
    Mahasiswa('Citra', '100231003', 3.6),
  ];

  // 3. Cari mahasiswa dengan ipk tertinggi
  Mahasiswa mahasiswaTerbaik = daftarMahasiswa[0];
  for (var mhs in daftarMahasiswa) {
    if (mhs.ipk > mahasiswaTerbaik.ipk) {
      mahasiswaTerbaik = mhs;
    }
  }

  // Bonus: Pakai switch expression untuk menentukan predikat (Memerlukan Dart 3+)
  String predikat = switch (mahasiswaTerbaik.ipk) {
    >= 3.51 => 'Cum Laude',
    >= 2.76 && <= 3.50 => 'Sangat Memuaskan',
    >= 2.00 && <= 2.75 => 'Memuaskan',
    _ => 'Cukup',
  };

  // 4. Print hasilnya dengan string interpolation
  print('Mahasiswa dengan IPK tertinggi adalah ${mahasiswaTerbaik.nama} (NIM: ${mahasiswaTerbaik.nim}) dengan IPK ${mahasiswaTerbaik.ipk}.');
  print('Predikat Kelulusan: $predikat');
}