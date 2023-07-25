import 'package:flutter/material.dart';
import 'package:my_portfolio_webapp_1/views/contact_us.dart';
import 'package:my_portfolio_webapp_1/views/footer_class.dart';
import 'package:my_portfolio_webapp_1/views/home_page.dart';
import 'package:my_portfolio_webapp_1/views/my_portfolio.dart';
import 'package:my_portfolio_webapp_1/views/my_services.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'about_me.dart';
import '../globals/app_assets.dart';
import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {

  final ItemScrollController _itemScrollController = ItemScrollController();
  final onMenuHover = Matrix4.identity()..scale(1.0);
  final menuItems = [
    'Home',
    'About',
    'Services',
    'Portfolio',
    'Contact',
  ];

  var menuIndex = 0;

  final screenList = const <Widget>[
    HomePage(),
    AboutMe(),
    MyServices(),
    MyPortfolio(),
    ContactUs(),
    FooterClass(),
  ];

  Future scrollTo({required int index}) async {
    _itemScrollController
        .scrollTo(
            index: index,
            duration: const Duration(seconds: 2),
            curve: Curves.fastLinearToSlowEaseIn)
        .whenComplete(
          () => setState(
            () {
              menuIndex = index;
            },
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        toolbarHeight: 90,
        titleSpacing: 40,
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        title: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 768) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Portfolio",
                  style: AppTextStyles.headerTextStyle(),
                ),
                const Spacer(),
                PopupMenuButton(
                  color: AppColors.bgColor2,
                  position: PopupMenuPosition.under,
                  constraints: BoxConstraints.tightFor(width: size.width * 0.9),
                  icon: Icon(
                    Icons.menu_sharp,
                    size: 32,
                    color: AppColors.white,
                  ),
                  itemBuilder: (BuildContext context) => menuItems
                      .asMap()
                      .entries
                      .map(
                        (e) => PopupMenuItem(
                          textStyle: AppTextStyles.headerTextStyle(),
                          onTap: () {
                            scrollTo(index: e.key);
                          },
                          child: Text(e.value),
                        ),
                      )
                      .toList(),
                ),
              ],
            );
          } else {
            return Row(
              children: [
                Text(
                  "Portfolio",
                  style: AppTextStyles.headerTextStyle(),
                ),
                const Spacer(),
                SizedBox(
                  height: 30,
                  child: ListView.separated(
                    itemCount: menuItems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, child) =>
                        Constants.sizedBox(width: 8),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          scrollTo(index: index);
                        },
                        borderRadius: BorderRadius.circular(100),
                        onHover: (value) {
                          setState(() {
                            if (value) {
                              menuIndex = index;
                            } else {
                              menuIndex = 0;
                            }
                          });
                        },
                        child: buildNavBarAnimatedContainer(
                            index, menuIndex == index ? true : false),
                      );
                    },
                  ),
                ),
                Constants.sizedBox(width: 30),
              ],
            );
          }
        }), //nav row
      ),
      body: Scrollbar(
       trackVisibility: true,
        thumbVisibility: true,
        child: ScrollablePositionedList.builder(
            itemCount: screenList.length,
            itemScrollController: _itemScrollController,
            itemBuilder: (context, index) {
              return screenList[index];
            }),
      ),
    );
  }

  AnimatedContainer buildNavBarAnimatedContainer(int index, bool hover) {
    return AnimatedContainer(
      alignment: Alignment.center,
      width: hover ? 80 : 75,
      duration: const Duration(milliseconds: 200),
      transform: hover ? onMenuHover : null,
      child: Text(
        menuItems[index],
        style: AppTextStyles.headerTextStyle(
            color: hover ? AppColors.themeColor : AppColors.white),
      ),
    );
  }
}
