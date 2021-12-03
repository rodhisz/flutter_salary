import 'dart:convert';

import 'package:flutter_salary/models/konten_model.dart';
import 'package:http/http.dart' as http;

class ContentService {
  String baseUrl = 'https://bootcamp.jagoantech.com/api';

  Future<List<ContentModels>> getAllkonten() async {
    Uri url = Uri.parse('$baseUrl/konten');
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var result = data['data'] as List;
      List<ContentModels> list =
          result.map((json) => ContentModels.fromJson(json)).toList();

      return list;
    } else {
      throw Exception('Gagal Memuat Konten');
    }
  }
}
