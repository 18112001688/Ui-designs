import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 210),
                child: Icon(Icons.menu),
              )
            ],
          ),
        ),
        Container(
          height: 300,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.grey[300],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          child: Row(
            children: [
              Icon(Icons.favorite),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Icon(Icons.chat_bubble_outline),
              ),
              Icon(Icons.share),
              Padding(
                padding: const EdgeInsets.only(left: 215),
                child: Icon(Icons.bookmark),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              Text(
                'Liked by',
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Text('and'),
              SizedBox(
                width: 3,
              ),
              Text(
                'others',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Text(
                'Moustafa',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 3,
              ),
              Text('A friend is a true brother'),
            ],
          ),
        ),
      ],
    );
  }
}
