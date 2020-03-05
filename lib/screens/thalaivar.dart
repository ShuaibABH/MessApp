import 'package:flutter/material.dart';

class Thalaivar extends StatelessWidget {
  const Thalaivar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: Text(
              "Thalaivar",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            child: Image.asset('assets/images/cmd_ushaar.jpg'),
          ),
        ),
      ],
    );
  }
}
