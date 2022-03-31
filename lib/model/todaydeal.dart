class Todaydeals {
  String img;
  String title;
  String rate;
  String price;
  Todaydeals(
      {required this.img,
      required this.price,
      required this.rate,
      required this.title});
}

List<Todaydeals> todayModel = [
  Todaydeals(
    img:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREqpHfpoFwknkStSwrEfAlQlCv5aJTvak18Q&usqp=CAU',
    price: '\$44\.0',
    rate: '(3.0)',
    title: 'Blackforest...',
  ),
  Todaydeals(
    img:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUC4IVhYPmur3ohvxrrT47C6haFeZWpZyUQw&usqp=CAU',
    price: '\$10\.0',
    rate: '(5.0)',
    title: 'Fruity Summer ...',
  ),
  Todaydeals(
    img:
        'https://assets3.thrillist.com/v1/image/2842294/792x491/scale;webp=auto;jpeg_quality=60.jpg',
    price: '',
    rate: '',
    title: '',
  ),
];
