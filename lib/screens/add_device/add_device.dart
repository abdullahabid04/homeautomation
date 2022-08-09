import 'package:flutter/material.dart';
import '/screens/add_device/device.dart';
import '/models/ProductsModel/Products.dart';
import '/api_calls/getproducts_api.dart';

class DeviceAdd extends StatefulWidget {
  const DeviceAdd({Key? key}) : super(key: key);

  @override
  State<DeviceAdd> createState() => _DeviceAddState();
}

class _DeviceAddState extends State<DeviceAdd> {
  var products = [];

  all_products() async {
    GetProductsAPIService getProductsAPIService = GetProductsAPIService();

    await getProductsAPIService.getallproducts().then((value) {
      if (value != null) {
        if (value.status == 1) {
          setState(() {
            products = value.products!;
          });
        }
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    all_products();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add device"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: ((context, index) {
            return ProductsList(
              getProducts: products[index],
            );
          })),
    );
  }
}
