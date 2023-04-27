import 'dart:convert';

import 'package:furnitures_app/models/product.dart';
import 'package:furnitures_app/services/endpoints.dart';
import 'package:http/http.dart' as http;


class ApiProductsSource {

   Future<List<Product>> getProducts() async {
    try {
     // todo aller chercher les produits à l'aide d'une requête vers l'API

    } catch (e) {
      throw Exception('Failed to load');
    }
  }
}
