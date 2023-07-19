// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practicee/data/response/status.dart';
import 'package:get_x_practicee/resources/routes/routes_name.dart';
import 'package:get_x_practicee/view_model/home_viewmodel.dart';
import 'package:get_x_practicee/view_model/user_pref.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = Get.put(HomeViewModel());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() {
          switch (homeController.requestState.value) {
            case ApiStatus.loading:
              return CircularProgressIndicator();
            case ApiStatus.error:
              return Text(homeController.error.value.toString());
            case ApiStatus.computed:
              return ListView.builder(
                itemCount: homeController.rxNews.value.articles!.length,
                itemBuilder: (context, index) {
                  final article = homeController.rxNews.value.articles![index];
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    elevation: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  NetworkImage(article.urlToImage.toString()),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                article.title.toString(),
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Text(
                                article.description.toString(),
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Published by ${article.source!.name} on ${article.publishedAt}',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
          }
          // return SizedBox();
        }),
      ),
    );
  }
}
