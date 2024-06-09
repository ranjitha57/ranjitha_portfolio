import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../data/nav_items.dart';
import '../../service/service.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/strings.dart';

class DrawerMobile extends StatelessWidget {
  final Function(int) onNavItemTap;
  const DrawerMobile({super.key, required this.onNavItemTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImagePath.drawerBg),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 35,child: SvgPicture.asset(ImagePath.logo),),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.close)),
                    ],
                  ),
                ),
                const Divider(),
                for (int i = 0; i < navItems.length; i++)
                  ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    titleTextStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Quicksand",
                        fontSize: 15,
                        color: AppColors.black),
                    onTap: () {
                      Navigator.pop(context);
                      onNavItemTap(i);
                    },
                    leading: Icon(navItems[i].icon),
                    title: Text(navItems[i].title),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                const Text(
                  StringConst.build,
                  style: TextStyle(
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: AppColors.black,
                      height: 1.2),
                ),
                InkWell(
                  onTap: () {
                    launchURL(StringConst.linkedInUrl);
                  },
                  child: const Text(
                    StringConst.name,
                    style: TextStyle(
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        height: 1.2,
                        color: AppColors.black,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
