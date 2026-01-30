import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/model/hadeth.dart';

class HadethItem extends StatefulWidget {
 HadethItem({super.key});

  @override
  State<HadethItem> createState() => _HadethItemState();

}

class _HadethItemState extends State<HadethItem> {
  Hadeth?hadeth;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();

  }
}
Future<void> loadHadethFile(int index) async {
  String fileContent = await rootBundle.loadString(
    'assets/files/hadeeth$index.txt',
  );
  // List<String> hadeethlines = fileContent.split("\n");
  // String title= hadeethlines[0];
  // String content='';
  // for(int i=0;i<hadeethlines.length;i++){
  //   content+=hadeethlines[i];
  //
  // }
  // another way do the same
  int fileIndex=fileContent.indexOf('/n');
  String title=fileContent.substring(0,fileIndex);
  String content=fileContent.substring(fileIndex+1);



}
