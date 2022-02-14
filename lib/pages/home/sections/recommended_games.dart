import 'package:flutter/material.dart';
import 'package:steam_clone_ui/models/store_model/store_model_recommended.dart';
import 'package:steam_clone_ui/shared/color_pallet.dart';

class Recommended extends StatelessWidget {
  const Recommended({Key? key, required this.recommendedGames})
      : super(key: key);

  final RecommendedGamesModel recommendedGames;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(recommendedGames.bannerGame),
          fit: BoxFit.cover,
          width: 90,
          height: 120,
        ),
        Text(
          recommendedGames.titleGame,
          style: TextStyle(color: AplicationColors.defaultText),
        ),
        Text(recommendedGames.gameValue.toString(),
            style: TextStyle(color: AplicationColors.lightBlue)),
      ],
    );
  }
}
