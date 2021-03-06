import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../providers/posts.dart';

class PersonDetailsScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final personId =
        ModalRoute.of(context).settings.arguments as String; // is the id!
    final loadedPerson = Provider.of<Posts>(
      context,
      listen: false,
    ).findById(personId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedPerson.name),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    loadedPerson.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SingleChildScrollView(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                        ),
                        child: Card(
                          child: Text(
                            " اسم الشخص المفقود   ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          color: Colors.blue,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          loadedPerson.name,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: Card(
                        child: Text(
                          " يوم فقدان الشخص    ",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textDirection: TextDirection.rtl,
                        ),
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        loadedPerson.dayLost,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Text(
                  loadedPerson.description,
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton.icon(
                    color: Colors.blue,
                    label: Text("فيس بوك"),
                    icon: Icon(FontAwesomeIcons.facebook),
                    onPressed: () async {
                      await launch(loadedPerson.facebock);
                    },
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    
                      
                  ),
                  SizedBox(width: 20,),
                  RaisedButton.icon(
                    color: Colors.blue,
                    label: Text("الهاتف"),
                    icon: Icon(Icons.phone),
                onPressed: () async {
                  await launch("tel:${loadedPerson.phone}");
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                

                  

              ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
