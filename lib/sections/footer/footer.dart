// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../../responsive/responsive_layout.dart';
import '../../service/service.dart';
import '../../utils/colors.dart';
import '../../utils/strings.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      width: double.infinity,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              const Text(
                StringConst.build,
                style: TextStyle(
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: AppColors.white,
                    height: 1.2),
              ),
              const SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  launchURL(StringConst.linkedInUrl);
                },
                child: Text(
                  StringConst.name,
                  style: TextStyle(
                      fontFamily: "Redley",
                      fontWeight: ResponsiveLayout.isMobile(context)
                          ? FontWeight.w600
                          : FontWeight.w700,
                      fontSize: 13,
                      height: 1.2,
                      color: AppColors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
