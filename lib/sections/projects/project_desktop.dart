import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../../model/project.dart';
import '../../utils/colors.dart';
import '../../utils/strings.dart';
import '../../widgets/project_card.dart';

class ProjectDesktop extends StatefulWidget {
  final List<Project> projects;

  const ProjectDesktop({super.key, required this.projects});

  @override
  State<ProjectDesktop> createState() => _ProjectDesktopState();
}

class _ProjectDesktopState extends State<ProjectDesktop> {
  int imgIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                StringConst.projects,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 50,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: CarouselSlider.builder(
              itemCount: widget.projects.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                Project project = widget.projects[index];
                return ProjectCard(project: project);
              },
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.65,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayCurve: Curves.easeIn,
                onPageChanged: (index, reason) {
                  setState(() {
                    imgIndex = index;
                  });
                },
              ),
            ),
          ),
          DotsIndicator(
            dotsCount: widget.projects.length,
            position: imgIndex,
            decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              activeSize: const Size(13, 13),
              shape: const CircleBorder(),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              size: const Size(10, 10),
            ),
          )
        ],
      ),
    );
  }
}
