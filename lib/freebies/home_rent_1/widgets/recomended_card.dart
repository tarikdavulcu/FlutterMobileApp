import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';
import 'package:ultimate_bundle/freebies/home_rent_1/helpers/colors.dart';
import 'package:ultimate_bundle/freebies/home_rent_1/models/room_model.dart';

class RecommendedCard extends StatelessWidget {
  final RoomModel room;

  const RecommendedCard({Key? key, required this.room}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.only(left: 18, bottom: 8),
      elevation: 0.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: OctoImage(
              width: 200,
              height: 200,
              image: CachedNetworkImageProvider(room.image ?? ''),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 160,
            height: 130,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  room.name!,
                  maxLines: 2,
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  room.place!,
                  maxLines: 2,
                  style: theme.textTheme.bodyMedium,
                ),
                const Spacer(),
                Row(
                  children: <Widget>[
                    Text(
                      '\$ ${room.price}.00',
                      style: theme.textTheme.headlineSmall!
                          .copyWith(color: kBlueColor),
                    ),
                    const Spacer(),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                          colors: [
                            ColorDark.error,
                            ColorLight.error,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: theme.colorScheme.error.withOpacity(.7),
                            blurRadius: 15,
                            spreadRadius: 0.2,
                            offset: const Offset(0, 8),
                          )
                        ],
                      ),
                      child: Icon(
                        Icons.bookmark,
                        color: theme.colorScheme.background,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
