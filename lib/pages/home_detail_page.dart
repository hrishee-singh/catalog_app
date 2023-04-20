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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.xl4.red800.bold.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          // ignore: deprecated_member_use
                          context.theme.buttonColor,
                        ),
                        shape:
                            MaterialStateProperty.all(const StadiumBorder())),
                    child: "Add to cart".text.make())
                .wh(120, 50)
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
                      color: context.cardColor,
                      width: context.screenWidth,
                      child: Column(
                        children: [
                          catalog.name.text.bold.lg.xl4
                              .color(context.accentColor)
                              .make(),
                          catalog.desc.text.xl
                              .textStyle(context.captionStyle)
                              .make(),
                          10.heightBox,
                          "Sed sed et sanctus sed sed invidunt ut. Amet kasd accusam amet sed amet lorem. Magna et magna sadipscing takimata invidunt sit, ipsum magna nonumy lorem elitr diam labore takimata sit voluptua, sed erat lorem invidunt vero duo elitr diam, takimata rebum ea duo consetetur consetetur takimata at. Magna ut."
                              .text
                              .textStyle(context.captionStyle)
                              .make()
                              .p16()
                        ],
                      ).py64(),
                    )))
          ],
        ).p16(),
      ),
    );
  }
}
