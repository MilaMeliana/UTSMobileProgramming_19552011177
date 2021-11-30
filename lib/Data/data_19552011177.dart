class Produk {
  final String? cameraName;
  final String? image;
  final num? price;
  final int? color;

  Produk({
    this.cameraName,
    this.image,
    this.price,
    this.color,
  });

  List<Produk> get listCamera => [
        Produk(
          cameraName: 'Instax Mini Mint 7+',
          image: 'images/InstaxMini7plus_Mint_R.png',
          price: 49.90,
          color: 0xff70b1a1,
        ),
        Produk(
          cameraName: 'Instax Mini Blue 7+',
          image: 'images/InstaxMini7plus_Blue_R.png',
          price: 50.90,
          color: 0xff77a0c6,
        ),
        Produk(
          cameraName: 'Instax Mini Choral 7+',
          image: 'images/InstaxMini7plus_Choral_R.png',
          price: 51.90,
          color: 0xffb0463c,
        ),
        Produk(
          cameraName: 'Instax Mini Pink 7+',
          image: 'images/InstaxMini7plus_Pink_R.png',
          price: 52.90,
          color: 0xfffcf9496,
        ),
        Produk(
          cameraName: 'Instax Mini Lavender 7+',
          image: 'images/InstaxMini7plus_Lavender_R.png',
          price: 53.90,
          color: 0xff855f8c,
        ),
      ];
}
