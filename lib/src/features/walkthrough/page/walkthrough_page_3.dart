
import 'package:book_submission_edspert/src/constant/assets_const.dart';
import 'package:book_submission_edspert/src/constant/text_const.dart';
import 'package:book_submission_edspert/src/features/walkthrough/page/walkthrough_base_page.dart';
import 'package:flutter/cupertino.dart';

class WalkthroughPage3 extends StatelessWidget {
  const WalkthroughPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WalkthroughBaseScreen(
      title: TextConst.titlePage3,
      subtitle: TextConst.descPage3,
      childOffset: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Image(
            image: AssetImage(AssetsConst.happinessPath),
          )
        ],
      ),
    );
  }
}
