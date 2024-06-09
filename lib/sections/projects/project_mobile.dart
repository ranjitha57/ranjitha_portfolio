import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../model/project.dart';
import '../../utils/colors.dart';
import '../../utils/strings.dart';
import '../../widgets/mobile_project_card.dart';

class ProjectMobile extends StatelessWidget {
  final List<Project> projects;

  const ProjectMobile({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                StringConst.projects,
                style: TextStyle(
                  fontFamily: "Quicksand",
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
        ),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: projects.length,
            itemBuilder: (context, index) {
              return MobileProjectCard(project: projects[index]);
            }),
      ],
    );
  }
}
