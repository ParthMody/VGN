class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String platform;
  final String image;

  Item({required this.id,required this.name,required this.desc,required this.price,required this.platform,required this.image});

  factory Item.fromMap(Map<String,dynamic>map){
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        platform: map["platform"],
        image: map["image"]

      );
  }
  toMap()=>{
    "id":id,
    "name":name,
    "desc":desc,
    "price":price,
    "platform":platform,
    "image":image
  };
}

class CatalogModal {
  static List<Item> items = [
    Item(
      id: 1,
      name: "Red Dead Redemption 2",
      desc: "A prequel of RDR 1",
      price: 3999,
      platform: "PS4,Xbox One,Google Stadia,Microsoft Windows",
      image: "https://static.tvtropes.org/pmwiki/pub/images/rdr2.png",
    )
  ];
}

