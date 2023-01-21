import 'dart:ffi';
import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:uas_1/data.dart';
import 'package:uas_1/product_detail.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key?key,
     required this.product,
  }) :super (key: key);
  final Product product;

   @override
   Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: context)){
          return productdetail( product: product,);
        }
      },
      child:  Card(borderOnForeground: elevation: 2
      shadowColor: Colors.green,
        color: Colors.white,
        shape: RoundedRectangleBorder( borderRadius.circular(20),)
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,),
        children: [
          Hero(tag: product.image, child: SizedBox(width: 150, child: Image.asset(product.image),)
          ),
          const SizedBox( height: 6,),
          Text('Rp$(product.price)'),
          style: const TextStyle(Color: Colors.green,
          fontSize: 20, FontWeight.w600),
          const SizedBox(height: 2,
          ),
          Text(product.quantity,
          style: const TextStyle( fontSize: 18,
          FontWeight: FontWeight.w300,),
          ),
          const SizedBox(height: 4,
          ),
          const Divider(height: 2,
          Color: Colors.grey,
          ),
          const SizedBox(height :10,),
          Row(MainAxisAlignment:MainAxisAlignment.center,
           children: <Widget>[Row(Icon(Icons.add_shopping_cart,
           Size: 20, Color: Colors.green,
           ),
           SizedBox(width: 2,),
           Text("beli",
           style: TextStyle(
            Color: Colors.green,
            fontSize: 16,
           ),
           ),
           ),
           ],
           ),
           const SizedBox(width: 8,
           ),
           Row(
            children: const [
              Icon(icons.remove_circle_outline,
              Size: 18,
              Color: Colors.green,),
              Padding(padding: EdgeInsets.Bsymmetric(horizontal: 5),
              child: Text('0'),
              ),
              Icon(Icons.add_circle_outline,
              Size: 18,
              Color: colors.green,),
            ]
           )
        ]
    )
   }
}