part of '../home_page.dart';

class _BuildScrollableCategory extends StatelessWidget {
  const _BuildScrollableCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Text(AppLocalizations.of(context)!.categories,
              style: theme.textTheme.headlineSmall),
        ),
        const SizedBox(height: Const.space12),
        SizedBox(
          width: double.infinity,
          height: 70,
          child: ListView.builder(
            itemCount: categoryList(context).length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            itemBuilder: (context, index) {
              final category = categoryList(context)[index];

              return _BuildCategoryCard(
                category: category,
                onTap: () => Get.toNamed<dynamic>(
                  BarberaRoutes.browseBarbershop,
                  arguments: BrowseBarbershopArgument(
                    title: category.name ?? '',
                    barbershopList: bestBarbershopList,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
