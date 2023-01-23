

import 'package:book_submission_edspert/src/constant/assets_const.dart';
import 'package:book_submission_edspert/src/features/walkthrough/page/walkthrough_base_page.dart';
import 'package:flutter/cupertino.dart';

import '../../../constant/textConst.dart';


class WalkthroughPage1 extends StatelessWidget {
  const WalkthroughPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WalkthroughBaseScreen(
        title: TextConst.welcome ,
        subtitle:TextConst.welcomeDesc,
      childOffset: 60,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            Image(
              height: 200,
              image: AssetImage(AssetsConst.logoPath),
            )
          ],
        ),
    );
  }
}
