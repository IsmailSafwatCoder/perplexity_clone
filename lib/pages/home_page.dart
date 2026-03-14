import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';
import 'package:perplexity_clone/widgets/fotter_bar_item.dart';
import 'package:perplexity_clone/widgets/serch_section.dart';
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
          Expanded(
            child: Column(
              children: [
                //serch section
                SerchSection(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Wrap(
                    children: [
                      FotterBarItem(text: 'Pro'),
                      FotterBarItem(text: 'EnterPrice'),
                      FotterBarItem(text: 'Store'),
                      FotterBarItem(text: 'Blog'),
                      FotterBarItem(text: 'Careers'),
                      FotterBarItem(text: 'English (English)'),
                    ],
                  ),
                ),
                //fotter
              ],
            ),
          ),
        ],
      ),
    );
  }
}
