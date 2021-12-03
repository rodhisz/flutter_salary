class ContentModels {
  int? id;
  String? judulKonten, isiKonten, tanggalTerbit, penerbit;

  ContentModels({
    required this.id,
    required this.judulKonten,
    required this.isiKonten,
    required this.tanggalTerbit,
    required this.penerbit,
  });

  factory ContentModels.fromJson(Map<String, dynamic> json) {
    return ContentModels(
        id: json['id'],
        judulKonten: json['judul_konten'],
        isiKonten: json['isi_konten'],
        tanggalTerbit: json['tanggal_terbit'],
        penerbit: json['penerbit']);
  }
}
