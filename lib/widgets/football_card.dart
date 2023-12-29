import 'package:flutter/material.dart';
import 'package:football_apps/config/app_route.dart';
import 'package:football_apps/models/football_club.dart';
import 'package:football_apps/pages/detail_page.dart';
import 'package:football_apps/theme.dart';

class FootballCard extends StatelessWidget {
  const FootballCard({
    super.key,
    required this.fc,
  });

  final FootballClub fc;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        MyRoutes.detailRoute,
        arguments: fc,
      ),
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
  }
}
