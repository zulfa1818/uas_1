import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uas_1/data.dart';
import 'package:uas_1/item_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}
final data = Product('bayam', '2000', '1ikat', 'assets/1.png','test 123' );
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var icons;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu
        ),
        title: const Text('toko buah dan sayur',style: TextStyle(color: Colors.black),
        ),
        actions: [
          Row(
            children: [const Icon(Icons.search,
            color: Colors.black,
            )
            Stack(
                 children: [
                  IconButton(onPressed: ((){})
                  icon: const Icon(Icons.shopping_cart),color: Colors.black,
                  ),
                 Positioned(top: 0
                 right: 3,
                 child: Container(height: 20,
                 width: 20,
                 decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                 child: const Center(child: Text("2",style: TextStyle(color: Colors.white,
                 fontWeight: FontWeight.w800,
                 ),
                 ),
                 ),
                 ),
                 )
                 ], 
            )
            ],
          )
        ],



      ),
      body: Container(padding: const EdgeInsets.all(10),
      child: GridView.builder( gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      crossAxisCount: 2,
      childAspectRatio: 0,6,),
      itemBuilder: ((context, index) {
        
      }
      ),
      children: [
        Card(
          elevation: 2,
          shadowColor: Colors.green,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column( children: [
            Hero(tag: data.image, child: SizedBox
            width: 150,
            child: Image.asset(data.image)
            )
            const SizedBox(
              height: 6,
            )
            Text(
              'Rp ${data.price}',
              style: const TextStyle(color: Colors.green,fontSize: 20,fontWeight.w600),
            )
            const SizedBox(
              height: 2,
            )
           Text(data.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
           )
           const SizedBox(
              height: 2,
            )
             Text(data.quantity, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
           )
           const SizedBox(
              height: 4,
            )
            const Divider(height: 2,color: Colors.grey,),
            const SizedBox(
              height: 10,
            )
            Row(children: const [
              Icon(Icons.add_shopping_cart,size: 20,
              color: Colors.green,)
              Text("beli" style: TextStyle(color: Colors.green,fontSize: 16),
              )
              const SizedBox(
              height: 8,
            )
            // ignore: unnecessary_const
            Row(children: const[ 
              Icon(Icons.remove_circle_outline, size: 18, color: Colors.green,)
              Padding(padding: EdgeInsets.symmetric(horizontal: 5),
              )
              Icon(icons.add_circle_outline, size: 18, color: Colors.green,
              ),
            ],
            )
            ],
            )
          ],
          ),
        ),
        Card(),
      ],)
      ),
      itemBuilder: (context, index) {
        return ItemWidget(product: allData[index]);
      },
      itemCount: allData.length,
      ),
      
      ),
    )
  }
}
