import 'package:flutter/material.dart';
import 'package:islami_app/core/app_assets.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/app_styles.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.quranBg,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: AppColors.primary),
            //todo:to style bottom navigation bar
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              //selectedItemColor: AppColors.white,
              //unselectedItemColor: AppColors.black,
              //backgroundColor: AppColors.primary,
              //type: BottomNavigationBarType.fixed,

              //todo:another way to style bottom navigation bar
              items: [
                buildBottomNavBar(
                  iconName: AppAssets.iconQuran,
                  label: 'quran',
                  index: 0,
                ),
                buildBottomNavBar(
                  iconName: AppAssets.iconHadeth,
                  label: 'Hadeth',
                  index: 1,
                ),
                buildBottomNavBar(
                  iconName: AppAssets.iconSebha,
                  label: 'sebha',
                  index: 2,
                ),
                buildBottomNavBar(
                  iconName: AppAssets.iconRadio,
                  label: 'Radio',
                  index: 3,
                ),
                buildBottomNavBar(
                  iconName: AppAssets.iconTime,
                  label: 'Time',
                  index: 4,
                ),
              ],

              // BottomNavigationBarItem(
              //   icon: ImageIcon(AssetImage(AppAssets.iconQuran)),
              //   label: 'quran',
              // ),
              // BottomNavigationBarItem(
              //   icon: ImageIcon(AssetImage(AppAssets.iconHadeth)),
              //   label: 'Hadeth',
              // ),
              // BottomNavigationBarItem(
              //   icon: ImageIcon(AssetImage(AppAssets.iconSebha)),
              //   label: 'Sebha',
              // ),
              // BottomNavigationBarItem(
              //   icon: ImageIcon(AssetImage(AppAssets.iconRadio)),
              //   label: 'Radio',
              // ),
              // BottomNavigationBarItem(
              //   icon: ImageIcon(AssetImage(AppAssets.iconTime)),
              //   label: 'Time',
              // ),
            ),
          ),
        ),
      ],
    );
  }

  BottomNavigationBarItem buildBottomNavBar({
    required String iconName,
    required String label,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: selectedIndex == index
          ? Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              width: 59,
              height: 34,

              decoration: BoxDecoration(
                color: AppColors.blackBg,
                borderRadius: BorderRadius.circular(66),
              ),
              child: ImageIcon(AssetImage(iconName)),
            )
          : ImageIcon(AssetImage(iconName)),
      label: label,
    );
  }
}
