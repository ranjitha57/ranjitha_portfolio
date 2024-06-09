import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../model/project.dart';
import '../responsive/responsive_layout.dart';
import '../utils/colors.dart';
import '../utils/strings.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isDesktop = ResponsiveLayout.isDesktop(context);
    final imageWidth =
        isDesktop ? screenSize.width * 0.3 : screenSize.width * 0.3;
    final imageHeight =
        isDesktop ? screenSize.height * 0.5 : screenSize.height * 0.5;
    return SizedBox(
      height: isDesktop ? 0.5 : 0.8,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              project.img,
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            width: isDesktop ? 50 : 30,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.name,
                    style: TextStyle(
                        fontFamily: "Redley",
                        fontWeight: FontWeight.w400,
                        fontSize: isDesktop ? 30 : 25,
                        color: AppColors.black),
                  ),
                  const SizedBox(height: 7),
                  Center(
                    child: ReadMoreText(
                      project.description,
                      trimMode: TrimMode.Line,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        fontFamily: "Quicksand",
                      ),
                      trimLines: isDesktop ? 5 : 2,
                      colorClickableText: Colors.red,
                      trimCollapsedText: ' view more',
                      trimExpandedText: ' view less',
                      lessStyle: TextStyle(
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.w500,
                        fontSize: isDesktop ? 16 : 14,
                        color: AppColors.black,
                        decoration: TextDecoration.underline,
                      ),
                      moreStyle: TextStyle(
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.w500,
                        fontSize: isDesktop ? 16 : 14,
                        color: AppColors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    StringConst.rolesAndRes,
                    style: TextStyle(
                        fontFamily: "Redley",
                        fontWeight: FontWeight.w400,
                        fontSize: isDesktop ? 30 : 25,
                        color: AppColors.black),
                  ),
                  const SizedBox(height: 8),
                  isDesktop
                      ? Text(
                          project.roles,
                          style: TextStyle(
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.w500,
                              fontSize: isDesktop ? 16 : 14,
                              color: AppColors.black),
                        )
                      : ReadMoreText(
                          project.roles,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            fontFamily: "Quicksand",
                          ),
                          trimMode: TrimMode.Line,
                          trimLines: isDesktop ? 5 : 2,
                          colorClickableText: Colors.red,
                          trimCollapsedText: ' view more',
                          trimExpandedText: ' view less',
                          lessStyle: const TextStyle(
                            fontFamily: "Quicksand",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.primaryColor,
                          ),
                          moreStyle: const TextStyle(
                            fontFamily: "Quicksand",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.primaryColor,
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
