import 'package:flutter/material.dart';
import 'package:my_app/modals/catalog.dart';

class HomeDetails extends StatelessWidget {
  final Item products;
  const HomeDetails({Key? key, required this.products})
      : assert(products!=null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VGN'),
        centerTitle: true,
      ),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Hero(
                  tag: Key(products.id.toString()),
                  child: Image.network(products.image,
                    width:75,
                    height:125,
                  )
              ),
              Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        Text(products.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Text(products.desc,
                            style:TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
      );
  }
}
