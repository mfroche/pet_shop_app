class Product {
  final int id;
  final String breed;
  final double price;
  final double weight;
  final double height;
  final String color;
  final String loc;
  final String description;
  final String imgUrl;

  const Product({
    required this.id,
    required this.breed,
    required this.price,
    required this.weight,
    required this.height,
    required this.color,
    required this.loc,
    required this.description,
    required this.imgUrl,
  });
}

List<Product> PRODUCTS = [
  Product(
    id: 0,
    breed: 'Persian',
    weight: 3.5,
    height: 22,
    color: 'Grey',
    loc: 'Canada',
    price: 94,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    imgUrl: 'assets/images/persian.png',
  ),
  Product(
    id: 1,
    breed: 'Sphinx',
    weight: 3.5,
    height: 22,
    color: 'Dark pink',
    loc: 'New Jersey',
    price: 112,
    description:
        "The Sphinx cat, hairless and charming, boasts a velvety skin in various colors and patterns. Playful and affectionate, they capture hearts with their unique appearance and lively personalities.",
    imgUrl: 'assets/images/sphinx.png',
  ),
  Product(
    id: 2,
    breed: 'Bengal',
    weight: 4.5,
    height: 20,
    color: 'Spotted',
    loc: 'New Hampshire',
    price: 210,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    imgUrl: 'assets/images/bengal.png',
  ),
  Product(
    id: 3,
    breed: 'Abyssinian',
    weight: 5.5,
    height: 32,
    color: 'Reddish-brown',
    loc: 'Canada',
    price: 200,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    imgUrl: 'assets/images/abyssinian.png',
  ),
  Product(
    id: 4,
    breed: 'Burmese',
    weight: 5,
    height: 32,
    color: 'Dark brown',
    loc: 'Canada',
    price: 150,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    imgUrl: 'assets/images/burmese.png',
  ),
  Product(
    id: 5,
    breed: 'Russian Blue',
    weight: 5.5,
    height: 30,
    color: 'Grey',
    loc: 'New York',
    price: 90,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    imgUrl: 'assets/images/russianBlue.png',
  ),
];

final List<Product> cart = [
  Product(
    id: 0,
    breed: 'Persian',
    weight: 3.5,
    height: 22,
    color: 'Grey',
    loc: 'Canada',
    price: 94,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    imgUrl: 'assets/images/persian.png',
  ),
];
