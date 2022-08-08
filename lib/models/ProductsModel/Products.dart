class GetProducts {
  int? status;
  String? message;
  List<Products>? products;

  GetProducts({this.status, this.message, this.products});

  GetProducts.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
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
  String? productSpecs;
  String? productDesc;
  String? productImage;
  String? dateCreated;

  Products(
      {this.id,
      this.productId,
      this.productName,
      this.productSpecs,
      this.productDesc,
      this.productImage,
      this.dateCreated});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    productName = json['product_name'];
    productSpecs = json['product_specs'];
    productDesc = json['product_desc'];
    productImage = json['product_image'];
    dateCreated = json['date_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['product_name'] = this.productName;
    data['product_specs'] = this.productSpecs;
    data['product_desc'] = this.productDesc;
    data['product_image'] = this.productImage;
    data['date_created'] = this.dateCreated;
    return data;
  }
}
