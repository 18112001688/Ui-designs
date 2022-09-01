import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Pages/search.dart';
import 'package:flutter_application_1/component/users_post.dart';

import '../component/Stories.dart';

class UserHome extends StatelessWidget {
  UserHome({Key? key}) : super(key: key);
  List<String> names = [
    'Moustafa',
    'Ahmed',
    'Salma',
    'Nour',
    'Zyead',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.all(24),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(children: [
        Container(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Stories(name: names[index]),
            itemCount: names.length,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => Posts(name: names[index]),
            itemCount: names.length,
          ),
        ),
      ]),
    );
  }
}
