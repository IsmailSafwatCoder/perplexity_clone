import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';

class FotterBarItem extends StatelessWidget {
  final String text;
  const FotterBarItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 14, color: AppColors.footerGrey),
      ),
    );
  }
}
