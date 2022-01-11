import 'package:flutter/material.dart';
import 'package:my_app/modals/catalog.dart';

class  ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item!=null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: ()=>{
          print('${item.desc}')
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle:Text(item.platform),
        trailing: Text('\₹${item.price}',
          textScaleFactor: 1.3,
        style: TextStyle(
          color: Colors.deepOrangeAccent,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }
}
