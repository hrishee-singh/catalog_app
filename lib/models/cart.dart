import 'package:s/core/store.dart';
import 'package:s/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
//catalog field
  late CatalogModel _catalog;

//Collection of IDs - store Ids of each item
  final List<int> _itemIds = [];

//Get Catalog
  // ignore: unnecessary_getters_setters
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  //Get Items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

class AddMutataion extends VxMutation<MyStore> {
  final Item item;

  AddMutataion(this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}
