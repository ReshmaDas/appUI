import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task_figma/pages/home_page.dart';

import '../widgets/listview.dart';
import 'natifications.dart';

class AddNewInvoice extends StatefulWidget {
  const AddNewInvoice({super.key});

  @override
  State<AddNewInvoice> createState() => _AddNewInvoiceState();
}

class _AddNewInvoiceState extends State<AddNewInvoice> {
  @override
  Widget build(BuildContext context) {
    List titles = [
      "MyG Kakkanad",
      "Allen Aolly Idappally",
      "Nike Idappallt",
      "Dessi Cuppa",
      "Zudio Kakkanad",
      "Ayur Pharma Kochi",
      "Nike Idappally"
    ];

    List subtitles = [
      "Invoice No: 564446456",
      "Invoice No: 556989890",
      "Invoice No: 556989896",
      "Invoice No: 556989896",
      "Invoice No: 556989896",
      "Invoice No: 564446456",
      "Invoice No: 564446456"
    ];
    List subtitles2 = [
      "29 Dec,2023",
      "29 Dec,2023",
      "29 Dec,2023",
      "29 Dec,2023",
      "29 Dec,2023",
      "29 Dec,2023",
      "29 Dec,2023",
    ];
    List subtitles3 = [
      "Pending",
      "Pending",
      "Approved",
      "Approved",
      "Peding",
      "Rejected",
      "Approved"
    ];

    List title2 = ["1320", "780", "2300", "180", "690", "320", "2300"];

    List avatar = [
      "assets/images/a.png",
      "assets/images/b.png",
      "assets/images/c.png",
      "assets/images/d.png",
      "assets/images/e.png",
      "assets/images/f.png",
      "assets/images/c.png"
    ];
    List status = [
      Icon(Icons.padding),
      Icon(Icons.padding),
      Icon(Icons.approval_rounded),
      Icon(Icons.approval_rounded),
      Icon(Icons.padding),
      Icon(Icons.padding),
      Icon(Icons.approval_rounded)
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
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
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(
                                  context,
                                  (MaterialPageRoute(
                                      builder: (context) =>
                                          const HomePage())),
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
                              'Add New Invoice',
                              style: TextStyle(
                                  color: Color(0xFF0966B3),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  (MaterialPageRoute(
                                      builder: (context) =>
                                          const Natification())),
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
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 16, right: 16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 170,
                                        width: 170,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 20),
                                          child: Card(
                                            elevation: 2,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Color(0xFF0966B3),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Expanded(
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF0966B3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Icon(
                                                    Icons.qr_code_scanner,
                                                    size: 35,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'Scan Your Bill',
                                          style: TextStyle(
                                              color: Color(0xFF0966B3),
                                              fontSize: 16),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 170,
                                        width: 170,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 20),
                                          child: Card(
                                            elevation: 2,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Color(0xFF0966B3),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Expanded(
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF0966B3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Icon(
                                                    Icons.upload_rounded,
                                                    size: 35,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'Upload Bill',
                                          style: TextStyle(
                                              color: Color(0xFF0966B3),
                                              fontSize: 16),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.collections,
                          color: Color.fromARGB(255, 32, 3, 160),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'My Invoices',
                          style: TextStyle(
                              color: Color.fromARGB(255, 32, 3, 160),
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: ListView.builder(
                        itemCount: 7,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: ListTile(
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    titles[index],
                                  ),
                                  Text(title2[index]),
                                  Container(child: status[index]),
                                ],
                              ),
                              subtitle: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(subtitles[index]),
                                  Text(subtitles2[index]),
                                  Text(subtitles3[index]),
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
          )
        ]),
      ),
    );
  }
}
