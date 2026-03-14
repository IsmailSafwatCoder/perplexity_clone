import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';
import 'package:perplexity_clone/widgets/side_bar_bottom.dart';

class Sidenavbar extends StatefulWidget {
  const Sidenavbar({super.key});

  @override
  State<Sidenavbar> createState() => _SidenavbarState();
}

class _SidenavbarState extends State<Sidenavbar> {
  bool isCollepes = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      width: isCollepes ? 64 : 140,
      color: AppColors.sideNav,
      child: Column(
        children: [
          SizedBox(height: 14),
          Icon(
            Icons.auto_awesome_mosaic,
            color: AppColors.whiteColor,
            size: isCollepes ? 30 : 40,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: isCollepes
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                SizedBox(height: 22),
                SideBarBottom(
                  isCollepes: isCollepes,
                  text: "Home",
                  icon: Icons.add,
                ),
                SideBarBottom(
                  isCollepes: isCollepes,
                  text: "Search",
                  icon: Icons.search,
                ),
                SideBarBottom(
                  isCollepes: isCollepes,
                  text: "Spaces",
                  icon: Icons.language,
                ),
                SideBarBottom(
                  isCollepes: isCollepes,
                  text: "Discover",
                  icon: Icons.auto_awesome_sharp,
                ),
                SideBarBottom(
                  isCollepes: isCollepes,
                  text: "Librarys",
                  icon: Icons.cloud_outlined,
                ),

                Spacer(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isCollepes = !isCollepes;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
              child: Icon(
                isCollepes
                    ? Icons.keyboard_arrow_right_outlined
                    : Icons.keyboard_arrow_left_outlined,
                color: AppColors.iconGrey,
                size: 22,
              ),
            ),
          ),
          SizedBox(height: 22),
        ],
      ),
    );
  }
}
