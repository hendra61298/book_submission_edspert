
import 'package:book_submission_edspert/src/constant/assets_const.dart';
import 'package:book_submission_edspert/src/constant/text_const.dart';
import 'package:book_submission_edspert/src/features/walkthrough/page/walkthrough_base_page.dart';
import 'package:flutter/cupertino.dart';


class WalkthroughPage2 extends StatelessWidget {
  const WalkthroughPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WalkthroughBaseScreen(
      title: TextConst.titlePage2,
      subtitle: TextConst.descPage2,
      childOffset: 40,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Image(
            image: AssetImage(AssetsConst.bookImagePath),
          )
        ],
      ),
    );
  }
}
