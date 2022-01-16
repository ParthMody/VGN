class News{
  final int id;
  final String headl;
  final String desc;
  final String link;
  final String image;
  
  News({required this.id,required this.headl,required this.desc,required this.link,required this.image});
  
  factory News.fromMap(Map<String,dynamic>map){
    return News(
        id: map["id"],
        headl: map["headl"],
        desc: map["desc"],
        link: map["link"],
        image: map["image"]
    );
  }
  toMap()=>{
    "id":id,
    "headl":headl,
    "desc":desc,
    "link":link,
    "image":image

  };
}

class NewsModal{
  static List<News> news=[
    News(
        id: 1,
        headl: "WWE 2K22’s cover art and pre-order bonus has reportedly leaked",
        desc: "WWE 2K22’s cover art has reportedly leaked, along with information about pre-order bonuses, and the WWE 2K22 Deluxe Edition.",
        link: "https://www.videogameschronicle.com/news/wwe-2k22s-cover-art-and-pre-order-bonus-has-reportedly-leaked/",
        image: "https://images.indianexpress.com/2021/12/0cfab726-1103-49ba-9678-b94a0509bb75.jpg"
    )
  ];
}