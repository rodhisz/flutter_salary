import 'package:flutter/material.dart';
import 'package:flutter_salary/models/konten_model.dart';
import 'package:flutter_salary/services/konten_service.dart';

class ContentProvider extends ChangeNotifier {
  List<ContentModels>? _listKonten;

  List<ContentModels> get kontenModel => _listKonten!;

  set kontenModel(List<ContentModels> listKonten) {
    _listKonten = listKonten;
    notifyListeners();
  }

  Future<List<ContentModels>> getAllkonten() async {
    var data = await ContentService().getAllkonten();
    _listKonten = data;
    return _listKonten!;
  }
}
