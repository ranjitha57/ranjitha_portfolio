import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../model/project.dart';
import '../utils/colors.dart';
import '../utils/strings.dart';

class MobileProjectCard extends StatelessWidget {
  final Project project;

  const MobileProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          Text(
            project.name,
            style: const TextStyle(
                fontFamily: "Redley",
                fontWeight: FontWeight.w500,
                fontSize: 22,
                color: AppColors.black),
          ),
          const SizedBox(height: 10),
          Image.asset(
            project.img,
            height: screenSize.width * 0.7,
            width: double.infinity,
          ),
          const SizedBox(height: 7),
          Center(
              child: Text(
            project.description,
            style: const TextStyle(
                fontFamily: "Quicksand",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: AppColors.black),
          )),
          const SizedBox(height: 10),
          const Text(
            StringConst.rolesAndRes,
            style: TextStyle(
                fontFamily: "Redley",
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: AppColors.black),
          ),
          const SizedBox(height: 10),
          ReadMoreText(
            project.roles,
            style: const TextStyle(
                fontSize: 12,
                fontFamily: "Quicksand",
                color: AppColors.black,
                fontWeight: FontWeight.w500),
            trimMode: TrimMode.Line,
            trimLines: 3,
            colorClickableText: Colors.red,
            trimCollapsedText: ' view more',
            trimExpandedText: ' view less',
            lessStyle: const TextStyle(
              fontSize: 12,
              fontFamily: "Quicksand",
              fontWeight: FontWeight.w700,
              color: AppColors.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.primaryColor,
            ),
            moreStyle: const TextStyle(
              fontSize: 12,
              fontFamily: "Quicksand",
              fontWeight: FontWeight.w700,
              color: AppColors.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
