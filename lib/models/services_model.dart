class ServicesTile {
  String name;
  String imageUrl;
  String price;

  ServicesTile({
    required this.name,
    required this.imageUrl,
    required this.price,
  });
}

List<ServicesTile> servicestiles = [
  ServicesTile(
      name: 'Hair Dryer',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdcLjmKP-3Zqa7OKFO9oLKNjXeUAO-RAm1jg&usqp=CAU',
      price: '20 SR'),
  ServicesTile(
      name: 'Shave',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjENYedRLlgkGXsmbT9gx8U9kQ-jwTiyPNrA&usqp=CAU',
      price: '20 SR'),
  ServicesTile(
      name: 'Hair Cut',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5mDEcmhGVgw2PjUTFHNUkIMDfG_Z13m30FWq7CaY_85NNkAV1_eXryeZje9RTZD593sQ&usqp=CAU',
      price: '20 SR' ),
  ServicesTile(
      name: 'Facial',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh13QdH7XcgthU7kaPWEypnaHgrUbRN5LRvQ&usqp=CAU',
      price: '40 SR'),
  ServicesTile(
      name: 'Hair Color',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFNFQCb1Fzg8W9pLwSI-fxEnKXJ5j0KgcFQV-8FTkXSqbueqaJsLq-BD0X25WT0VNoDO8&usqp=CAU',
      price: '30 SR'),
  ServicesTile(
      name: 'Hair Styling',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDEDruM5SMYb52vzYTEPb3qYwYa9pQxVHCPg&usqp=CAU',
      price: '40 SR'),
];
