class Produk {
  final String? cameraName;
  final num? price;
  final int? color;
  final String? image;

  Produk({
    this.cameraName,
    this.price,
    this.color,
    this.image,
  });

  List<Produk> get listCamera => [
        Produk(
          cameraName: 'Mini Mint 7+',
          price: 49.90,
          color: 0xff70b1a1,
          image: 'images/InstaxMini7plus_Mint_R.png',
        ),
        Produk(
          cameraName: 'Mini Blue 7+',
          price: 50.90,
          color: 0xff77a0c6,
          image: 'images/InstaxMini7plus_Blue_R.png',
        ),
        Produk(
          cameraName: 'Mini Choral 7+',
          price: 51.90,
          color: 0xffb0463c,
          image: 'images/InstaxMini7plus_Choral_R.png',
        ),
        Produk(
          cameraName: 'Mini Pink 7+',
          price: 52.90,
          color: 0xfffcf9496,
          image: 'images/InstaxMini7plus_Pink_R.png',
        ),
        Produk(
          cameraName: 'Mini Lavender 7+',
          price: 53.90,
          color: 0xff855f8c,
          image: 'images/InstaxMini7plus_Lavender_R.png',
        ),
      ];
}
