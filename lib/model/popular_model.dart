class Populardeals {
  String img;
  String title;
  String rate;
  String price;
  Populardeals(
      {required this.img,
      required this.price,
      required this.rate,
      required this.title});
}

List<Populardeals> popularModel = [
  Populardeals(
    img:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcL2a7GqvgLe44Tkvvw6kjDalUtYpE4e_BNQ&usqp=CAU',
    price: '\$25\.0',
    rate: '(3.0)',
    title: 'FrenchFrie...',
  ),
  Populardeals(
    img:
        'https://www.recipetineats.com/wp-content/uploads/2014/07/Teriyaki-Chicken-1.jpg',
    price: '\$12\.5',
    rate: '(5.0)',
    title: 'Fruity Summer ...',
  ),
  Populardeals(
    img:
        'https://assets3.thrillist.com/v1/image/2842294/792x491/scale;webp=auto;jpeg_quality=60.jpg',
    price: '',
    rate: '',
    title: '',
  ),
];
