import 'package:flutter/material.dart';
import 'package:flutter_helloworld/Gadget/model/product.dart';
import 'package:flutter_helloworld/Gadget/viewmodel/fetch_http.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:button_navigation_bar/button_navigation_bar.dart';

class ProductDetail extends StatelessWidget {
  final Gadget Item;
  ApiFetch product = ApiFetch();

  ProductDetail({required this.Item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
        child: FutureBuilder(
          future: product.getapiData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 24),
                      height: 364,
                      width: double.infinity,
                      color: Color.fromARGB(255, 234, 239, 255),
                      // decoration: BoxDecoration(
                      //     color: Colors.amber,
                      //     borderRadius: BorderRadius.only()),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            height: 60,
                            decoration: BoxDecoration(
                                // color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(Icons.favorite_border_rounded)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 24),
                            height: 280,
                            child: Image.network(Item.imgUrl),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 52,
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      margin: EdgeInsets.only(top: 16),
                      // color: Colors.amber,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      Item.name,
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Realese ${Item.year.toString()}',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Colors.grey),
                                    ),
                                  ),
                                ]),
                            Text(
                              '\$${Item.price.toString()}',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 22,
                                  color: Color.fromARGB(255, 53, 81, 238)),
                            ),
                          ]),
                    ),
                    Container(
                      // height: 120,
                      // color: Colors.amber,
                      margin: EdgeInsets.only(top: 8),
                      // color: Colors.amber,
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 8),
                              height: 24,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Spesification',
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: const Color.fromARGB(
                                          255, 53, 81, 238)),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Column(children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Screen: ${Item.screen}',
                                      style: GoogleFonts.roboto(
                                          color: Colors.grey, fontSize: 16),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Capacity: ${Item.capacity}',
                                      style: GoogleFonts.roboto(
                                          color: Colors.grey, fontSize: 16),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'RAM: ${Item.ram}',
                                      style: GoogleFonts.roboto(
                                          color: Colors.grey, fontSize: 16),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: ButtonNavigationBar(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          children: [
            ButtonNavigationItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Add to cart",
              width: 356,
              height: 50,
              color: Color.fromARGB(255, 53, 81, 238),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
