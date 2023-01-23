
import 'package:book_submission_edspert/src/constant/assets_const.dart';
import 'package:book_submission_edspert/src/features/walkthrough/page/walkthrough_base_page.dart';
import 'package:flutter/cupertino.dart';

import '../../../constant/textConst.dart';


class WalkthroughPage4 extends StatelessWidget {
  const WalkthroughPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WalkthroughBaseScreen(
      title: TextConst.titlePage4,
      subtitle: TextConst.descPage4,
      childOffset: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Image(
            image: AssetImage(AssetsConst.kidsReadPath),
          )
        ],
      ),
    );
  }
}
