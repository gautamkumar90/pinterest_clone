class Pin {
  final int id;
  final String image;
  final String photographer;

  Pin({required this.id, required this.image, required this.photographer});

  factory Pin.fromJson(Map<String, dynamic> json) {
    return Pin(
      id: json['id'],
      image: json['src']['medium'],
      photographer: json['photographer'],
    );
  }
}
