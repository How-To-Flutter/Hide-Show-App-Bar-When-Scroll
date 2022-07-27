// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:imageslider/square.dart';

class ScrollAppBar extends StatefulWidget {
  ScrollAppBar({Key? key}) : super(key: key);

  @override
  State<ScrollAppBar> createState() => _ScrollAppBarState();
}

class _ScrollAppBarState extends State<ScrollAppBar> {
  final items = [
    'item 1',
    'item 2',
    'item 3',
    'item 4',
    'item 5',
    'item 6',
    'item 7',
    'item 8',
    'item 9',
    'item 10',
    'item 11',
    'item 12',
    'item 13',
    'item 14',
    'item 16',
    'item 16',
    'item 17',
    'item 18',
    'item 19',
    'item 20',
    'item 21',
    'item 22',
    'item 23',
    'item 24',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                    actions: [
                      IconButton(onPressed: (() {}), icon: Icon(Icons.search))
                    ],
                    floating: true,
                    snap: true,
                    title: Text('Scrollable App Bar'))
              ],
          body: ListView.separated(
              itemBuilder: (context, index) {
                return Square(
                  child: items[index],
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    height: 0,
                  ),
              itemCount: items.length)),
    );
  }
}
