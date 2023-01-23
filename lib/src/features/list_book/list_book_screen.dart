import 'package:book_submission_edspert/src/constant/text_const.dart';
import 'package:book_submission_edspert/src/core/router/app_router_constant.dart';
import 'package:book_submission_edspert/src/features/list_book/bloc/list_book_bloc.dart';
import 'package:book_submission_edspert/src/features/list_book/bloc/list_book_state.dart';
import 'package:book_submission_edspert/src/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListBookScreen extends StatefulWidget {
  const ListBookScreen({Key? key}) : super(key: key);

  @override
  State<ListBookScreen> createState() => _ListBookScreenState();
}

class _ListBookScreenState extends State<ListBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("${TextConst.storeName} ${TextConst.storeType}"),
        ),
        body: BlocBuilder<ListBookBloc, ListBookState>(
          builder: (context,state){
            if(state is ListBookStateSuccess){
              return  ListView.builder(
                  itemCount: state.listBook.length,
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                       GoRouter.of(context).pushNamed(
                         AppRoute.detailBookScreen.name,
                         params: {
                           'isbn13' : state.listBook[index].isbn13
                         }
                       );
                      },
                      child: BookCard(
                        imageUrl: state.listBook[index].image,
                        price: state.listBook[index].price,
                        title: state.listBook[index].title,
                        subTitle: state.listBook[index].subtitle,
                        readMoreUrl: state.listBook[index].url,
                      ),
                    );
                  }
              );
            } else if(state is ListBookStateError){
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(state.err.toString()),
                ),
              );
            }
            else{
              return const Center(
                child:  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: LinearProgressIndicator(),
                ),
              );
            }
          }
        )
    );
  }
}

