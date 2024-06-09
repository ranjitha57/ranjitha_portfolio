import 'package:flutter/material.dart';

import '../../data/contacts.dart';
import '../../service/service.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/strings.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double cardWidth = screenSize.width * 0.8;

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * 0.1,
          ),
          child: Card(
            elevation: 2,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: cardWidth,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          ImagePath.profile2,
                          width: cardWidth * 0.35,
                          height: 250,
                        ),
                        Container(
                          width: cardWidth * 0.25,
                          height: 1,
                          color: AppColors.primaryColor,
                        ),
                      ],
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
                            fontSize: 45,
                            color: AppColors.black,
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 3,
                          color: AppColors.primaryColor,
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          width: cardWidth * 0.5,
                          child: const Text(
                            textAlign: TextAlign.center,
                            StringConst.passinateDeveloper,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Quicksand",
                              color: AppColors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: cardWidth * 0.5,
                          child: const Text(
                            textAlign: TextAlign.center,
                            StringConst.path,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Redley",
                              color: AppColors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: screenSize.height * 0.1,
          left: screenSize.width * 0.05,
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
