import 'package:flutter/material.dart';

class Itemmodel {
  String name;
  String image;
  String brand;
  String price;
  String desc;

  Itemmodel(
      {required this.name,
      required this.price,
      required this.image,
      required this.brand,
      required this.desc});
}

var Laptop = [
  Itemmodel(
    name: 'Asus A416',
    price: 'Rp. 7.500.000',
    image: 'https://dlcdnwebimgs.asus.com/gain/e6ed0c2a-c1e7-4b78-b835-6e1d6d4f2e76/',
    brand: 'Asus',
    desc: 'Laptop ASUS dengan spesifikasi unggulan.'
  ),
  Itemmodel(
    name: 'Lenovo IdeaPad 3',
    price: 'Rp. 6.200.000',
    image: 'https://www.lenovo.com/medias/lenovo-laptop-ideapad-3-gen-6-15-amd-subseries-gallery-1.png?context=bWFzdGVyfHJvb3R8MTY4MjcwfGltYWdlL3BuZ3xoNjUvaDg5LzExMzQ2NTE2NDc1OTM0LnBuZ3wxMjA2MmQ0NTZmZTA0Njk4YWJiYzQ0NzhkMTE5MzBkYmE3MDNjM2RiOTQ5YjJhOTA2NzU3NmY2MTc4MDVlOTZj',
    brand: 'Lenovo',
    desc: 'Laptop Lenovo yang handal.'
  ),
  Itemmodel(
    name: 'Macbook Air M1',
    price: 'Rp. 12.000.000',
    image: 'https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP825/macbookair.png',
    brand: 'Apple',
    desc: 'Laptop Apple dengan desain elegan.'
  ),
  Itemmodel(
    name: 'Vivobook 14 Pro',
    price: 'Rp. 9.599.000',
    image: 'https://dlcdnwebimgs.asus.com/gain/3ac8c171-43e8-40af-8bb2-0a488a4d93cc/',
    brand: 'Asus',
    desc: 'Didukung oleh Prosesor Mobile AMD Ryzen™ 7 5800H terbaru dengan grafis AMD Radeon™ dan sistem pendingin kipas ganda, dan menampilkan WiFi 6 ultracepat, Vivobook Pro 14 OLED yang sangat bergaya memungkinkan Anda mencapai potensi sejati Anda.  Didukung oleh AMD Ryzen™ 5000 Series Mobile Processors with Radeon™ Graphics dan sistem pendingin kipas ganda, dan menampilkan WiFi 6 ultracepat, Vivobook Pro 14 OLED yang sangat bergaya memungkinkan Anda mencapai potensi sejati Anda.'
  ),
  Itemmodel(
    name: 'ASUS Zenbook 15',
    price: 'Rp. 33.599.000',
    image: 'https://dlcdnwebimgs.asus.com/gain/2364f846-1f4b-4dfc-9779-1e0ec92a7a43/',
    brand: 'Asus',
    desc: 'Laptop Asus dengan harga terjangkau.'
  ),
  Itemmodel(
    name: 'Spectre x360',
    price: 'Rp. 27.999.000',
    image: 'https://id-media.apjonlinecdn.com/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/7/M/7M4V7PA-5_T1685348058.png',
    brand: 'HP',
    desc: 'Laptop HP dengan harga terjangkau.'
  ),
  Itemmodel(
    name: 'IdeaPad Gaming 3',
    price: 'Rp. 18.800.000',
    image: 'https://www.lenovo.com/medias/Gaming-3-AMD-15-88IPG301588-725x515.png?context=bWFzdGVyfHJvb3R8NjQ0MDF8aW1hZ2UvcG5nfGhlMS9oYTAvMTE3OTA0NjY4MDk4ODYucG5nfGEyYzE3OTliYzk1MjkyMWIyMmNiMjMwYmRjODI0NGZkNjg2Y2I5MzUwMzEzNjAyYTc4OWUzOGIwZjEyMTA3YjQ',
    brand: 'Lenovo',
    desc: 'Laptop Lenovo dengan harga terjangkau.'
  ),
  Itemmodel(
    name: 'Acer Nitro 5',
    price: 'Rp. 11.800.000',
    image: 'https://cdn.siplah.pesonaedu.id/uploads/f3f7a947492beafd970f1d58839893a08d01d97f3c99ece020ecb20ba5ecab66/114401/image.png',
    brand: 'Acer',
    desc: 'Laptop Acer dengan harga terjangkau.'
  ),
  Itemmodel(
    name: 'Acer Nitro 5',
    price: 'Rp. 11.800.000',
    image: 'https://cdn.siplah.pesonaedu.id/uploads/f3f7a947492beafd970f1d58839893a08d01d97f3c99ece020ecb20ba5ecab66/114401/image.png',
    brand: 'Acer',
    desc: 'Laptop Acer dengan harga terjangkau.'
  ),
  Itemmodel(
    name: 'Acer Nitro 5',
    price: 'Rp. 11.800.000',
    image: 'https://cdn.siplah.pesonaedu.id/uploads/f3f7a947492beafd970f1d58839893a08d01d97f3c99ece020ecb20ba5ecab66/114401/image.png',
    brand: 'Acer',
    desc: 'Laptop Acer dengan harga terjangkau.'
  ),
];
