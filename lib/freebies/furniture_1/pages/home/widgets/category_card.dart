part of '../home_page.dart';

class _CategoryCard extends StatelessWidget {
  final CategoryModel? category;
  final VoidCallback? onCategoryTap;

  const _CategoryCard({Key? key, this.category, this.onCategoryTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final provider = Provider.of<ThemeProvider>(context);

    return Container(
      width: 70,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.all(7),
      margin: const EdgeInsets.only(right: Const.space15),
      child: InkWell(
        onTap: onCategoryTap,
        child: Column(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: theme.colorScheme.background,
              child: SvgPicture.asset(
                category!.icon!,
                colorFilter: ColorFilter.mode(
                  (provider.isDarkTheme == true)
                      ? ColorDark.fontTitle
                      : ColorLight.fontTitle,
                  BlendMode.srcIn,
                ),
              ),
            ),
            const Spacer(),
            AutoSizeText(
              category!.name!,
              style: theme.textTheme.bodyMedium,
              maxFontSize: 14,
              softWrap: true,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
