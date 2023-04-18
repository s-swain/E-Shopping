import 'package:flutter/material.dart';

class ProductRectangle extends StatelessWidget {
  const ProductRectangle({Key? key, required this.imageText, required this.numberOfPeople, required this.productName}) : super(key: key);

  final String imageText;
  final String productName;
  final String numberOfPeople;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 120,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage(
                  imageText),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Colors.black,
            ),
            productName),
        Text(
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              color: Colors.grey,
            ),
            '$numberOfPeople people \n searched for this'),

      ],
    );
  }
}

class ProductRectangleWithDescription extends StatelessWidget {
  const ProductRectangleWithDescription({Key? key,required this.imageText, required this.description}) : super(key: key);

  final String imageText;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 120,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage(
                  imageText),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 9,
              color: Colors.black,
            ),
            description),
      ],
    );
  }
}

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({Key? key,required this.imageText,required this.productName, required this.description}) : super(key: key);

  final String imageText;
  final String description;
  final String productName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 180,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage(
                  imageText),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Colors.black,
            ),
            productName),
        Text(
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 9,
              color: Colors.grey,
            ),
            description),
      ],
    );
  }
}


