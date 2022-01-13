import 'package:firebase_auth/firebase_auth.dart';
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
  final _auth = FirebaseAuth.instance;

  void initState(){
    super.initState();
    loadData();
    getCurrentUser();
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

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        var loggedinUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // final String name="World";
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
              }),
        ],
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