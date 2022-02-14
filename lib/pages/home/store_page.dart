// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:steam_clone_ui/api/store_api/recommended_store.dart';
import 'package:steam_clone_ui/models/store_model/store_model_recommended.dart';
import 'package:steam_clone_ui/pages/home/sections/recommended_games.dart';
import 'package:steam_clone_ui/pages/home/widgets/icon_button.dart';
import 'package:steam_clone_ui/shared/color_pallet.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AplicationColors.backgroundColor,
        appBar: AppBar(
          flexibleSpace: Container(height: 100),
          elevation: 0.0,
          backgroundColor: AplicationColors.backgroundColor,
          leading: Card(
            margin: EdgeInsets.all(6),
            color: AplicationColors.lightBlue,
            elevation: 10.0,
            shadowColor: AplicationColors.lightBlue,
          ),
          title: Text('Store'),
          centerTitle: true,
          actions: [
            CustomIconButton(
              customIcon: Icon(Icons.search),
              voidCallback: () {},
            ),
            Stack(
              alignment: Alignment.topRight,
              children: [
                CustomIconButton(
                  customIcon: Icon(Icons.store_mall_directory_rounded),
                  voidCallback: () {},
                ),
                Container(
                  color: AplicationColors.alert,
                  width: 18,
                  height: 18,
                  child: Center(
                    child: Text('2'),
                  ),
                ),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Recommended',
                    style: TextStyle(
                      color: AplicationColors.lightBlue,
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemExtent: 120.0,
                    itemBuilder: ((context, index) {
                      RecommendedGamesModel recommendedGames =
                          recommendedGameList[index];
                      return Recommended(recommendedGames: recommendedGames);
                    }),
                    itemCount: recommendedGameList.length,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
