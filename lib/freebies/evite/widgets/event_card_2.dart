import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultimate_bundle/freebies/evite/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/evite/models/event_model.dart';

class EventCard2 extends StatelessWidget {
  final EventModel? event;

  const EventCard2({Key? key, this.event}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 200,
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 12),
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            event!.title == 'Birthday Breakfast'
                ? CustomIcons.birthday
                : CustomIcons.party,
            width: 25,
              colorFilter: const ColorFilter.mode(
                      kOrangeColor,
                      BlendMode.srcIn,
                    ),
          ),
          Text(
            event!.title!,
            style: kTitleStyle.copyWith(
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 20,
            child: Divider(
              color: kOrangeColor,
              thickness: 5,
            ),
          ),
          Text(
            '${event!.date}\n${event!.time}',
            style: kSubtitleStyle.copyWith(
              color: kOrangeColor,
            ),
          ),
          Card(
            color: kOrangeColor.withOpacity(.2),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 4,
              ),
              child: Text(
                'GOING',
                style: kTitleStyle.copyWith(
                  color: kOrangeColor,
                  fontSize: 15,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
