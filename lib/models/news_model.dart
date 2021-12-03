class BeritaModels {
  int? id;
  String? judulBerita, isiBerita, tanggalTerbit, penerbit;

  BeritaModels({
    required this.id,
    required this.judulBerita,
    required this.isiBerita,
    required this.tanggalTerbit,
    required this.penerbit,
  });

  factory BeritaModels.fromJson(Map<String, dynamic> json) {
    return BeritaModels(
        id: json['id'],
        judulBerita: json['judul_berita'],
        isiBerita: json['isi_berita'],
        tanggalTerbit: json['tanggal_terbit'],
        penerbit: json['penerbit']);
  }
}
