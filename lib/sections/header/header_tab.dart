import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../data/nav_items.dart';
import '../../service/service.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/strings.dart';

class HeaderTab extends StatelessWidget {
  final Function(int) onMenuItemTap;

  const HeaderTab({super.key, required this.onMenuItemTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 35, right: 20, bottom: 10, top: 30),
      child: Row(
        children: [
          SvgPicture.asset(
            ImagePath.logo,
            height: 30,
            width: 50,
          ),
          const Spacer(),
          for (int i = 0; i < navItems.length; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    onMenuItemTap(i);
                  },
                  child: Text(
                    navItems[i].title,
                    style: const TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 15,
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              launchEmail(StringConst.mailId);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20,
              ),
            ),
            child: const Row(
              children: [
                Text(
                  StringConst.connectMe,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Quicksand",
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.mail_outline,
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
