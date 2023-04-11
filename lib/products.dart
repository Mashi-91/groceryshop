

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  static const routename = '/categorydetailpages';

  @override
  Widget build(BuildContext context) {
    final Args =
    ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final title = Args['title'] as String;
    final categoryId = Args['id'] as String;
    // final detailid = authProv.findbyid(categoryId);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.81,
            child: GridView.builder(
                // itemCount: detailid.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                itemBuilder: (_, i) {
                  return GestureDetector(
                    onTap: (){
                      // Navigator.of(context).pushNamed(ProductDeatailPage.routename,arguments: {
                      //   'title': detailid[i].title,
                      //   'image': detailid[i].image,
                      //   'price': detailid[i].price,
                      //   'category': title,
                      //   'description': detailid[i].description,
                      //   'unit': detailid[i].unit
                      // });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 1, color: Colors.grey.shade200),
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
                                // child: Container(
                                //   height: 150,
                                //   width: double.maxFinite,
                                //   child: Image.network(detailid[i].image,
                                //       fit: BoxFit.fill),
                                // ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.favorite_border_rounded,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Padding(
                          //   padding: EdgeInsets.only(left: 8, top: 8),
                          //   child: Text(
                          //     detailid[i].title,
                          //     style: TextStyle(fontWeight: FontWeight.w600),
                          //   ),
                          // ),
                          // Row(
                          //   children: [
                          //     Padding(
                          //       padding: EdgeInsets.only(left: 9),
                          //       child: Text(
                          //         NumberFormat.simpleCurrency()
                          //             .format(detailid[i].price),
                          //         style: const TextStyle(
                          //             color: Colors.orange,
                          //             fontWeight: FontWeight.w600),
                          //       ),
                          //     ),
                          //     Text(
                          //       "${detailid[i].unit}",
                          //       style: TextStyle(
                          //           color: Colors.grey,
                          //           fontWeight: FontWeight.w400),
                          //     ),
                          //     Spacer(),
                          //     GestureDetector(
                          //       onTap: () {},
                          //       child: Padding(
                          //         padding: EdgeInsets.only(right: 8),
                          //         child: Icon(Icons.add_circle_rounded,
                          //             color: Colors.amber),
                          //       ),
                          //     )
                          //   ],
                          // )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
