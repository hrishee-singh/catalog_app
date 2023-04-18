class CatalogModel {
  static final items = [
    Item(
      id: "1",
      name: "iPhone 14 Pro",
      desc: "Apple iPhone 14th Gen",
      price: 999,
      color: "#33505a",
      image:
          "https://w7.pngwing.com/pngs/60/414/png-transparent-iphone-14-thumbnail.png",
    )
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
