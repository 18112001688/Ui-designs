import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/component/Stories.dart';
import 'package:flutter_application_1/component/account_taps.dart/account_tap1.dart';
import 'package:flutter_application_1/component/account_taps.dart/account_tap3.dart';
import 'package:flutter_application_1/component/account_taps.dart/account_tap4.dart';

import '../component/account_taps.dart/account_tap2.dart';
import '../component/profile_photo.dart';
import '../component/user_shop.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.lock,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  'moustafamahmoud203',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                Icons.add,
                color: Colors.black,
              ),
              Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[500],
                        radius: 40,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '15',
                                style: TextStyle(fontSize: 24),
                              ),
                              SizedBox(
                                width: 45,
                              ),
                              Text(
                                '800',
                                style: TextStyle(fontSize: 24),
                              ),
                              SizedBox(
                                width: 45,
                              ),
                              Text(
                                '700',
                                style: TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Posts',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Followers',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                'Followig',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('moustafa'),
            ), 
            SizedBox(
              width: 30,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 30,
              ),
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Row(
                  children: [
                    Container(
                      width: 300,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(5)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.add_circle,
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stories(name: 'Travel'),
                  Stories(name: 'Nature'),
                  Stories(name: 'Sport'),
                  Stories(name: 'Hikes'),
                  Stories(name: 'Hikes'),
                  Stories(name: 'Hikes'),
                  Stories(name: 'Hikes'),
                  Stories(name: 'Hikes'),
                ],
              ),
            ),
            TabBar(tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3, color: Colors.black),
              ),
              Tab(
                icon: Icon(
                  Icons.video_call,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(Icons.shop, color: Colors.black),
              ),
              Tab(
                icon: Icon(Icons.person, color: Colors.black),
              ),
            ]),
            Expanded(
              child: TabBarView(children: [
                Account_one(),
                Account_two(),
                Account_three(),
                Account_four(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
