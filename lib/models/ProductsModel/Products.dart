class GetProducts {
  List<Products>? products;

  GetProducts({this.products});

  GetProducts.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  String? id;
  String? productId;
  String? productName;
  String? productDesc;
  String? dateCreated;
  String? productSpecs;
  String? imageUrl;

  Products(
      {this.id,
      this.productId,
      this.productName,
      this.productDesc,
      this.dateCreated,
      this.productSpecs,
      this.imageUrl});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    productName = json['product_name'];
    productDesc = json['product_desc'];
    dateCreated = json['date_created'];
    productSpecs = json['product_specs'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['product_name'] = this.productName;
    data['product_desc'] = this.productDesc;
    data['date_created'] = this.dateCreated;
    data['product_specs'] = this.productSpecs;
    data['image_url'] = this.imageUrl;
    return data;
  }
}
