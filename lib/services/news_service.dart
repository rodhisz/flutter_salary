import 'dart:convert';

import 'package:flutter_salary/models/news_model.dart';
import 'package:http/http.dart' as http;

class BeritaService {
  String baseUrl = 'https://bootcamp.jagoantech.com/api';

  Future<List<BeritaModels>> getAllberita() async {
    Uri url = Uri.parse('$baseUrl/berita');
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var result = data['data'] as List;
      List<BeritaModels> list =
          result.map((json) => BeritaModels.fromJson(json)).toList();

      return list;
    } else {
      throw Exception('Gagal Memuat Berita');
    }
  }
}
