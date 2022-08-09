import 'package:flutter/material.dart';
import '/screens/add_device/product_specs.dart';
import '/models/ProductsModel/Products.dart';

class ProductsList extends StatefulWidget {
  final getProducts;

  const ProductsList({Key? key, required this.getProducts}) : super(key: key);

  @override
  State<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5), // if you need this
              side: BorderSide(
                color: Colors.grey.withOpacity(.2),
                width: 1,
              ),
            ),
            child: ListTile(
              title: Text(widget.getProducts.productName),
              subtitle: Text(widget.getProducts.productDesc),
              trailing: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return ProductSpecs(
                        product: widget.getProducts,
                      );
                    })));
                  },
                  child: Icon(Icons.add)),
              leading: Image.network(widget.getProducts.productImage),
            )),
      ],
    );
  }
}
