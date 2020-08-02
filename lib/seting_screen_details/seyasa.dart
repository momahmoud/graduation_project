import 'package:flutter/material.dart';

class Seyasa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lost Of People"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.only( bottom: 20.0),
              child: Text(
                "سياسة الخصوصيه",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
            ),

          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "عند استخدام خدماتنا، فإنك تأتمننا على معلوماتك. نحن ندرك أن هذه مسؤولية كبيرة ونعمل بجدية لحماية معلوماتك ونمنحك التحكم فيها,تهدف سياسةُ الخصوصية هذه إلى مساعدتك على فهم ماهية المعلومات التي نجمعها وسبب جمعنا لها، وكذلك طريقة تحديث معلوماتك وتصديرها وحذفها.",
                 style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
