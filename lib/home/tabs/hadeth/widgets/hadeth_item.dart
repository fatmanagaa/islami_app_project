import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/app_styles.dart';
import 'package:islami_app/model/hadeth.dart';

class HadethItem extends StatefulWidget {
  final int index;
  Hadeth?hadeth;
 HadethItem({super.key,required this.index});


  @override
  State<HadethItem> createState() => _HadethItemState();

}

class _HadethItemState extends State<HadethItem> {

  Hadeth?hadeth;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadHadethFile(widget.index);
  }
  Future<void> loadHadethFile(int index) async {
    try {
      String fileContent = await rootBundle.loadString(
          'assets/files/hadeeth${index + 1}.txt'

      );

      List<String> lines = fileContent.split('\n');

      String title = lines[0];
      String content = '';

      for (int i = 1; i < lines.length; i++) {
        content += lines[i] + '\n';
      }

      setState(() {
        hadeth = Hadeth(title: title, content: content);
      });
    } catch (e) {
      print('ERROR LOADING HADETH: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),

      ),
      child:hadeth==null?
          Center(
            child: CircularProgressIndicator(
              color: AppColors.blackBg,
            ),
          )
          :

      Column(
        children: [
          Text(hadeth?.title??'',style: AppStyles.bold24Black,),
          Expanded(child: SingleChildScrollView(child: Text(hadeth?.content??'',style: AppStyles.bold16Black,))),
      
        ],
      ),
    );

  }
}

