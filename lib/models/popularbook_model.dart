import 'package:book_store_apps/constants/constant_color.dart';

class PopularBookModel {
  String title, author, price, image, description;

  PopularBookModel(
      this.title, this.author, this.price, this.image, this.description);
}

List<PopularBookModel> populars = popularBookData
    .map((item) => PopularBookModel(item['title'], item['author'],
        item['price'], item['image'], item['description']))
    .toList();

var popularBookData = [
  {
    "title": "Koleksi Program Web Java",
    "author": "Ir. Yuniar Supardi",
    "price": "50.000",
    "image": "assets/images/java.jpg",
    "description":
        "It covers all the fundamentals of Java, followed by tests and puzzles to test your knowledge. You will also find lots of Q&As from professional Java programmers who give insights related to issues most beginners face. Best of all, it is written in a clear, crisp, and simple style for easy learning.",
  },
  {
    "title": "Javascript Close & Closure",
    "author": "Kyle Simpson",
    "price": "80.000",
    "image": "assets/images/js.jpg",
    "description":
        "No matter how much experience you have with JavaScript, odds are you don’t fully understand the language. This concise yet in-depth guide takes you inside scope and closures, two core concepts you need to know to become a more efficient and effective JavaScript programmer. You’ll learn how and why they work, and how an understanding of closures can be a powerful part of your development skillset.",
  },
  {
    "title": "Python For Beginners",
    "author": "Denny Novikov",
    "price": "100.000",
    "image": "assets/images/python.jpg",
    "description":
        "This is a beginner's guide so I am going to cover all the basics you need to get started with Python programming.If you are already experienced in Python coding this guidebook will help you to review all the basics in a best and specific technical way!Python is widely seen by industry experts as a great first programming language when learning to code. There are a variety of jobs that one can get focusing exclusively on Python development. Do you want to be a part of the Python programmers community?",
  },
];
