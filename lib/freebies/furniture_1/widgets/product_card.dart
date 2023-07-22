import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:intl/intl.dart';
import 'package:ultimate_bundle/freebies/furniture_1/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/furniture_1/helpers/screens.dart';
import 'package:ultimate_bundle/freebies/furniture_1/models/product_model.dart';
import 'package:ultimate_bundle/freebies/furniture_1/widgets/custom_network_image.dart';

enum ProductCardType { horizontal, vertical, grid }

class ProductCard extends StatelessWidget {
  final ProductModel? product;
  final ProductCardType cardType;

  const ProductCard({
    Key? key,
    this.product,
    this.cardType = ProductCardType.horizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StatelessWidget typeCard(ProductCardType type) {
      switch (type) {
        case ProductCardType.horizontal:
          return _HorizontalType(product: product);
        case ProductCardType.vertical:
          return _VerticalType(product: product);
        case ProductCardType.grid:
          return _GridType(product: product);
      }
    }

    return typeCard(cardType);
  }
}

class _HorizontalType extends StatelessWidget {
  const _HorizontalType({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel? product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(Const.radius),
        child: Container(
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Const.radius),
            color: theme.cardColor,
          ),
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomNetworkImage(
                image: product!.images!.first,
                width: Screens.width(context),
                height: 120,
              ),
              const Spacer(),
              AutoSizeText(
                product!.name!,
                style: theme.textTheme.headlineSmall
                    ?.copyWith(fontSize: 14, height: 1.2),
                textAlign: TextAlign.left,
                maxLines: 2,
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: AutoSizeText('Byneet DEV',
                        maxLines: 1,
                        style:
                            theme.textTheme.bodyMedium!.copyWith(fontSize: 10)),
                  ),
                  AutoSizeText(
                    NumberFormat.currency(
                      symbol: r'$',
                      decimalDigits: 0,
                    ).format(product!.price),
                    maxLines: 1,
                    style: theme.textTheme.headlineSmall!
                        .copyWith(color: theme.highlightColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _VerticalType extends StatelessWidget {
  const _VerticalType({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel? product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(Const.radius),
        child: Container(
          width: Screens.width(context),
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Const.radius),
            color: theme.cardColor,
          ),
          padding: const EdgeInsets.all(15),
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomNetworkImage(
                    image: product!.images!.first,
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(width: Screens.width(context) / 35),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        product!.name!,
                        style: theme.textTheme.headlineSmall
                            ?.copyWith(fontSize: 14, height: 1.2),
                        textAlign: TextAlign.left,
                        maxLines: 1,
                      ),
                      AutoSizeText(
                        'Byneet DEV',
                        maxLines: 1,
                        style:
                            theme.textTheme.bodyMedium!.copyWith(fontSize: 10),
                      ),
                      const Spacer(),
                      AutoSizeText(
                        NumberFormat.currency(
                          symbol: r'$',
                          decimalDigits: 0,
                        ).format(product!.price),
                        maxLines: 1,
                        style: theme.textTheme.headlineSmall!
                            .copyWith(color: theme.highlightColor),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                right: 0,
                top: 0,
                child: CircleAvatar(
                  radius: Screens.width(context) / 20.0,
                  backgroundColor: theme.highlightColor,
                  child: IconButton(
                    icon: const Icon(FeatherIcons.heart),
                    iconSize: Screens.width(context) / 18.0,
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _GridType extends StatelessWidget {
  final ProductModel? product;

  const _GridType({Key? key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(Const.radius),
      child: Column(
        children: [
          CustomNetworkImage(
            image: product!.images!.first,
            borderRadius: BorderRadius.circular(Const.radius),
            // height: 9,
            // width: 9,
          ),
          const SizedBox(height: Const.space15),
          AutoSizeText(
            product!.name!,
            style: theme.textTheme.headlineSmall,
          ),
          const SizedBox(height: Const.space12),
          AutoSizeText(
            NumberFormat.currency(symbol: r'$').format(product!.price),
            style: theme.textTheme.titleMedium,
          )
        ],
      ),
    );
  }
}
