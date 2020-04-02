import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'water_donation_model.dart';

class WaterDonationPage extends StatefulWidget {
  @override
  _WaterDonationPageState createState() => _WaterDonationPageState();
}

class _WaterDonationPageState extends State<WaterDonationPage> {
  var image =
      "https://www.mmtimes.com/sites/mmtimes.com/files/styles/mmtimes_ratio_c_normal_detail_image/public/images/mte/2017/di497/donors.jpg?itok=6XQ6J4mD";
  var image2 =
      "https://www.abmission.org/data/Myanmar/2019/15_Myanmar_WASH_2.png";

  //list view for donation record images
  List photos = [
  WaterDonationModel(
      imageUrl:"image/she.JPG",

    ),
    WaterDonationModel(
      imageUrl:"image/she.JPG",

    ),
    WaterDonationModel(
      imageUrl:"image/she.JPG",

    ),
    WaterDonationModel(
      imageUrl:"image/she.JPG",

    ), WaterDonationModel(
      imageUrl:"image/she.JPG",

    ), WaterDonationModel(
      imageUrl:"image/she.JPG",

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ActivityWidget",
      home: Scaffold(
          body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        children: <Widget>[
          Row(children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: SizedBox(
                    width: 100,
                    height: 150,
                    child: Image.network(
                        "https://i.pinimg.com/originals/ed/e4/56/ede4561a4eea0b702ff6c962b86d77eb.jpg"))),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Water Donation",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text("@TungThar, Mandalay",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          )),
                      SizedBox(height: 5),
                      Row(children: [
                        IconButton(
                          icon: Icon(Icons.phone),
                          color: Colors.orange,
                          onPressed: () {},
                          splashColor: Colors.blueAccent,
                        ),
                        IconButton(
                          icon: Icon(Icons.message),
                          color: Colors.red,
                          onPressed: () {},
                          splashColor: Colors.blueAccent,
                        ),
                        IconButton(
                          icon: Icon(Icons.check),
                          color: Colors.red,
                          onPressed: () {},
                          splashColor: Colors.blueAccent,
                        )
                      ])
                    ]))
          ]), //Row
          SizedBox(
            height: 15,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //This container is to Show Donation Amount
            Container(
              height: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("image/get_money.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 6.0),
                          child: Text(
                            "Total Donation",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black38),
                          ),
                        ),
                        Text(r"$ 300",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Danation Summary",
                style: TextStyle(
                  fontSize: 18,
                )),
            SizedBox(
              height: 5,
            ),
            Text(
                "Water in TaungThar Region is essential need in hot season! 300 USD was donated to this region, still lots of donation required",
                style: TextStyle(
                  color: Colors.grey,
                )),
          ]),
          SizedBox(
            height: 15,
          ),
          Row(children: [
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text("Address",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  SizedBox(height: 5),
                  Row(children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Text(
                      "Myanmar, Mandalay, TaungThar, MoeNar Village, U ZawTiKa Kyaung",
                    ))
                  ])
                ])),
          ]),
          SizedBox(height: 20),
          Text("Photos", style: TextStyle(fontSize: 18)),

          Container(
            width: double.infinity,
            height: 190,
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListView.builder(
              itemCount: photos.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, indext) {
                return Card(
                  elevation: 10,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    splashColor: Colors.white54,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          //padding: EdgeInsets.all(2.0),
                          child: Image.asset(
                            photos[indext].imageUrl,
                            width: 150,
                            height: 200,
                            fit: BoxFit.cover,
                            // height: 245,
                          ),
                        ),

                      ],
                    ),
                    onTap: () {},
                  ),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}
