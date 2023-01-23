
import 'dart:async';

import 'package:book_submission_edspert/src/constant/assets_const.dart';
import 'package:book_submission_edspert/src/constant/textConst.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/theme/app_color.dart';
import '../../core/router/app_router_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    /// Set display to fullscreen.
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        /// Reset display to normal.
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
        Router.neglect(context, () {
          GoRouter.of(context).goNamed(
            AppRoute.walkthroughScreen.name,
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit:BoxFit.fill ,
              image: AssetImage(AssetsConst.backgroundPath,
              )
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child:  CircleAvatar(
                  backgroundColor: AppColor.secondPurple,
                  radius: 150,
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Image(image: AssetImage(AssetsConst.logoPath)),
                  ),
                ),
              ),
              Text(TextConst.storeName
                ,
                style: TextStyle(
                    fontFamily: GoogleFonts.aBeeZee().fontFamily,
                    fontSize: 45,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(1.0),
                        offset: const Offset(4, 6),
                        blurRadius: 10,
                      ),
                    ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:  Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                      TextConst.storeType,
                      style: TextStyle(
                          fontFamily: GoogleFonts.aBeeZee().fontFamily,
                          fontSize: 35,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(1.0),
                              offset: const Offset(4, 6),
                              blurRadius: 10,
                            ),
                          ]
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
