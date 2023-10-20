import 'package:flutter/material.dart';
import 'package:flutter_helloworld/Gadget/gadget.dart';
import 'package:flutter_helloworld/Gadget/itemmodel.dart';
import 'package:flutter_helloworld/Gadget/productdetail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class SeeMore extends StatefulWidget {
  SeeMore({super.key});
  final List<String> items = [
    'Highest Price',
    'Lowest Price',
  ];
  String? selectedValue;

  final Itemmodel = Laptop;

  @override
  State<SeeMore> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SeeMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 24),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Color.fromARGB(255, 234, 239, 255)),
        child: SingleChildScrollView(
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
                    Text(
                      'Popular Product',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 41, 112)),
                    ),
                    Icon(Icons.shopping_cart_outlined)
                  ],
                ),
              ),
              Container(
                // height: 40,
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '10 Popular Product',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 90, 90, 90)),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'Sort By',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        items: widget.items
                            .map((String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ))
                            .toList(),
                        value: widget.selectedValue,
                        onChanged: (value) {
                          setState(() {
                            widget.selectedValue = value;
                          });
                        },
                        buttonStyleData: ButtonStyleData(
                          height: 28,
                          width: 120,
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: const Color.fromARGB(255, 90, 90, 90),
                            ),
                            color: const Color.fromARGB(255, 90, 90, 90),
                          ),
                          elevation: 2,
                        ),
                        iconStyleData: const IconStyleData(
                          icon: Icon(
                            Icons.arrow_drop_down,
                          ),
                          iconSize: 18,
                          iconEnabledColor: Color.fromARGB(255, 255, 255, 255),
                          iconDisabledColor: Colors.grey,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          maxHeight: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: const Color.fromARGB(255, 90, 90, 90),
                          ),
                          offset: const Offset(0, 0),
                          scrollbarTheme: ScrollbarThemeData(
                            radius: const Radius.circular(40),
                            thickness: MaterialStateProperty.all(6),
                            thumbVisibility: MaterialStateProperty.all(true),
                          ),
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          height: 40,
                          // padding: EdgeInsets.only(left: 14, right: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 12, left: 12, bottom: 8),
                width: double.infinity,
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: Laptop.length, // Number of items in the grid
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
            ],
          ),
        ),
      ),
    );
  }
}
