
import 'package:book_submission_edspert/src/config/theme/app_color.dart';
import 'package:book_submission_edspert/src/constant/text_const.dart';
import 'package:book_submission_edspert/src/core/router/app_router.dart';
import 'package:book_submission_edspert/src/core/router/app_router_constant.dart';
import 'package:book_submission_edspert/src/features/detail_book/bloc/detail_book_bloc.dart';
import 'package:book_submission_edspert/src/features/detail_book/bloc/detail_book_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailBookScreen extends StatelessWidget {
  const DetailBookScreen({Key? key}) : super(key: key);

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("${TextConst.storeName} ${TextConst.storeType}"),
      ),
      body: BlocBuilder<DetailBookBloc, DetailBookState>(
          builder: (context, state){
            if(state is DetailBookStateSuccess) {
              return  SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 4,
                    color: Colors.white70,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: CachedNetworkImage(
                                imageUrl: state.book.image,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: ListTile(
                                title: Text(
                                  state.book.title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                subtitle: Text(state.book.subtitle),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(state.book.authors,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(state.book.year,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text("Price ${state.book.price}",
                            textAlign: TextAlign.left,
                          ),
                        ),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 13.0),
                           child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                onPressed: (){
                                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Coming Soon"), backgroundColor: AppColor.mainPurpleColor,));
                                },
                                child: const Text('BUY'),
                            ),
                        ),
                       ),
                       const Expanded(
                          child:  SizedBox(
                            height: 50,
                          ),
                        ),
                         ListTile(
                           title: Text(state.book.title),
                           subtitle: Text(state.book.desc),
                         ),
                        InkWell(
                          onTap: (){
                            _launchUrl(state.book.url);
                          },
                          child: const Text('Read More...',
                            style: TextStyle(
                                color: Colors.blue
                            ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Similar"),
                              GestureDetector(
                                onTap: (){
                                  GoRouter.of(context).goNamed(
                                    AppRoute.listBookScreen.name
                                  );
                                },
                                child: const Text(
                                  "More",
                                  style: TextStyle(
                                    color: Colors.blue
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: state.listBook.length,
                                itemBuilder: (context ,index){
                                    return GestureDetector(
                                        onTap: (){
                                          GoRouter.of(context).pushReplacementNamed(
                                            AppRoute.detailBookScreen.name,
                                            params: {
                                              'isbn13': state.listBook[index].isbn13
                                            }
                                          );
                                        },
                                        child: CachedNetworkImage(imageUrl: state.listBook[index].image));
                                }
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }else if(state is DetailBookStateError) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(state.err.toString()),
                ),
              );
            }else{
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: LinearProgressIndicator(),
                ),
              );
            }
          }
      ),
    );
  }
}
