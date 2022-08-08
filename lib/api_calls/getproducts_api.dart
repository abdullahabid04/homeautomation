import 'package:http/http.dart' as http;
import 'dart:convert';
import '/models/ProductsModel/Products.dart';

class GetProductsAPIService {
  Future<GetProducts> getallproducts() async {
    String url =
        "https://mypracticewebsite123.000webhostapp.com/api/getproducts";

    final response = await http.get(Uri.parse(url));
    //   if (response.statusCode == 200 || response.statusCode == 400) {
    return GetProducts.fromJson(
      json.decode(response.body),
    );
    //   } else {
    //     throw Exception('Failed to load data!');
    //   }
  }
}
