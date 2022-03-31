// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_daddy/model/adap_model_main.dart';
import 'package:food_daddy/model/popular_model.dart';
import 'package:food_daddy/model/todaydeal.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 250, 249, 249),
        child: CustomScrollView(
          slivers: [
            buildAppBar(),
            buildUpperMenu(),
            buildName(),
            buildMidMenu(),
            buildName1(),
            buildMidMenu1(),
          ],
        ),
      ),
    );
  }
}

SliverAppBar buildAppBar() {
  return SliverAppBar(
    leading: Container(
      margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://cdn.discordapp.com/attachments/925014201972432917/940246358856728616/chef-hat-icon-vector-28170654.jpg'))),
    ),
    backgroundColor: Color.fromARGB(255, 250, 249, 249),
    pinned: false,
    flexibleSpace: FlexibleSpaceBar(
      title: Text(
        'FoodDaddy',
        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 30),
      ),
      centerTitle: true,
    ),
    actions: [
      Container(
        margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: Image.network(
          'https://cdn.shopify.com/app-store/listing_images/66fe62a2bde09c53d5cf17362620de7a/icon/CJS3jt/0lu8CEAE=.png',
          scale: 1.0,
        ),
      )
    ],
  );
}

SliverToBoxAdapter buildUpperMenu() {
  return SliverToBoxAdapter(
    child: SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: adapModol.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.fromLTRB(18, 18, 0, 3),
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                  image: NetworkImage(adapModol[index].img),
                  alignment: Alignment.centerLeft),
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(70, 15, 3, 10),
              child: Column(
                children: [
                  Text(
                    adapModol[index].title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    adapModol[index].dec,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}

SliverToBoxAdapter buildName() {
  return SliverToBoxAdapter(
    child: Container(
      margin: EdgeInsets.fromLTRB(10, 10, 0, 2),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Icon(
            Icons.text_rotation_angleup_sharp,
            size: 20,
            color: Colors.yellow,
          ),
          Text(
            'Today\'s deals',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    ),
  );
}

SliverToBoxAdapter buildMidMenu() {
  return SliverToBoxAdapter(
    child: SizedBox(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: todayModel.length,
        itemBuilder: (context, index) {
          return Container(
            color: Color.fromARGB(255, 250, 249, 249),
            margin: EdgeInsets.fromLTRB(18, 18, 0, 3),
            width: 180,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Image.network(
                    todayModel[index].img,
                    width: 180,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Text(
                    todayModel[index].title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber[700]),
                    Icon(Icons.star, color: Colors.amber[700]),
                    Icon(Icons.star, color: Colors.amber[700]),
                    Icon(Icons.star_border, color: Colors.amber[700]),
                    Icon(Icons.star_border, color: Colors.amber[700]),
                    Text(todayModel[index].rate,
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      todayModel[index].price,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                      color: Colors.amber,
                      child: InkWell(
                        onHover: (value) {},
                        borderRadius: BorderRadius.circular(13),
                        onTap: () {},
                        child: Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}

SliverToBoxAdapter buildName1() {
  return SliverToBoxAdapter(
    child: Container(
      margin: EdgeInsets.fromLTRB(10, 10, 0, 2),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Icon(
            Icons.star_border_purple500,
            size: 20,
            color: Colors.yellow,
          ),
          Text(
            'Popular Items',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    ),
  );
}

SliverToBoxAdapter buildMidMenu1() {
  return SliverToBoxAdapter(
    child: SizedBox(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popularModel.length,
        itemBuilder: (context, index) {
          return Container(
            color: Color.fromARGB(255, 250, 249, 249),
            margin: EdgeInsets.fromLTRB(18, 18, 0, 3),
            width: 180,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Image.network(
                    popularModel[index].img,
                    width: 180,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Text(
                    popularModel[index].title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber[700]),
                    Icon(Icons.star, color: Colors.amber[700]),
                    Icon(Icons.star, color: Colors.amber[700]),
                    Icon(Icons.star_border, color: Colors.amber[700]),
                    Icon(Icons.star_border, color: Colors.amber[700]),
                    Text(popularModel[index].rate,
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      popularModel[index].price,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                      color: Colors.amber,
                      child: InkWell(
                        onHover: (value) {},
                        borderRadius: BorderRadius.circular(13),
                        onTap: () {},
                        child: Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}
