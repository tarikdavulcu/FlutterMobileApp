part of '../product_page.dart';



class _BuildLabelSection extends StatelessWidget {
  const _BuildLabelSection({
    Key? key,
    required this.label,
    required this.onViewAllTap,
  }) : super(key: key);

  final String label;
  final VoidCallback onViewAllTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: theme.textTheme.headlineSmall),
        InkWell(
          onTap: onViewAllTap,
          borderRadius: BorderRadius.circular(15),
          child: Text(AppLocalizations.of(context)!.view_all,
              style: theme.textTheme.bodyLarge),
        ),
      ],
    );
  }
}
