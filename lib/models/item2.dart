
class BottomContainer {
  String imageUrl;
  String brandName;
  String brandName2;
  String rating;
  String address;
  String aboutUs;

  BottomContainer({
    required this.imageUrl,
    required this.brandName,
    required this.brandName2,
    required this.rating,
    required this.address,
    required this.aboutUs,
  });
}

List<BottomContainer> bottomcontainers = [
  BottomContainer(
    imageUrl: 'assets/haircut.jpg',
    brandName: 'We',
    rating: '5',
    address: 'An naseem',
    brandName2: ' Barbers', aboutUs: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
  ),
  BottomContainer(
    imageUrl: 'assets/haircut1.jpg',
    brandName: 'Casa',
    rating: '4.5',
    address: 'Aziziyah',
    brandName2: 'Blanca', aboutUs: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
  ),
  BottomContainer(
    imageUrl: 'assets/women-hair-style.jpg',
    brandName: 'Ladies',
    rating: '4.3',
    address: 'Bawadi',
    brandName2: ' Spa', aboutUs: 'here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate',
  ),
];
