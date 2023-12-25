import 'package:flutter/material.dart';
import 'package:football_apps/models/football_club.dart';
import 'package:football_apps/theme.dart';

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
        return InkWell(
          child: Container(
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: blueColor.withOpacity(0.5),
                  spreadRadius: 0.1,
                  blurRadius: 0.1,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      fc.imageAsset,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  fc.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(fc.country),
                    const Text('  |  '),
                    Text(fc.yearFounded.toString())
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
