import 'dart:convert';

import 'package:furnitures_app/models/category.dart';
import 'package:furnitures_app/services/endpoints.dart';
import 'package:http/http.dart' as http;

class ApiCategoriesSource {
  Future<List<Category>> getCategories() async {
    try {
      final apiUrl = Uri.parse(FurnitureEndPoints.categoriesEndPoint);

      final response = await http.get(apiUrl);

      final responseBody = json.decode(response.body) as List;

      List<Category> categories = responseBody.map((data) => Category.fromJson(data)).toList();
      return categories;

    } catch (e) {
      throw Exception('Failed to load');
    }
  }
}
