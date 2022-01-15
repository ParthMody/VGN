import 'package:flutter/material.dart';
import 'package:my_app/modals/catalog.dart';
import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item products;

  const CatalogItem({Key? key, required this.products})
      : assert(products!=null),
        super(key: key);

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
                tag:Key(products.id.toString()),
                child: Card(
                    child: CatalogImage(image:products.image)
                ),
              ),
              Expanded(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(products.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Expanded(
                    child: Text(products.platform,
                      style:Theme.of(context).textTheme.caption,
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\₹${products.price}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      IconButton(
                        onPressed:()=>{
                          Text('Added to favourites'),
                        },
                        icon:Icon(
                          Icons.favorite,
                        ),
                        color: Colors.pinkAccent,
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