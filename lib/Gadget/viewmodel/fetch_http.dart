import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_helloworld/Gadget/model/product.dart';

class ApiFetch {
  final String apiUrl;

  ApiFetch({this.apiUrl = 'https://carigadget-f3594-default-rtdb.asia-southeast1.firebasedatabase.app/products.json'});

  Future<List<Gadget>> getapiData() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Gadget.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}


