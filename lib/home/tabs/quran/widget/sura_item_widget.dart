import 'package:flutter/material.dart';
import 'package:islami_app/core/app_assets.dart';

import '../../../../core/app_styles.dart';
class SuraItemWidget extends StatelessWidget {
  final int index;
  const SuraItemWidget({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(AppAssets.vector,),
            Text(
              '${index + 1}',
              style: AppStyles.bold16White,)
          ],
        )
      ],
    );
  }
}
