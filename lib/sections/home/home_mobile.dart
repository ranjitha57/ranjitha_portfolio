import 'package:flutter/material.dart';
import '../../service/service.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/strings.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    return SizedBox(
      width: 350,
      height: 350,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 350,
              height: 340,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.primaryColor,
                  width: 0.35,
                ),
              ),
              child: Center(
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ImagePath.profile,
                        height: 200,
                      ),
                      Container(
                        width: screenWidth * 0.45,
                        height: 1,
                        color: AppColors.primaryColor,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        StringConst.ranjitha,
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        StringConst.flutterDeveloper,
                        style: TextStyle(
                          fontFamily: "Redley",
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: screenWidth * 0.17,
            left: screenWidth * 0.17,
            child: ElevatedButton(
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
                      fontSize: 14,
                      color: AppColors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
