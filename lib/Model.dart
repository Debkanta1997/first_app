class Coffee {
  final String name;
  final String type;
  final String shortDesc;
  final String desc;
  final String image;
  final int rate;
  final int price;

  Coffee(
      {this.name,
      this.type,
      this.shortDesc,
      this.desc,
      this.image,
      this.rate,
      this.price});
}

List<Coffee> menu = [
  Coffee(
      name: "Milk",
      type: 'Kitten Food',
      shortDesc: "Espresso dengan milky dan gurih.",
      desc:
          "Kalau kamu gak terlalu menikmati kopi yang cenderung pahit, kamu bisa pesan macchiato sebagai alternatif.",
      image: "assets/images/milk.png",
      rate: 5,
      price: 130),
  Coffee(
      name: "Milk",
      type: "Hot",
      shortDesc: "Espresso dengan milky dan gurih.",
      desc:
          "Kalau kamu gak terlalu menikmati kopi yang cenderung pahit, kamu bisa pesan macchiato sebagai alternatif. Rasio steamed milk dalam minuman ini lebih besar dari espresso, sehingga ada sentuhan milky dan gurih.",
      image: "assets/images/milk.png",
      rate: 5,
      price: 22000),
  Coffee(
      name: "Milk",
      type: "Hot",
      shortDesc: "Ekstrak kopi dengan buih putih",
      desc:
          "Minuman kopi paling dasar ini biasanya disajikan dalam demitasse alias cangkir khusus espresso berukuran 30 mililiter (satu shot) sampai 118 mililiter. Espresso bertekstur pekat dan pahit, dengan buih putih alias crema di atasnya yang terbentuk dari tekanan minyak dalam bijih kopi.",
      image: "assets/images/milk.png",
      rate: 5,
      price: 12000),
  Coffee(
      name: "Milk",
      type: "Hot",
      shortDesc: "Espresso dengan air panas",
      desc:
          "Americano terdiri dari satu shot espresso yang dituangkan dalam cangkir berukuran 178 mililiter yang dicampur dengan air panas hingga memenuhi gelas. Jenis lainnya adalah doppio, yakni segelas Americano dengan dua shot espresso. Minuman ini kerap disajikan dalam panas maupun dingin yang disebut iced Americano.",
      image: "assets/images/milk.png",
      rate: 5,
      price: 15000),
];
