class Cartmodel {
  String img;
  String title;
  String price;
  Cartmodel({required this.img, required this.title, required this.price});
}

List<Cartmodel> cartModel = [
  Cartmodel(
    img:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Rr-tb4p9E84hHFOVw2AN4ggT447lAScalQ&usqp=CAU',
    title: 'Salmon Burgers',
    price: '\$10\.0',
  ),
  Cartmodel(
    img:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3I6vFAWkJawAUupgR6OsZIUvpZNcYkovHzA&usqp=CAU',
    title: 'title',
    price: '\$11\.0',
  ),
  Cartmodel(
    img:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFVCBIyycxVYc-xBI-ho7doctAnNHRq7fu_Q&usqp=CAU',
    title: 'title',
    price: '\$8\.0',
  ),
  Cartmodel(
    img:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVPvFKUNSbAcyslwx4r0yDuKBDKXKEnaFBXg&usqp=CAU',
    title: 'title',
    price: '\$30\.0',
  ),
];
