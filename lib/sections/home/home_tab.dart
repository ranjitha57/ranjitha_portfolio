import 'package:flutter/material.dart';
import '../../service/service.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/strings.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Stack(
      children: [
        Positioned(
          child: Image.asset(
            ImagePath.tabBg1,
          ),
        ),
        Positioned(
          right: 0,
          child: Image.asset(
            ImagePath.tabBg2,
          ),
        ),
        // Positioned(
        //   bottom: screenHeight * 0.5,
        //   right: 0,
        //   child: Image.asset(
        //     ImagePath.bg4,
        //   ),
        // ),
        // Positioned(
        //   bottom: screenHeight * 0.35,
        //   right: 0,
        //   child: Image.asset(
        //     ImagePath.bg5,
        //   ),
        // ),
        Positioned(
          top: screenHeight * 0.14,
          left: 0,
          child: Image.asset(
            ImagePath.bg3,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: SizedBox(
              width: screenWidth * 0.66,
              height: screenHeight * 0.63,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.3,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ImagePath.profile,
                        width: 225,
                      ),
                      Container(
                        width: screenWidth * 0.32,
                        height: 1,
                        color: AppColors.primaryColor,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        StringConst.ranjitha,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: "Quicksand",
                          fontSize: 30,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        StringConst.flutterDeveloper,
                        style: TextStyle(
                          fontFamily: "Radley",
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
                      )
                      // SizedBox(
                      //   width: screenWidth * 0.3,
                      //   // 0.28,
                      //   child: ElevatedButton(
                      //     style: ElevatedButton.styleFrom(
                      //       backgroundColor: AppColors.primaryColor,
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(10),
                      //       ),
                      //     ),
                      //     onPressed: () {
                      //       launchURL(StringConst.resumeUrl);
                      //     },
                      //     child: const Padding(
                      //       padding: EdgeInsets.symmetric(vertical: 10),
                      //       child: Text(
                      //         StringConst.dwnld,
                      //         style: TextStyle(
                      //             fontFamily: "Quicksand",
                      //             fontSize: 16,
                      //             color: AppColors.white,
                      //             fontWeight: FontWeight.w700),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
