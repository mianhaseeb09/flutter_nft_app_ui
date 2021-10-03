class Bidder {
  String? name;
  DateTime? date;
  num? price;

  Bidder({this.name, this.date, this.price});

  static List<Bidder> generateBidder() {
    return [
      Bidder(name: 'Jenny', date: DateTime.now(), price: 1.53),
      Bidder(name: 'Lucy', date: DateTime.now(), price: 1.51),
      Bidder(name: 'William', date: DateTime.now(), price: 1.50),
      Bidder(name: 'James', date: DateTime.now(), price: 1.49),
      Bidder(name: 'Evelion', date: DateTime.now(), price: 1.48),
      Bidder(name: 'Harper', date: DateTime.now(), price: 1.47),
      Bidder(name: 'Meson', date: DateTime.now(), price: 1.46)
    ];
  }

  static List<Bidder> generateHistory() {
    return [
      Bidder(name: 'William', date: DateTime.now(), price: 1.50),
      Bidder(name: 'James', date: DateTime.now(), price: 1.49),
      Bidder(name: 'Evelion', date: DateTime.now(), price: 1.48),
      Bidder(name: 'James', date: DateTime.now(), price: 1.47),
      Bidder(name: 'Harper', date: DateTime.now(), price: 1.46),
      Bidder(name: 'Ella', date: DateTime.now(), price: 1.45),
      Bidder(name: 'Jackson', date: DateTime.now(), price: 1.44),
      Bidder(name: 'Avery', date: DateTime.now(), price: 1.43)
    ];
  }
}
