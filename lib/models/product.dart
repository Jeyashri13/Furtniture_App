class Product {
  late final int id, price;
  late final String title, description, image;

  Product(
      {required this.id,
      required this.description,
      required this.image,
      required this.price,
      required this.title});
}

//list of products
List<Product> product = [
  Product(
    id: 1,
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    image: 'assets/images/Item_1.png',
    price: 56,
    title: 'Classic Leather Arm Chair',
  ),
  Product(
    id: 2,
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    image: 'assets/images/Item_2.png',
    price: 68,
    title: 'Poppy Plastic tub Chair',
  ),
  Product(
    id: 3,
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    image: 'assets/images/Item_3.png',
    price: 39,
    title: 'Bar Stool Chair',
  ),
];
