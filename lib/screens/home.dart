import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/modals/catalog.dart';
import 'package:my_app/widgets/ItemWidget.dart';
import 'package:my_app/widgets/drawer.dart';
import 'dart:convert';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState(){
    super.initState();
    loadData();
  }
  loadData() async{
    var products = await rootBundle.loadString("assets/files/products.json");
    // print(products);
    var decodeData=jsonDecode(products);
    // print(decodeData);
    var productsData=decodeData["products"];
    // print(productsData);
    CatalogModal.items=List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final String name="World";
    return Scaffold(
      appBar: AppBar(
        title: Text('VGN'),
        centerTitle: true,
        backgroundColor:Colors.deepOrange,
      ),
      body:Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
          itemCount:CatalogModal.items.length,
          itemBuilder: (context,index){
            return ItemWidget(
              item:CatalogModal.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
