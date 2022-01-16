import 'package:flutter/material.dart';
import 'package:my_app/modals/catalog.dart';
import 'catalog_image.dart';

class CatalogItem extends StatefulWidget {
  final Item products;

  const CatalogItem({Key? key, required this.products})
      : assert(products!=null),
        super(key: key);

  @override
  State<CatalogItem> createState() => _CatalogItemState();
}

class _CatalogItemState extends State<CatalogItem> {
  Color _favIconColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 150.0,
      padding:EdgeInsets.only(bottom: 10.0),
      color: Colors.white70,
      child: new Card(
        child:Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Hero(
                tag:Key(widget.products.id.toString()),
                child: Card(
                    child: CatalogImage(image:widget.products.image)
                ),
              ),
              Expanded(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.products.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Expanded(
                    child: Text(widget.products.platform,
                      style:Theme.of(context).textTheme.caption,
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\₹${widget.products.price}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      IconButton(
                        onPressed:()=>{
                          setState((){
                            if(_favIconColor==Colors.grey){
                              _favIconColor=Colors.pink;
                            }else{
                              _favIconColor=Colors.grey;
                            }
                          },
                          ),
                        },
                        icon:Icon(
                          Icons.favorite,
                        ),
                        color: _favIconColor,
                      ),
                    ],
                  ),
                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}