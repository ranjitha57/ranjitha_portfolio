import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../data/projects.dart';
import '../sections/about/about_desktop.dart';
import '../sections/about/about_mobile.dart';
import '../sections/footer/footer.dart';
import '../sections/header/header_desktop.dart';
import '../sections/header/header_tab.dart';
import '../sections/home/home_desktop.dart';
import '../sections/home/home_mobile.dart';
import '../sections/projects/project_desktop.dart';
import '../sections/projects/project_mobile.dart';
import '../service/service.dart';
import '../utils/colors.dart';
import '../utils/images.dart';
import '../utils/strings.dart';
import '../responsive/responsive_layout.dart';
import '../sections/about/about_tab.dart';
import '../sections/header/drawer.dart';
import '../sections/home/home_tab.dart';
import '../sections/projects/project_tab.dart';
import '../sections/skills/skills_mobile.dart';
import '../sections/skills/skills_tab.dart';
import '../sections/skills/skills_desktop.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scrollCntrl = ScrollController();
  bool isfabVisible = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  void initState() {
    super.initState();
    scrollCntrl.addListener(() {
      setState(() {
        isfabVisible = scrollCntrl.offset > 0;
      });
    });
  }

  @override
  void dispose() {
    scrollCntrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: ResponsiveLayout.isMobile(context)
                ? AppBar(
                    actions: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: AppColors.primaryColor),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              launchEmail(StringConst.mailId);
                            },
                            icon: const Icon(
                              Icons.mail_outline,
                            ),
                          ),
                        ),
                      ),
                    ],
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Builder(
                        builder: (BuildContext context) {
                          return IconButton(
                            icon: SvgPicture.asset(
                              ImagePath.drawer,
                              color: AppColors.primaryColor,
                            ),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                          );
                        },
                      ),
                    ),
                  )
                : PreferredSize(
                    preferredSize: const Size(double.infinity, 100),
                    child: ResponsiveLayout.isDesktop(context)
                        ? HeaderDesktop(
                            onMenuItemTap: (navIndex) {
                              scrollToSection(navIndex);
                            },
                          )
                        : HeaderTab(
                            onMenuItemTap: (navIndex) {
                              scrollToSection(navIndex);
                            },
                          )),
            drawer: ResponsiveLayout.isMobile(context)
                ? Drawer(
                    child: DrawerMobile(
                      onNavItemTap: (navIndex) {
                        scaffoldKey.currentState?.closeDrawer();
                        scrollToSection(navIndex);
                      },
                    ),
                  )
                : null,
            body: SingleChildScrollView(
              controller: scrollCntrl,
              child: Stack(children: [
                Positioned(
                  top: ResponsiveLayout.isTablet(context) ? 500 : 600,
                  left: 0,
                  child: Align(
                    child: ResponsiveLayout.isMobile(context)
                        ? Image.asset(ImagePath.mbleSkills)
                        : Image.asset(ImagePath.skillsBg),
                  ),
                ),
                ResponsiveLayout.isMobile(context)
                    ? Positioned(
                        top: 0,
                        child: Image.asset(
                          ImagePath.mbleBg1,
                        ),
                      )
                    : Container(),
                ResponsiveLayout.isMobile(context)
                    ? Positioned(
                        top: 60,
                        right: 0,
                        child: Image.asset(
                          ImagePath.mbleBg2,
                        ),
                      )
                    : Container(),
                !ResponsiveLayout.isMobile(context)
                    ? Positioned(
                        bottom: 200,
                        left: 0,
                        child: Image.asset(
                          ImagePath.bg6,
                        ),
                      )
                    : Container(),
                ResponsiveLayout.isMobile(context)
                    ? Positioned(
                        bottom: 580,
                        left: 0,
                        child: Image.asset(
                          ImagePath.bg7,
                        ),
                      )
                    : Container(),
                Column(
                  children: [
                    ResponsiveLayout(
                      mobile: HomeMobile(
                        key: navbarKeys[0],
                      ),
                      tablet: HomeTab(
                        key: navbarKeys[0],
                      ),
                      desktop: HomeDesktop(
                        key: navbarKeys[0],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ResponsiveLayout(
                      mobile: SkillsMobile(
                        key: navbarKeys[1],
                      ),
                      tablet: SkillsTab(
                        key: navbarKeys[1],
                      ),
                      desktop: SkillsDesktop(
                        key: navbarKeys[1],
                      ),
                    ),
                    SizedBox(
                        height: ResponsiveLayout.isMobile(context) ? 10 : 55),
                    ResponsiveLayout(
                      mobile: ProjectMobile(
                        key: navbarKeys[2],
                        projects: projects,
                      ),
                      tablet: ProjectTab(
                        key: navbarKeys[2],
                        projects: projects,
                      ),
                      desktop: ProjectDesktop(
                        key: navbarKeys[2],
                        projects: projects,
                      ),
                    ),
                    SizedBox(
                      height: ResponsiveLayout.isMobile(context) ? 35 : 20,
                    ),
                    ResponsiveLayout(
                      mobile: AboutMobile(
                        key: navbarKeys[3],
                      ),
                      tablet: AboutTab(
                        key: navbarKeys[3],
                      ),
                      desktop: AboutDesktop(
                        key: navbarKeys[3],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Footer()
                  ],
                ),
              ]),
            ),
            floatingActionButton: isfabVisible
                ? Padding(
                    padding: EdgeInsets.only(
                        bottom: ResponsiveLayout.isDesktop(context) ? 20 : 15,
                        right: ResponsiveLayout.isDesktop(context) ? 20 : 15),
                    child: FloatingActionButton(
                      onPressed: () {
                        scrollToSection(0);
                      },
                      backgroundColor: AppColors.primaryColor,
                      child: const Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                      ),
                    ),
                  )
                : null));
  }

  void scrollToSection(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(
          milliseconds: 450,
        ),
        curve: Curves.easeInOut);
  }
}
