class Food {
  final String thName;
  final String enName;
  final double price;
  final String value;

  Food(
    {required this.thName, 
    required this.enName, 
    required this.price, 
    required this.value});

  static List<Food> getFood() {

    return [
      Food(
        thName: "ส้มตำ",
        enName: "SomTum", 
        price: 60, 
        value: "รายการที่ 1"),
      Food(
        thName: "ข้าวผัด",
        enName: "Fried rice", 
        price: 80, 
        value: "รายการที่ 2"),
      Food(
        thName: "โจ๊ก",
        enName: "Fried rice", 
        price: 35, 
        value: "รายการที่ 3"),
      Food(
        thName: "ยำวุ้นเส้น",
        enName: "Spicy niidle salad", 
        price: 40, 
        value: "รายการที่ 4"),
      Food(
        thName: "เป็ดพะโล้",
        enName: "Steamed duck", 
        price: 160, 
        value: "รายการที่ 5"),
    ];
    
  }
  
}