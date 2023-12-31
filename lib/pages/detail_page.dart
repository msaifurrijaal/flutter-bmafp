import 'package:flutter/material.dart';
import 'package:football_apps/models/football_club.dart';
import 'package:football_apps/config/theme.dart';
import 'package:football_apps/widgets/atribut_card.dart';
import 'package:football_apps/widgets/favorite_button.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final FootballClub fc;

  const DetailPage({super.key, required this.fc});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        fc.imageAsset,
                        height: screenHeight * 0.6,
                        width: screenWidth,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 40,
                        left: 20,
                        child: Container(
                          //padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: whiteColor.withOpacity(0.6),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: whiteColor.withOpacity(0.6),
                          ),
                          child: const FavoriteButton(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: screenWidth,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          fc.name,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Description :',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          fc.description,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            AtributCard(
                              text: fc.country,
                              icon: const Icon(
                                Icons.language,
                                size: 20,
                              ),
                            ),
                            AtributCard(
                              text: fc.yearFounded.toString(),
                              icon: const Icon(
                                Icons.date_range,
                                size: 20,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: blueColor.withOpacity(
                    0.2,
                  ), // Set the shadow color to blue with 0.2 opacity
                  offset:
                      const Offset(2.0, 2.0), // Set the offset of the shadow
                  blurRadius: 5.0,
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  const Size(double.infinity, 48),
                ),
              ),
              onPressed: () {
                launchUrl(Uri.parse(fc.webUrl));
              },
              child: Text(
                'Goes to official page',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w700, color: whiteColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
