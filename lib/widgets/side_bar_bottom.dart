import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';

class SideBarBottom extends StatelessWidget {
  final bool isCollepes;
  final String text;
  final IconData icon;
  const SideBarBottom({
    super.key,
    required this.isCollepes,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isCollepes
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,

      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          child: Icon(icon, color: AppColors.iconGrey, size: 22),
        ),
        isCollepes
            ? const SizedBox()
            : Text(
                text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
      ],
    );
  }
}
