import 'package:e_shopping/widgets/productRectangle.dart';
import 'package:flutter/material.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Padding(padding: const EdgeInsets.all(15),
       child: Column(
         children: [
           Row(
             children: [
               IconButton(
                 iconSize: 35,
                 icon: const Icon(Icons.menu),
                 onPressed: () {
                   // ...
                 },
               ),
               const SizedBox(width: 269),
               IconButton(
                 iconSize: 35,
                 icon: const Icon(Icons.search),
                 onPressed: () {
                   // ...
                 },
               ),
             ],
           ),
           const SizedBox(height: 50),
           const Align(
             alignment: Alignment.centerLeft,
             child: Text(
               style: TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.w500,
                 color: Colors.black
               ),
               'All Categories'
             ),
           ),
           const SizedBox(height: 50),
           Row(
             children: const [
               CategoryProduct(imageText: 'asset/images/18.jpeg', productName: 'Health & Beauty', description: '502 items in Stock'),
               SizedBox(width: 20,),
               CategoryProduct(imageText: 'asset/images/19.png', productName: 'Mens Fashion', description: '718 items in Stock'),
             ],
           ),
           const SizedBox(height: 50),
           Row(
             children: const [
               CategoryProduct(imageText: 'asset/images/20.png', productName: 'Womens Fashion', description: '1718 items in Stock'),
               SizedBox(width: 20,),
               CategoryProduct(imageText: 'asset/images/21.jpg', productName: 'Babies & Toys', description: '302 items in Stock'),
             ],
           ),
           const SizedBox(height: 50),
           Row(
             children: const [
               CategoryProduct(imageText: 'asset/images/22.jpg', productName: 'Electronics', description: '1218 items in Stock'),
               SizedBox(width: 20,),
               CategoryProduct(imageText: 'asset/images/23.jpg', productName: 'Home Appliances', description: '1818 items in Stock'),
             ],
           ),

         ],
       ),
    );
  }
}
