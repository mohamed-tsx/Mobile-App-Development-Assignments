class thing {
  String? name;
  int? unitPrice;
  num? totalPrice;
  String? status;

  thing(String? name, int? unitPrice, int? totalPrice, String? status) {
    this.name = name;
    this.unitPrice = unitPrice;
    this.totalPrice = totalPrice;
    this.status = status;
  }
}

void main() {
  int? unitPrice = 10;
  int? totalPrice;
  String? status;

  var unitPriceChecker =
      () => {(unitPrice > 0) ? status = "In stock" : status = "Out of stock"};

  var totalPric =
      () => {(unitPrice > 0) ? totalPrice = unitPrice * 10 : totalPrice = 0};
  totalPric();
  unitPriceChecker();
  thing iphone = new thing("Mouse", unitPrice, totalPrice, status);
  thing mouse = new thing("Iphone", unitPrice, totalPrice, status);

  print("Name: ${iphone.name}");
  print("Unit Price: ${iphone.unitPrice}");
  print("Total Price: ${iphone.totalPrice}");
  print("Status : ${iphone.status}");

  print("Mouse Name: ${mouse.name}");
  print("Mouse Unit Price: ${mouse.unitPrice}");
  print("Mouse Total Price: ${mouse.totalPrice}");
  print("Mouse Status : ${mouse.status}");
}
