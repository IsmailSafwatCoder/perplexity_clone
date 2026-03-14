import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_clone/theme/colors.dart';
import 'package:perplexity_clone/widgets/icon_buttom.dart';

class SerchSection extends StatelessWidget {
  const SerchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Where knowlege begins',
            style: GoogleFonts.ibmPlexMono(
              fontSize: 40,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            width: 700,
            decoration: BoxDecoration(
              color: AppColors.searchBar,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.searchBarBorder, width: 1.5),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'search any thing .... ',
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: AppColors.textGrey,
                      ),
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      IconButtom(icon: Icons.auto_awesome_sharp, text: 'focus'),
                      SizedBox(width: 14),
                      IconButtom(
                        icon: Icons.add_circle_outline_outlined,
                        text: 'attach',
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.submitButton,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: AppColors.background,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
