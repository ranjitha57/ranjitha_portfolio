import 'package:flutter/material.dart';
import '../../service/service.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/strings.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Stack(
      children: [
        Positioned(
          child: Image.asset(
            ImagePath.bg1,
          ),
        ),
        Positioned(
          bottom: screenHeight * 0.5,
          right: 0,
          child: Image.asset(
            ImagePath.bg4,
          ),
        ),
        Positioned(
          bottom: screenHeight * 0.35,
          right: 0,
          child: Image.asset(
            ImagePath.bg5,
          ),
        ),
        Positioned(
          top: screenHeight * 0.14,
          left: 0,
          child: Image.asset(
            ImagePath.bg3,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(
            ImagePath.bg2,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.10),
          child: Center(
            child: SizedBox(
              width: screenWidth * 0.6,
              height: screenHeight * 0.63,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.3,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImagePath.profile,
                      height: 289,
                    ),
                    Container(
                      width: screenWidth * 0.2,
                      height: 1,
                      color: AppColors.primaryColor,
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      StringConst.ranjitha,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Quicksand",
                        fontSize: 30,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      StringConst.flutterDeveloper,
                      style: TextStyle(
                        fontFamily: "Redley",
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        launchURL(StringConst.resumeUrl);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          StringConst.dwnld,
                          style: TextStyle(
                              fontFamily: "Quicksand",
                              fontSize: 16,
                              color: AppColors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
