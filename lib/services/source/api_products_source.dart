import 'dart:convert';

import 'package:furnitures_app/models/product.dart';
import 'package:furnitures_app/services/endpoints.dart';
import 'package:http/http.dart' as http;


class ApiProductsSource {

  Future<List<Product>> getProducts() async {
    try {
      final apiUrl = Uri.parse(FurnitureEndPoints.productsEndPoint);

      final response = await http.get(apiUrl);

      final responseBody = json.decode(response.body) as List;

      List<Product> products = responseBody.map((product) => Product.fromJson(product)).toList();
      return products;

    } catch (e) {
      throw Exception('Failed to load');
    }
  }
}
