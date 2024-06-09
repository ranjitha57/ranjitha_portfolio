import 'package:flutter/material.dart';
import '../../data/skills.dart';
import '../../utils/colors.dart';
import '../../utils/strings.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                StringConst.mySkills,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: AppColors.black,
                ),
              ),
              Container(
                width: 50,
                height: 3,
                color: AppColors.primaryColor,
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            children: [
              for (int i = 0; i < skills.length; i++)
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          skills[i].imagePath,
                          width: 80,
                          height: 80,
                        ),
                        const SizedBox(height: 18),
                        Text(
                          skills[i].name,
                          style: const TextStyle(
                            fontFamily: "Redley",
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
