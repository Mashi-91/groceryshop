import 'package:flutter/material.dart';
import 'package:groceryshop/model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        centerTitle: true,
        title: Text('Grocery'),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              height: 50,
              child: TabBar(
                  padding: EdgeInsets.all(10),
                  indicatorWeight: 1,
                  indicatorSize: TabBarIndicatorSize.values.last,
                  tabs: const [
                    Tab(
                      child: Text(
                        'All',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(child: Text('Premium', style: TextStyle(color: Colors.black))),
                    Tab(child: Text('TamilNadu', style: TextStyle(color: Colors.black))),
                  ]),
            ),
            Expanded(
              child: TabBarView(
                  children: [
                    all(),
                    premium(),
                    Text('5'),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}


Widget all() {
  return  GridView.builder(
      itemCount: data.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.2),
      itemBuilder: (_, i) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border:
              Border.all(width: 1, color: Colors.grey.shade200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12)),
                      child: Container(
                        height: 150,
                        width: double.maxFinite,
                        child: Image.network(images[(data[i] as Map)['p_name']]!,
                            fit: BoxFit.contain),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, top: 8),
                  child: Text(
                    '${data[i]['pName']}',
                    style: TextStyle(
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 9),
                      child: Text(
                        "\$ ${data[i]['p_cost']}",
                        style: const TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      "/${data[i]['pAvailability']}",
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.add_circle_rounded,
                            color: Colors.amber),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      });
}

Widget premium() {
  return GridView.builder(
      itemCount: getFindList('Premium').length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.2),
      itemBuilder: (_, i) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border:
              Border.all(width: 1, color: Colors.grey.shade200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12)),
                      child: Container(
                        height: 150,
                        width: double.maxFinite,
                        child: Image.network(images[(getFindList('Premium')[i])['p_name']]!,
                            fit: BoxFit.contain),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, top: 8),
                  child: Text(
                    '${getFindList('Premium')[i]['p_name']}',
                    style: TextStyle(
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 9),
                      child: Text(
                        "\$ ${getFindList('Premium')[i]['p_cost']}",
                        style: const TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      "/${getFindList('Premium')[i]['pAvailability']}",
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.add_circle_rounded,
                            color: Colors.amber),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      });
}