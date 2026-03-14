import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';

class IconButtom extends StatefulWidget {
  final IconData icon;
  final String text;
  const IconButtom({super.key, required this.icon, required this.text});

  @override
  State<IconButtom> createState() => _IconButtomState();
}

class _IconButtomState extends State<IconButtom> {
  bool isHoverd = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHoverd = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHoverd = false;
        });
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isHoverd ? AppColors.proButton : Colors.transparent,
        ),
        child: Row(
          children: [
            Icon(widget.icon, size: 20, color: AppColors.iconGrey),
            SizedBox(width: 10),
            Text(widget.text),
          ],
        ),
      ),
    );
  }
}
