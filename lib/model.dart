final images = {

  'Apple': "https://img.freepik.com/free-vector/hand-drawn-apple-fruit-illustration_53876-2980.jpg?w=826&t=st=1681199101~exp=1681199701~hmac=27042d4d13760ab01ab02e179d6b61916708107e9f234ada9a864da9e58eb46a",
  'Mango': "https://img.freepik.com/premium-vector/mango-isolated-white-background_114835-24910.jpg?w=2000",
  'Banana': "https://img.freepik.com/free-vector/simple-isolated-banana_1308-125007.jpg?w=1380&t=st=1681202358~exp=1681202958~hmac=6b055ddde2746088656ea418371ae502e5f8b5d295fe0902896ed84edd7d7750",
  'Orange': "https://img.freepik.com/free-vector/hand-drawn-colorful-orange-illustration_53876-2977.jpg?w=826&t=st=1681202397~exp=1681202997~hmac=b90892de7e0c4cd0f011db1cc4027fd41b15f37dedc2ed7a6a779dcc35a89d19"
};

final data = [
  {
    "p_name": "Apple",
    "p_id": 1,
    "p_cost": 30,
    "p_availability": 3,
    "p_details": "Imported from Swiss",
    "p_category": "Premium"
  },
  {
    "p_name": "Mango",
    "p_id": 2,
    "p_cost": 50,
    "p_availability": 4,
    "p_details": "Farmed at Selam",
    "p_category": "Tamilnadu"
  },
  {
    "p_name": "Banana",
    "p_id": 3,
    "p_cost": 5,
    "p_availability": 1,
    "p_category": "Premium"
  },
  {
    "p_name": "Orange",
    "p_id": 4,
    "p_cost": 25,
    "p_availability": 2,
    "p_details": "from Nagpur",
    "p_category": "Premium"
  }
];




List<Map<String, dynamic>> getFindList(String key){

  final List<Map<String, dynamic>> find = [];
  data.map((e){
    if(e['p_category']==key) {
      find.add(e);
    }
  });
  print(find);
  return find;
}


