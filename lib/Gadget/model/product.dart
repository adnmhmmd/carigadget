class Gadget {
  final dynamic id;
  final String imgUrl;
  final String name;
  final String category;
  final String capacity;
  final dynamic price;
  final String screen;
  final String color;
  final String ram;
  final dynamic year;

  Gadget({
    required this.capacity, 
    required this.screen,
    required this.color,
    required this.ram,
    required this.year,
    required this.id,
    required this.imgUrl,
    required this.name,
    required this.category,
    required this.price,
  });

  factory Gadget.fromJson(Map<String, dynamic> json) {
    return Gadget(
      id: json['id'],
      imgUrl: json['image'],
      capacity: json['capacity'],
      name: json['name'],
      category: json['category'],
      price: json['price'],
      screen: json['screen'],
      color: json['color'],
      ram: json['ram'],
      year: json['year'],
    );
  }
}
