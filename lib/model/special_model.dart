class SpecialModel {
  int? id;
  String? title;
  String? price;
  String? image;

  SpecialModel({this.id, this.title, this.price, this.image});

  SpecialModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['image'] = this.image;
    return data;
  }
}
