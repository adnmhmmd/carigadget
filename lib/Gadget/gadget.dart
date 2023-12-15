import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_helloworld/Gadget/pages/login.dart';
import 'package:flutter_helloworld/Gadget/productdetail.dart';
import 'package:flutter_helloworld/Gadget/seemoreAccessories.dart';
import 'package:flutter_helloworld/Gadget/seemorePhone.dart';
import 'package:flutter_helloworld/Gadget/seemoreTablet.dart';
import 'package:flutter_helloworld/Gadget/viewmodel/fetch_http.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_helloworld/Gadget/model/product.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });
  final ApiFetch products = ApiFetch();
  // final product = gad;
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final Gadget gadgett;
    final controller = PageController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 239, 255),
        elevation: 0,
        foregroundColor: Color.fromARGB(255, 63, 63, 63),
        leading: Icon(Icons.widgets_outlined),
        title: Container(
          width: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cari',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 41, 112)),
              ),
              Text(
                'Gadget',
                style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          InkWell(
              onTap: () {
                _auth.signOut();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              child: Icon(Icons.logout_rounded)),
          Padding(padding: EdgeInsets.only(right: 16))
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,

        // padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(12),
            color: Color.fromARGB(255, 234, 239, 255)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 160,
                margin:
                    EdgeInsets.only(top: 24, right: 12, left: 12, bottom: 24),
                decoration: BoxDecoration(
                  // color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: PageView(
                  controller: controller,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.soydemac.com/wp-content/uploads/2019/07/Suscripci%C3%B3n_Apple_Music_1_mes.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://shopee.co.id/inspirasi-shopee/wp-content/uploads/2021/04/APPLE-ANNIVERSARY-LP-HEADER.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://heartofcodes.com/wp-content/uploads/2018/07/oQvWyIL-2400x1300.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              SmoothPageIndicator(
                controller: controller,
                count: 3, // The number of pages in your PageView
                effect: ExpandingDotsEffect(
                    spacing: 4.0,
                    dotWidth: 8.0,
                    dotHeight: 8.0,
                    activeDotColor: const Color.fromARGB(
                        255, 0, 41, 112)), // Choose the effect you like
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(top: 20),
                // color: Colors.amber,
                // padding: EdgeInsets.symmetric(horizontal: 12),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return SeeMoreAccessories();
                          },
                        ));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 12, left: 12),
                        width: 160,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        // height: 20,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(12),
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              child: Image.network(
                                  'https://iqstoreindia.com/assets/images/watch-6/silver-aluminium-case-with-sport-band_clipped_rev_1.png'),
                            ),
                            Text(
                              'Accessories',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return SeeMorePhone();
                          },
                        ));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 12),
                        width: 120, padding: EdgeInsets.symmetric(horizontal: 12),
                        // height: 20,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              child: Image.network(
                                  'https://media.croma.com/image/upload/v1662703105/Croma%20Assets/Communication/Mobiles/Images/261963_oqrd6j.png'),
                            ),
                            Text(
                              'Phone',
                              style:
                                  GoogleFonts.roboto(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return SeeMoreTablet();
                          },
                        ));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 12),
                        width: 120, padding: EdgeInsets.symmetric(horizontal: 12),
                        // height: 20,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              child: Image.network(
                                  'https://assets.stickpng.com/images/61d4a70f8b51e20004664d4d.png'),
                            ),
                            Text(
                              'Tablet',
                              style:
                                  GoogleFonts.roboto(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 40,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Product',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 41, 112)),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        '    ',
                        style: GoogleFonts.roboto(
                            color: const Color.fromARGB(255, 121, 121, 121),
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 12, left: 12, top: 4, bottom: 8),
                // height: 184,
                width: double.infinity,
                child: FutureBuilder(
                  future: products.getapiData(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Number of columns in the grid
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                          ),
                          itemCount: snapshot
                              .data!.length, // Number of items in the grid
                          itemBuilder: (BuildContext context, int index) {
                            var product = snapshot.data![index];
                            // Create and return grid items here
                            return InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return ProductDetail(
                                      Item: product,
                                    );
                                  },
                                ));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 172, 172, 172)
                                          .withOpacity(0.7),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Column(children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    width: 140,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            // fit: BoxFit.cover,
                                            image:
                                                NetworkImage(product.imgUrl))),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        right: 12, left: 12, top: 16),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Text(
                                            product.name,
                                            style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        right: 12, left: 12, top: 2),
                                    child: Row(
                                      children: [
                                        Text(
                                          product.year.toString(),
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              color: const Color.fromARGB(
                                                  255, 131, 131, 131)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: 12,
                                      left: 12,
                                      top: 2,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$${product.price.toString()}',
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          child: Row(
                                            // crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star_rate_rounded,
                                                size: 15,
                                              ),
                                              Text(
                                                '5.0',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ]),
                              ),
                            );
                          });
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
