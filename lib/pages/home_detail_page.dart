import 'package:flutter/material.dart';
import 'package:s/models/catalog.dart';
import 'package:s/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog})
      : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.xl4.red800.bold.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          MyTheme.darkBluishColor,
                        ),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Buy".text.make())
                .wh(100, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
                    height: 30.0,
                    edge: VxEdge.TOP,
                    arcType: VxArcType.CONVEY,
                    child: Container(
                      color: Colors.white,
                      width: context.screenWidth,
                      child: Column(
                        children: [
                          catalog.name.text.bold.lg.xl4
                              .color(MyTheme.darkBluishColor)
                              .make(),
                          catalog.desc.text.xl
                              .textStyle(context.captionStyle)
                              .make(),
                          10.heightBox,
                        ],
                      ).py64(),
                    )))
          ],
        ).p16(),
      ),
    );
  }
}
