import 'package:flutter/material.dart';
import 'package:project/components/components.dart';

class categoryModel extends StatefulWidget {
  const categoryModel({super.key, required this.category});

  final String category;

  @override
  State<categoryModel> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<categoryModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: verticalscroll(
              category: widget.category,
            ),
          )
        ],
      ),
    );
  }
}
