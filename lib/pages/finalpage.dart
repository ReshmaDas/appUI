import 'package:flutter/material.dart';
import 'package:task_figma/pages/home_page.dart';

class FinalPage extends StatelessWidget {
  FinalPage({super.key});
  final List<int> steps = [1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, left: 10, right: 400, bottom: 2),
                    child: InkWell(
                      onTap: (){
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
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              color: Color(0xFF0966B3),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Invoice Approval Request',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Text('28 Dec 2022, 19.30'),
                  ],
                ),
              ),
              Container(
                height: 250,
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade200,
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text('invoice Amount of'),
                            SizedBox(
                              height: 15,
                            ),
                            Card(
                              elevation: 4,
                              color: Color.fromARGB(235, 204, 200, 200),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 15.0, bottom: 15, left: 25, right: 25),
                                child: Text(
                                  'rs 1850',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 70,
                            width: 2,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: const [
                              SizedBox(
                                width: 25,
                              ),
                              Text('invoice Amount of'),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '4566564131',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('invoice Amount of'),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '4566564131',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 2,
                        width: 400,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: const EdgeInsets.only(left: 2, right: 330),
                          child: Text('Requested To'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 5,
                            left: 18,
                            bottom: 2,
                          ),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/a.png'),
                            radius: 25,
                            // onBackgroundImageError: (e, s) {
                            //   debugPrint('image issue, $e,$s');
                            // },
                          ),
                        ),
                        Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 8, right: 160, bottom: 5, top: 5),
                              child: Text(
                                'MyG Kakkanad',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 16, right: 160, bottom: 5),
                              child: Text(
                                '+91 94666 64658',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6)),
                          child: Icon(
                            Icons.phone,
                            color: Colors.blue.shade900,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: 450,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(5),
                ),
                
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25,top: 10,left:20 ),
                      child: Text('Requestd Status'),
                    ),
                    Container(
                      width: 200.0,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 180.0,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (var step in steps)
                                Icon(
                                  Icons.circle,
                                  color: step == 2
                                      ? Color.fromARGB(255, 49, 78, 238)
                                      : Colors.grey,
                                  size: step == 2 ? 24.0 : 16.0,
                                )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 2,width: 450,color: Colors.white,),
              ),
              Container(
                margin: EdgeInsets.all(15),
                width: 450,
                height: 600,
                decoration: BoxDecoration(
                  color: Colors.white,
                  
                ),
                child: Image.asset('assets/images/image.png',fit: BoxFit.cover,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
