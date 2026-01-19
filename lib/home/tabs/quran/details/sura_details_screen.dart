import 'package:flutter/material.dart';
import 'package:islami_app/core/app_assets.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/app_styles.dart';
import 'package:islami_app/model/quran_resources.dart';

class SuraDetailsScreen extends StatelessWidget {
  const SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;

    int index = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
      backgroundColor: AppColors.blackBg,
      appBar: AppBar(
        title: Text(
          QuranResources.englishQuranSuraList[index],
          style: AppStyles.bold20Primary,
        ),


      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                Image.asset(AppAssets.cornerLeft),
                Text(QuranResources.arabicQuranSuraList[index],style:AppStyles.bold24Primary,),
                Image.asset(AppAssets.cornerRight),
                        ],
                      ),
              ),
              Expanded(child: Container(

              )),
              Image.asset(AppAssets.mosque,),
            ],
          ),

  ]
      ));
  }
}
