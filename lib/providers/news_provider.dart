import 'package:flutter/material.dart';
import 'package:flutter_salary/models/news_model.dart';
import 'package:flutter_salary/services/news_service.dart';

class BeritaProvider extends ChangeNotifier {
  List<BeritaModels>? _listBerita;

  List<BeritaModels> get BeritaModel => _listBerita!;

  set beritaModel(List<BeritaModels> listBerita) {
    _listBerita = listBerita;
    notifyListeners();
  }

  Future<List<BeritaModels>> getAllBerita() async {
    var data = await BeritaService().getAllberita();
    _listBerita = data;
    return _listBerita!;
  }
}
