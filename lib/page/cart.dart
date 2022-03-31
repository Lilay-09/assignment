// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:food_daddy/model/cart_model.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: CustomScrollView(
          slivers: [
            buildHead(),
            buildList(),
            buildTotal(),
            buildButton(),
          ],
        ),
      ),
    );
  }
}

SliverToBoxAdapter buildHead() {
  return SliverToBoxAdapter(
    child: Container(
      padding: EdgeInsets.fromLTRB(15, 60, 10, 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Monday, August 24',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const Text(
            '(4)',
            style: TextStyle(
                color: Color.fromARGB(255, 31, 124, 23), fontSize: 20),
            textAlign: TextAlign.right,
          )
        ],
      ),
    ),
  );
}

SliverFixedExtentList buildList() {
  return SliverFixedExtentList(
    delegate: SliverChildBuilderDelegate((context, index) {
      return Container(
        margin: EdgeInsets.fromLTRB(8, 12, 6, 0),
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 55,
                  height: 67,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            cartModel[index].img,
                          ))),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(70, 0, 0, 15),
                      child: Text(
                        'SliverList',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.remove,
                            color: Colors.grey,
                          ),
                          Text(
                            '1',
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(80, 0, 0, 20),
                      child: Text(
                        cartModel[index].price,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Container(
                    //   margin: EdgeInsets.fromLTRB(90, 0, 0, 0),
                    //   color: Colors.yellow,
                    //   child: Text('X'),
                    // ),
                    Container(
                      margin: EdgeInsets.fromLTRB(90, 0, 0, 0),
                      width: 20,
                      color: Colors.amber,
                      child: InkWell(
                        child: Text(
                          'X',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }, childCount: cartModel.length),
    itemExtent: 80.0,
  );
}

SliverToBoxAdapter buildTotal() {
  return SliverToBoxAdapter(
    child: Container(
      padding: EdgeInsets.fromLTRB(15, 10, 10, 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.grey),
              ),
              const Text(
                '59\.0',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

SliverToBoxAdapter buildButton() {
  return SliverToBoxAdapter(
    child: Container(
      margin: EdgeInsets.fromLTRB(20, 45, 20, 0),
      height: 50,
      child: ButtonTheme(
        minWidth: 200,
        child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          color: Colors.amber,
          onPressed: () {},
          child: Text(
            'CheckOut',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}
