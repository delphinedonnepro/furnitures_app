import 'package:flutter/material.dart';
import 'package:furnitures_app/design_system/title_text.dart';
import 'package:furnitures_app/design_system/waiting_progress_indicator.dart';
import 'package:furnitures_app/services/source/api_categories_source.dart';
import 'package:furnitures_app/services/source/api_products_source.dart';
import 'package:furnitures_app/size_config.dart';

import 'categories.dart';
import 'recommond_products.dart';

class Body extends StatelessWidget {
  Body({super.key});

  final ApiProductsSource _apiProductsSource = ApiProductsSource();
  final ApiCategoriesSource _apiCategoriesSource = ApiCategoriesSource();

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(defaultSize * 2), //20
              child: const TitleText(
                title: "Browse by Categories",
              ),
            ),
            FutureBuilder(
              future: _apiCategoriesSource.getCategories(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const AlertDialog();
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const WaitingProgressIndicator();
                }
                return snapshot.hasData && snapshot.data != null
                    ? Categories(categories: snapshot.data!)
                    : Center(child: Image.asset("assets/gif/ripple.gif"));
              },
            ),
            const Divider(height: 5),
            const Padding(
              padding: EdgeInsets.all(20),
              child: TitleText(title: "Recommands For You"),
            ),
            FutureBuilder(
              future: _apiProductsSource.getProducts(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(child: Text("Failed to load"));
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const WaitingProgressIndicator();
                }
                return snapshot.hasData && snapshot.data != null
                    ? RecommandProducts(products: snapshot.data!)
                    : Center(child: Image.asset('assets/gif/ripple.gif', width: 10));
              },
            ),
          ],
        ),
      ),
    );
  }
}
