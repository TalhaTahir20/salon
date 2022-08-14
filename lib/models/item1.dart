class ItemOne {
  String imageUrl;
  String brandName;
  String rating;

  ItemOne({
    required this.imageUrl,
    required this.brandName,
    required this.rating,
  });
}

List<ItemOne> itemones = [
  ItemOne(
    imageUrl: 'assets/haircut.jpg',
    brandName: 'We Barbers',
    rating: '5',
  ),
  ItemOne(
    imageUrl: 'assets/haircut1.jpg',
    brandName: 'CasaBlanca',
    rating: '4.5',
  ),
  ItemOne(
    imageUrl: 'assets/women-hair-style.jpg',
    brandName: 'Ladies',
    rating: '4.3',
  ),
];
