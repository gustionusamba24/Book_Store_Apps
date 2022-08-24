class NewBookModel {
  String image;

  NewBookModel(this.image);
}

List<NewBookModel> newBooks =
    newBookData.map((item) => NewBookModel(item['image'])).toList();

var newBookData = [
  {"image": "assets/images/flutter.png"},
  {"image": "assets/images/golang.png"},
  {"image": "assets/images/flutter.png"},
  {"image": "assets/images/golang.png"},
  {"image": "assets/images/flutter.png"},
  {"image": "assets/images/golang.png"},
  {"image": "assets/images/flutter.png"},
  {"image": "assets/images/golang.png"},
];
