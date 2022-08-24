import 'package:book_store_apps/constants/constant_color.dart';
import 'package:book_store_apps/models/newbook_model.dart';
import 'package:book_store_apps/models/popularbook_model.dart';
import 'package:book_store_apps/screens/selected_book_screen.dart';
import 'package:book_store_apps/widgets/custom_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hi, Gustio",
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: greyColor,
                      ),
                    ),
                    Text(
                      "Discover Latest Books",
                      style: GoogleFonts.openSans(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 25, right: 25, top: 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: lightGreyColor,
                ),
                child: Stack(
                  children: <Widget>[
                    TextField(
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                        color: blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 19, right: 50, bottom: 8),
                        border: InputBorder.none,
                        hintText: "Search Book",
                        hintStyle: GoogleFonts.openSans(
                            fontSize: 12,
                            color: greyColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: SvgPicture.asset(
                          "assets/icons/background_search.svg"),
                    ),
                    Positioned(
                      top: 8,
                      right: 9,
                      child: SvgPicture.asset(
                          "assets/icons/icon_search_white.svg"),
                    ),
                  ],
                ),
              ),
              Container(
                height: 25,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.only(left: 25),
                child: DefaultTabController(
                  length: 3,
                  child: TabBar(
                    labelPadding: EdgeInsets.all(0),
                    indicatorPadding: EdgeInsets.all(0),
                    isScrollable: true,
                    labelColor: secondaryColor,
                    unselectedLabelColor: greyColor,
                    labelStyle: GoogleFonts.openSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    unselectedLabelStyle: GoogleFonts.openSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    indicator: RoundedRectangleTabIndicator(
                      weight: 2,
                      width: 10,
                      color: secondaryColor,
                    ),
                    tabs: [
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 23),
                          child: Text("New"),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 23),
                          child: Text("Trending"),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: EdgeInsets.only(right: 23),
                          child: Text("Best Seller"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 21),
                height: 210,
                child: ListView.builder(
                  padding: EdgeInsets.only(left: 25, right: 6),
                  itemCount: newBooks.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 19),
                      height: 210,
                      width: 153,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor,
                        image: DecorationImage(
                          image: AssetImage(newBooks[index].image),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Popular",
                      style: GoogleFonts.openSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: populars.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      print("Hai Bro");
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectedBookScreen(
                              popularBookModel: populars[index]),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 19),
                      height: 81,
                      width: MediaQuery.of(context).size.width - 50,
                      color: backgroundColor,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 81,
                            width: 62,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(populars[index].image),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 21,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                populars[index].title,
                                style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: blackColor,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                populars[index].author,
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Rp ${populars[index].price}",
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
