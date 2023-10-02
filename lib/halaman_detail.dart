import 'package:flutter/material.dart';
import 'package:kuis_124210050/disease_data.dart';

class halaman_detail extends StatelessWidget {
  final Diseases diseases;
  const halaman_detail({super.key, required this.diseases});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Halaman Detail", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),textAlign: TextAlign.center),
          backgroundColor: Colors.teal,
          
        actions: <Widget>[
            IconButton(onPressed: () {
              
            }, icon: Icon(Icons.local_activity)),

          ],
        ),
        body: ListView(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 3,
                child: Image.network(diseases.imgUrls)),
            Text(diseases.name,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.teal),
                textAlign: TextAlign.center),
            SizedBox(height: 10),
            Text("Desease Name",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center),
            Text(diseases.plantName, textAlign: TextAlign.center),
             SizedBox(height: 10),
            Text("Ciri-ciri",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center),
            Text(diseases.nutshell[0], textAlign: TextAlign.center),
             SizedBox(height: 10),
            Text("Desease ID",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center),
            Text(diseases.id, textAlign: TextAlign.center),
             SizedBox(height: 10),
            Text("Symton",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center),
            Text(diseases.symptom, textAlign: TextAlign.center),

            IconButton(onPressed: () {
                Navigator.pop(context);
            }, icon: Icon(Icons.home))
          ],
        ));
  }
}
