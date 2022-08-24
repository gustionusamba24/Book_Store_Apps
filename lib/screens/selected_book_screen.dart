import 'package:book_store_apps/constants/constant_color.dart';
import 'package:book_store_apps/models/popularbook_model.dart';
import 'package:book_store_apps/screens/home_screen.dart';
import 'package:book_store_apps/widgets/custom_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedBookScreen extends StatelessWidget {
  final PopularBookModel popularBookModel;

  SelectedBookScreen({Key key, @required this.popularBookModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
        height: 49,
        color: Colors.transparent,
        child: FlatButton(
          color: secondaryColor,
          onPressed: () {},
          child: Text(
            "Buy Now",
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: whiteColor,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: primaryColor,
                expandedHeight: MediaQuery.of(context).size.height * 0.5,
                flexibleSpace: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: primaryColor,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 25,
                        top: 35,
                        child: GestureDetector(
                          onTap: (() {
                            Navigator.pushReplacementNamed(
                                context, "/homeScreen");
                          }),
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: whiteColor,
                            ),
                            child: SvgPicture.asset(
                                "assets/icons/icon_back_arrow.svg"),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 62),
                          width: 350,
                          height: 280,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(popularBookModel.image),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: EdgeInsets.only(top: 24, left: 25),
                      child: Text(
                        popularBookModel.title,
                        style: GoogleFonts.openSans(
                          fontSize: 27,
                          color: blackColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 7, left: 25),
                      child: Text(
                        popularBookModel.author,
                        style: GoogleFonts.openSans(
                          fontSize: 14,
                          color: greyColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 7, left: 25),
                      child: Row(
                        children: [
                          Text(
                            "Rp ",
                            style: GoogleFonts.openSans(
                              fontSize: 32,
                              color: secondaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            popularBookModel.price,
                            style: GoogleFonts.openSans(
                              fontSize: 32,
                              color: secondaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 28,
                      margin: EdgeInsets.only(top: 23, bottom: 36),
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
                            width: 30,
                            color: secondaryColor,
                          ),
                          tabs: [
                            Tab(
                              child: Container(
                                margin: EdgeInsets.only(right: 40),
                                child: Text("Description"),
                              ),
                            ),
                            Tab(
                              child: Container(
                                margin: EdgeInsets.only(right: 40),
                                child: Text("Reviews"),
                              ),
                            ),
                            Tab(
                              child: Container(
                                margin: EdgeInsets.only(right: 40),
                                child: Text("Related Book"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                      child: Text(
                        popularBookModel.description,
                        style: GoogleFonts.openSans(
                          fontSize: 12,
                          color: greyColor,
                          // letterSpacing: 0.5,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
