import 'package:flutter/material.dart';
import '../../data/contacts.dart';
import '../../service/service.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/strings.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      StringConst.aboutMe,
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
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.asset(
                  ImagePath.profile3,
                  width: screenSize.width * 0.35,
                  // height: 250,
                ),
                Container(
                  width: screenSize.width * 0.5,
                  height: 1,
                  color: AppColors.primaryColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    StringConst.passinateDeveloper,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "Quicksand",
                        fontSize: 12,
                        color: AppColors.black),
                  ),
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    textAlign: TextAlign.center,
                    StringConst.path,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Redley",
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
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
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            ImagePath.topLeft,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(
            ImagePath.bottomRight,
            height: 100,
          ),
        ),
      ],
    );
  }
}
