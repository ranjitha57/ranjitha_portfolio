import 'package:flutter/material.dart';

import '../../data/skills.dart';
import '../../utils/colors.dart';
import '../../utils/strings.dart';

class SkillsTab extends StatelessWidget {
  const SkillsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              StringConst.mySkills,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 50,
                fontFamily: "Quicksand",
                color: AppColors.black,
              ),
            ),
            Container(
              width: 130,
              height: 3,
              color: AppColors.primaryColor,
            )
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Wrap(
          spacing: 25,
          runSpacing: 20,
          children: [
            for (int i = 0; i < skills.length; i++)
              SizedBox(
                width: 260,
                child: Card(
                  color: Colors.white,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          skills[i].imagePath,
                          width: 80,
                          height: 80,
                        ),
                        const SizedBox(height: 30),
                        Text(
                          skills[i].name,
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: "Redley",
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
