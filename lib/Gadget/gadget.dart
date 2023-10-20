import 'package:flutter/material.dart';
import 'package:flutter_helloworld/Gadget/itemmodel.dart';
import 'package:flutter_helloworld/Gadget/productdetail.dart';
import 'package:flutter_helloworld/Gadget/seemore.dart';
import 'package:flutter_helloworld/smoothpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final Itemmodel = Laptop;

  @override
  Widget build(BuildContext context) {
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
          Icon(Icons.search),
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
                    // Your pages go here
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/originals/f6/c3/2a/f6c32a33afd1d019caefd1ceeac93010.png'),
                              fit: BoxFit.cover),
                          // color: const Color.fromARGB(255, 33, 243, 40),
                          borderRadius: BorderRadius.circular(12)),
                      // Add your content for the first page
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn2.f-cdn.com/contestentries/1414523/974321/5b9b47a565e42_thumb900.jpg'),
                              fit: BoxFit.cover),
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(12)),
                      // Add your content for the second page
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.evetech.co.za/repository/ProductImages/lenovo-intel-gaming-laptops-banner-980px-v1.jpg'),
                              fit: BoxFit.cover),
                          // color: const Color.fromARGB(255, 243, 79, 33),
                          borderRadius: BorderRadius.circular(12)),
                      // Add your content for the third page
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
                    Container(
                      margin: EdgeInsets.only(right: 12, left: 12),
                      width: 120, padding: EdgeInsets.symmetric(horizontal: 12),
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
                                'https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP825/macbookair_2x.png'),
                          ),
                          Text(
                            'Laptop',
                            style:
                                GoogleFonts.roboto(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
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
                    Container(
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
                      onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return SeeMore();
                            },
                          ));
                      },
                      child: Text(
                        'See All',
                        style: GoogleFonts.roboto(
                            color: const Color.fromARGB(255, 121, 121, 121),
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 12, left: 12, top: 4),
                height: 184,
                width: double.infinity,
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: 2, // Number of items in the grid
                    itemBuilder: (BuildContext context, int index) {
                      // Create and return grid items here
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return ProductDetail(
                                Laptop: Laptop[index],
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
                                          NetworkImage(Laptop[index].image))),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(right: 12, left: 12, top: 16),
                              child: Row(
                                children: [
                                  Text(
                                    Laptop[index].name,
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(right: 12, left: 12, top: 2),
                              child: Row(
                                children: [
                                  Text(
                                    Laptop[index].brand,
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
                                    Laptop[index].price,
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Color.fromARGB(255, 0, 0, 0)),
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
                                          style:
                                              GoogleFonts.roboto(fontSize: 12),
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
                    }),
              ),
              Container(
                margin: EdgeInsets.only(top: 4),
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 40,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Limited Edition',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 41, 112)),
                    ),
                    Text(
                      'See All',
                      style: GoogleFonts.roboto(
                          color: const Color.fromARGB(255, 121, 121, 121),
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 12, left: 12, top: 4, bottom: 8),
                height: 184, // Adjust the height as needed
                width: double.infinity,
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: 2, // Number of items in the grid
                    itemBuilder: (BuildContext context, int index) {
                      // Create and return grid items here
                      return Container(
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
                            // color: Colors.amber,
                            child: Image.network(
                                'https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP825/macbookair_2x.png'),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(right: 12, left: 12, top: 16),
                            child: Row(
                              children: [
                                Text(
                                  'MacBook Air M1',
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(right: 12, left: 12, top: 2),
                            child: Row(
                              children: [
                                Text(
                                  'Apple',
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rp.12.999.000',
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star_rate_rounded,
                                        size: 15,
                                      ),
                                      Text(
                                        '5.0',
                                        style: GoogleFonts.roboto(fontSize: 12),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ]),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
