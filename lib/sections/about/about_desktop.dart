import 'package:flutter/material.dart';
import '../../data/contacts.dart';
import '../../service/service.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/strings.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double cardWidth = screenSize.width * 0.76;
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * 0.11,
          ),
          child: Card(
            elevation: 2,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 70),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        ImagePath.profile3,
                        width: cardWidth * 0.3,
                        height: 250,
                      ),
                      Container(
                        width: cardWidth * 0.2,
                        height: 1,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        StringConst.aboutMe,
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 50,
                          color: AppColors.black,
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 3,
                        color: AppColors.primaryColor,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: cardWidth * 0.4,
                        child: const Text(
                          StringConst.passinateDeveloper,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: "Quicksand",
                            fontSize: 16,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: cardWidth * 0.5,
                        child: const Text(
                          StringConst.path,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Redley",
                            color: AppColors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < contacts.length; i++)
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: InkWell(
                                onTap: () {
                                  if (contacts[i].imgPath == ImagePath.mail) {
                                    launchEmail(contacts[i].url);
                                  } else {
                                    launchURL(contacts[i].url);
                                  }
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Image.asset(
                                    contacts[i].imgPath,
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: screenSize.width * 0.09,
          child: Image.asset(
            ImagePath.bottomLeft,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(
            ImagePath.bottomRight2,
          ),
        ),
      ],
    );
  }
}
