import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:task_figma/pages/add_new_invoice.dart';

import 'finalpage.dart';

class Natification extends StatelessWidget {
  const Natification({super.key});

  @override
  Widget build(BuildContext context) {
    List titles = ["MyG Kakkanad ", "Ayur Pharma", "you", 'puma Idappally'];
    List title2 = [
      "has approved your invoice of 128 Point",
      "has approved your invoice of 128 Point",
      "successfully added 500 wonder points to your wallet",
      "has declined your invoice of 725 Points"
    ];
    List avatar = ["assets/images/a.png",
    "assets/images/f.png","","assets/images/puma.png"];
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 230, 204, 203),
                  Color.fromRGBO(215, 228, 238, 1),
                  Color.fromARGB(255, 240, 205, 197)
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(
                                  context,
                                  (MaterialPageRoute(
                                      builder: (context) =>
                                          const AddNewInvoice())),
                                );
                        },
                        child: Card(
                          elevation: 3,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: const Icon(
                              Icons.keyboard_arrow_left,
                              color: Color(0xFF0966B3),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      const Text(
                        'Notifications',
                        style: TextStyle(
                            color: Color(0xFF0966B3),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 13,),
                           InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  (MaterialPageRoute(
                                      builder: (context) =>
                                           FinalPage())),
                                );
                            },
                             child: Card(
                                  elevation: 3,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(5))),
                                    child: const Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Color(0xFF0966B3),
                                    ),
                                  ),
                                ),
                           ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: ListTile(
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    titles[index],style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(title2[index]),
                                ],
                              ),

                              leading: CircleAvatar(
                                backgroundImage: AssetImage(avatar[index]),
                                //backgroundImage: AssetImage(avatar[index]),
                              ),
                              // trailing: Icon(
                              //   icons[index],
                              // ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
