import 'package:flutter/material.dart';
import 'package:my_app/modals/catalog.dart';
import '../home.dart';
import 'catalog_item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount:CatalogModal.items.length,
        itemBuilder: (context,index){
          final products=CatalogModal.items[index];
          return CatalogItem(products: products);
        },
      ),
    );
  }
}