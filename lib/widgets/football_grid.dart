import 'package:flutter/material.dart';
import 'package:football_apps/models/football_club.dart';
import 'package:football_apps/widgets/football_card.dart';

class FootballGrid extends StatelessWidget {
  final int gridCount;

  const FootballGrid({super.key, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridCount,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 2 / 3,
      ),
      itemCount: footballClubList.length,
      itemBuilder: (context, index) {
        final FootballClub fc = footballClubList[index];
        return FootballCard(fc: fc);
      },
    );
  }
}
