part of '../notification_page.dart';

class _BuildNotificationCard extends StatelessWidget {
  final NotificationModel notification;

  const _BuildNotificationCard({
    Key? key,
    required this.notification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(bottom: Const.space15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            Assets.offer,
            height: 25,
            colorFilter: ColorFilter.mode(
              theme.primaryColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: Const.space15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(notification.title ?? '',
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontSize: 14,
                    )),
                const SizedBox(height: Const.space15),
                ReadMoreText(
                  notification.description ?? '',
                  colorClickableText: theme.primaryColor,
                  style: theme.textTheme.titleMedium,
                  trimLines: 3,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '... Read more',
                  trimExpandedText: ' Less',
                ),
                const SizedBox(height: Const.space12),
                Text(
                  '${notification.date} ${notification.time}',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: Const.space15),
              ],
            ),
          )
        ],
      ),
    );
  }
}
