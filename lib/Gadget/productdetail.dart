import 'package:flutter/material.dart';
import 'package:flutter_helloworld/Gadget/gadget.dart';
import 'package:flutter_helloworld/Gadget/itemmodel.dart';
import 'package:flutter_helloworld/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:button_navigation_bar/button_navigation_bar.dart';

class ProductDetail extends StatelessWidget {
  final Itemmodel Laptop;

  ProductDetail({required this.Laptop});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
        child: SingleChildScrollView(
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
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return HomeScreen();
                                },
                              ));
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
                      child: Image.network(Laptop.image),
                    )
                  ],
                ),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 24),
                margin: EdgeInsets.only(top: 16),
                // color: Colors.amber,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                Laptop.name,
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w800, fontSize: 20),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                Laptop.brand,
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.grey),
                              ),
                            ),
                          ]),
                      Text(
                        Laptop.price,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize: 22,
                            color: Color.fromARGB(255, 53, 81, 238)),
                      ),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 36),
                // padding: EdgeInsets.symmetric(horizontal: 24),
                height: 80,
                decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 234, 239, 255),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Variant',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: const Color.fromARGB(255, 53, 81, 238)),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Container(
                        margin: EdgeInsets.only(top: 8),
                        height: 40,
                        // color: Colors.amber,
                        width: double.infinity,
                        // margin: EdgeInsets.only(top: 20),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3, // Ganti dengan jumlah item yang sesuai
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(right: 4, left: 16),
                              width: 100,
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 234, 239, 255),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '8/128GB',
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
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
                        height: 24,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Description',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: const Color.fromARGB(255, 53, 81, 238)),
                          ),
                        ),
                      ),
                      Container(
                        // height: 96,
                        width: double.infinity,
                        // color: Colors.amber,
                        child: Text(
                          Laptop.desc,
                          style: GoogleFonts.roboto(
                              color: Colors.grey, fontSize: 16),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
          
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen(),
              ),
            );
          },
        ),
          ],
        ),
      ),
);
  }
}
