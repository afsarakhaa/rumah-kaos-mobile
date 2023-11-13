// Di luar kelas, sebagai penyimpanan sementara
List<ShopItem> globalShopItems = [];

class ShopItem {
  final String name;
  final int amount;
  final String description;
  final int price;

  ShopItem(this.name, this.amount, this.description, this.price);
}
