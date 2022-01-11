import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Center(child: Text("Payments")),
          actions: const [Icon(Icons.info)],
        ),
        body: ListView(children: [
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Column(children: [
                    const Align(
                      child: Text(
                        "Transaction Limit",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      child: Text(
                        "A free limit up to which you will receive ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Align(
                      child: Text(
                        " the online payments directly in your bank",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const LinearProgressIndicator(
                      value: 0.3,
                      minHeight: 6.5,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Align(
                      child: Text("36,668 left out of ₹50,00"),
                      alignment: Alignment.topLeft,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Increase limit",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.blueAccent),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ),
            Column(
              children: const [
                Card(
                  child: ListTile(
                    title: Align(
                      alignment: Alignment.topRight,
                      child: Text("Online Payment"),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                    leading: Text(
                      "Default Method",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Align(
                      alignment: Alignment.topRight,
                      child: Text("Payment Profile"),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                    leading: Text(
                      "Bank Account",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                const ListTile(
                  leading: Text(
                    "Payment OverView",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_down_sharp),
                  title: Align(
                    alignment: Alignment.topRight,
                    child: Text("Life Time"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(5)),
                        width: 150,
                        height: 100,
                        child: const ListTile(
                          title: Text(
                            "AMOUNT ON HOLD",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          subtitle: Text(
                            "₹0",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        width: 150,
                        height: 100,
                        child: const ListTile(
                          title: Text(
                            "AMOUNT RECEIVED",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          subtitle: Text(
                            "₹13,332",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: const Text(
                    "Transactions",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, top: 14),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "    On hold    ",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("  Payouts(15) ",
                        style: TextStyle(color: Colors.white)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueAccent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(" Refunds ",
                        style: TextStyle(color: Colors.white)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ],
              ),
            ),
            Column(children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white),

                child: ListTile(
                  dense: true,
                  leading: Container(
                    width: 60,
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/drop_01.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  title: const Text("Order #1688068",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  subtitle: Row(children: const [
                    Expanded(flex: 2, child: Text("Jul 12,02:26 PM"))
                  ]),
                  trailing: Column(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "₹799",
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.white),
                              elevation: MaterialStateProperty.all(67)),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.fiber_manual_record_sharp,
                            color: Colors.green,
                            size: 15,
                          ),
                          label: const Text(
                            "Successful",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ),
                      //
                    ],
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),

                  child: const SizedBox(
                    child: Align(
                      child: Text(
                        "₹799 deposited to 588984800881748",
                        style: TextStyle(color: Colors.grey),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              )
            ]),
            Column(children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white),

                child: ListTile(
                  dense: true,
                  leading: Container(
                    width: 60,
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/dwnld.jpeg"),
                            fit: BoxFit.fill)),
                  ),
                  title: const Text("Order #6788068",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  subtitle: Row(children: const [
                    Expanded(flex: 2, child: Text("Dec 28,05:26 AM"))
                  ]),
                  trailing: Column(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "₹1999",
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.white),
                              elevation: MaterialStateProperty.all(67)),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.fiber_manual_record_sharp,
                            color: Colors.green,
                            size: 15,
                          ),
                          label: const Text(
                            "Successful",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ),
                      //
                    ],
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),

                  child: const SizedBox(
                    child: Align(
                      child: Text(
                        "₹1999 deposited to 588984800881748",
                        style: TextStyle(color: Colors.grey),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              )
            ]),
            Column(children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white),

                child: ListTile(
                  dense: true,
                  leading: Container(
                    width: 60,
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/dwnld2.jpeg"),
                            fit: BoxFit.fill)),
                  ),
                  title: const Text("Order #746735",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  subtitle: Row(children: const [
                    Expanded(flex: 2, child: Text("Oct 3,01:45 PM"))
                  ]),
                  trailing: Column(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "₹599",
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.white),
                              elevation: MaterialStateProperty.all(67)),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.fiber_manual_record_sharp,
                            color: Colors.green,
                            size: 15,
                          ),
                          label: const Text(
                            "Successful",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ),
                      //
                    ],
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),

                  child: const SizedBox(
                    child: Align(
                      child: Text(
                        "₹599 deposited to 588984800881748",
                        style: TextStyle(color: Colors.grey),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              )
            ]),
            Column(children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white),

                child: ListTile(
                  dense: true,
                  leading: Container(
                    width: 60,
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "images/india-circus-lissom-lotus-bedsheet-set-1000886818002-3.jpeg"),
                            fit: BoxFit.fill)),
                  ),
                  title: const Text("Order #899786",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  subtitle: Row(children: const [
                    Expanded(flex: 2, child: Text("Sept 29,08:54 PM"))
                  ]),
                  trailing: Column(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "₹700",
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.white),
                              elevation: MaterialStateProperty.all(67)),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.fiber_manual_record_sharp,
                            color: Colors.green,
                            size: 15,
                          ),
                          label: const Text(
                            "Successful",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ),
                      //
                    ],
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),

                  child: const SizedBox(
                    child: Align(
                      child: Text(
                        "₹700 deposited to 588984800881748",
                        style: TextStyle(color: Colors.grey),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              )
            ]),
            Column(children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white),

                child: ListTile(
                  dense: true,
                  leading: Container(
                    width: 60,
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "images/Covrlge-2018-Men-Short-Sleeve-T-shirt-Fashion-Milk-Printed-O-neck-Tshirt-Men-s-Stars__74927.1588760150.jpeg"),
                            fit: BoxFit.fill)),
                  ),
                  title: const Text("Order #978986",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  subtitle: Row(children: const [
                    Expanded(flex: 2, child: Text("May 29,03:15 PM"))
                  ]),
                  trailing: Column(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "₹1300",
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.white),
                              elevation: MaterialStateProperty.all(67)),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.fiber_manual_record_sharp,
                            color: Colors.green,
                            size: 15,
                          ),
                          label: const Text(
                            "Successful",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ),
                      //
                    ],
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),

                  child: const SizedBox(
                    child: Align(
                      child: Text(
                        "₹1300 deposited to 588984800881748",
                        style: TextStyle(color: Colors.grey),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              )
            ]),
            Column(children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white),

                child: ListTile(
                  dense: true,
                  leading: Container(
                    width: 60,
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "images/Urbane-Sensational-Men-Shirt-By-Ayan-Style-Sky-Blue-Dark-Blue.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  title: const Text("Order #76784576",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  subtitle: Row(children: const [
                    Expanded(flex: 2, child: Text("Nov 29,09:26 PM"))
                  ]),
                  trailing: Column(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "₹999",
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.white),
                              elevation: MaterialStateProperty.all(67)),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.fiber_manual_record_sharp,
                            color: Colors.green,
                            size: 15,
                          ),
                          label: const Text(
                            "Successful",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ),
                      //
                    ],
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),

                  child: const SizedBox(
                    child: Align(
                      child: Text(
                        "₹999 deposited to 588984800881748",
                        style: TextStyle(color: Colors.grey),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              )
            ]),
            Column(children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: ListTile(
                  tileColor: Colors.white,
                  dense: true,
                  leading: Container(
                    width: 60,
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/images.jpeg"),
                            fit: BoxFit.fill)),
                  ),
                  title: const Text("Order #142343",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  subtitle: Row(children: const [
                    Expanded(flex: 2, child: Text("Feb 28,12:26 PM"))
                  ]),
                  trailing: Column(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "₹799",
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              elevation: MaterialStateProperty.all(67)),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.fiber_manual_record_sharp,
                            color: Colors.red,
                            size: 15,
                          ),
                          label: const Text(
                            "Failed",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ),
                      //
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: const SizedBox(
                    child: Align(
                      child: Text(
                        "₹799 deposited to 588984800881748",
                        style: TextStyle(color: Colors.grey),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              )
            ]),
          ]),
        ]));
  }
}
