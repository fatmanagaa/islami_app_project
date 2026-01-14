import 'package:flutter/material.dart';
import 'package:islami_app/core/app_assets.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/app_styles.dart';
import 'package:islami_app/home/tabs/quran/widget/sura_item_widget.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(height: height * 0.02),
          TextField(
            style: AppStyles.bold16White,
            cursorColor: AppColors.primary,
            decoration: InputDecoration(
              hintText: 'Sura Name',
              hintStyle: AppStyles.bold16White,

              enabledBorder: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(),

              prefixIcon: Image.asset(AppAssets.quranSearch),
            ),
          ),
          Text('Most Recently ', style: AppStyles.bold16White),

          SizedBox(
            height: height * 0.16,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    spacing: width * 0.04,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Al-Anbiya', style: AppStyles.bold24Black),
                          Text('الأنبياء', style: AppStyles.bold24Black),
                          Text(
                            '112 Verses',
                            style: AppStyles.bold14Black,
                            // style: AppStyles.bold16White.copyWith(
                            // fontSize: 14
                            // ),
                          ),
                        ],
                      ),
                      Image.asset(AppAssets.mostRecently),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: width * 0.04);
              },
              itemCount: 10,
            ),
          ),
          Text('Suras List', style: AppStyles.bold16White),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return SuraItemWidget(index: index,);
              },
              separatorBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Divider(
                    color: AppColors.white,
                    thickness: 2,
                  ),
                );
              },
              itemCount: 114,
            ),
          ),
        ],
      ),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: AppColors.primary, width: 2),
  );
}
