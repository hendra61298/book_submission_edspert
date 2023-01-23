

import 'package:book_submission_edspert/src/core/router/app_router_constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';



class BookCard extends StatelessWidget {
  final String imageUrl;
  final String price;
  final String title;
  final String subTitle;
  final Uri readMoreUrl;
  const BookCard({
    Key? key,
    required this.imageUrl,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.readMoreUrl,
  }) : super(key: key);

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400 ,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Card(
          elevation: 4,
          color: Colors.white70,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text("Price $price"),
              ),
              Expanded(
                flex: 1,
                child: ListTile(
                  title: Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle: Text(subTitle),
                ),
              ),
              InkWell(
                onTap: (){
                  _launchUrl(readMoreUrl);
                },
                child: const Text('Read More...',
                style: TextStyle(
                  color: Colors.blue
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
