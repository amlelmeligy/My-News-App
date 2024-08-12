import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/components.dart';

class home extends StatelessWidget {
  home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Cloud",
              style:
                  TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      // body: ListView(
      //   children: [
      //     horizontalscroll(),
      //     SizedBox(
      //       height: 10,
      //     ),
      //     verticalscroll()
      //   ],
      // )
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: horizontalscroll(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: verticalscroll(
              category: "top",
            ),
          )
        ],
      ),
    );
  }
}
