import 'package:flutter/material.dart';
import 'package:perplexity_clone/widgets/side_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //side bar
          Sidenavbar(),
          Column(
            children: [
              //serch section
              //fotter
            ],
          ),
        ],
      ),
    );
  }
}
