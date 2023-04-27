import 'dart:convert';

import 'package:furnitures_app/models/category.dart';
import 'package:furnitures_app/services/endpoints.dart';
import 'package:http/http.dart' as http;

class ApiCategoriesSource {
  Future<List<Category>> getCategories() async {
    try {
     //todo faire un appel API pour aller chercher les catégories

    } catch (e) {
      throw Exception('Failed to load');
    }
  }
}
