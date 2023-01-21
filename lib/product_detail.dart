// ignore_for_file: dead_code

import 'dart:ffi';
import 'dart:html';

import 'package:flutter/material.dart';

import 'package:uas_1/data.dart';

class productdetail extends StatefulWidget{
  const productdetail({
    Key?key,
    required this.product,
  }) :super(key: key);

  final Product product;

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class ProductDetail {
}

class _ProductDetailState extends State<productdetail> {
  int Count = 1;

  void addCount() {
    Count = Count + 1;
    setState(() {});
  }

  void removeCount() {
    if (Count !=0) {
      Count = Count - 1;
      setState(() {});
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
      elevation: 1,
      leading: IconButton(icon: const Icon(Icons.arrow_back_ios,
      color: Colors.black,),
      ),
      onPressed: () {
        Navigator.pop(context);
      } , 
      ),
      title: const Text('detail',
      style: TextStyle(color: Colors.black),
      ),
      actions: const[

        Padding(padding: EdgeInsets.only((right: 8.0),
        child: Icon(Icons.favorite_border,
        color: Colors.black,
        ),
        ),
        ),
        Body: Column(CrossAxisAlignment.Center,
        children: [
          text(widget.Product.name,
          style: const TextStyle(fontsize: 50,
          FontWeight: FontWeight.w700,),
          ),
          Center(child: Hero(tag: widget.Product.Image, child: Container(
           height: MediaQuery.of(context).size.height * 0.45,
           Decoration: BoxDecoration(
            Image: DecorationImage(image: AssetImage(widget.product.Image),
            fit: BoxFit.contain)),
          ),
          ),
          ),
          Container(
            Color: Colors.grey[200],
            Padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Text('Rp ${widget.Product.price}',
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                Text('/${widget.product.quantity}',
                style: const TextStyle(
                  color: colors.green,
                  ontSize: 20,
                      fontWeight: FontWeight.w400),
                      ),
                )
              ]
            )
           Expanded(child: Container(Color: Colors.grey[200],
           Padding: const EdgeInsets.all(20),
           child: Text(widget.Product.descciption,
           style: const TextStyle(
            FontSize: 15, FontWeight: FontWeight.w500,
           ),
           TextAlign: TextAlign.justify,
           Overflow: TextOverflow.ellipsis,
           maxlines: 5,
           ),
           ),
           ), 
          ),
            Container(
              height: 100,
              Padding: const EdgeInsets.symmetrical(horizontal: 20),
              Alignment: Alignment.bottomcenter,
              Color: Colors.grey,
              child: row(MainAxisAlignment.spaceround,
              children: [
                center(Child: Row(
                  MainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: removeCount, icon: const Icon(
                      Icons.removecount,
                      icon: const Icon(Icons.remove_circle_outline,
                      color: colors.white,
                      size: 30,
                      ),
                    ),
                    Text(
                      Count.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    center(
                      child: Container(
                        width: 190,
                        height: 60,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(radius.circular(25),
                          ),
                          color:  Colors.green
                        ),child: const Center(
                          child: Text("pesan",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight:  FontWeight.w700
                          ),),
                        ),
                      )
                    )
                    ),
                  ],
                ))
              ])
            )
        ]
        );
      )

  }
}