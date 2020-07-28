import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:productapp/Calci.dart';
import 'package:productapp/multi.dart';


class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController _controller = PageController(
    initialPage: 1,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      children: [
        //Ova(),
        Multi(),
        Ova()
      ],
    );
  }
}