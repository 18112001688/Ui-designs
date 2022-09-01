import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.pink[100],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2, right: 2, bottom: 2, top: 2),
          child: Container(
            height: 100,
            width: 100,
            color: Colors.pink[100],
          ),
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.pink[100],
        )
      ],
    );
  }
}
