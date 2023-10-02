import 'package:flutter/material.dart';
import 'package:kuis_124210050/disease_data.dart';
import 'package:kuis_124210050/halaman_detail.dart';

class halaman_grid extends StatelessWidget {
  const halaman_grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Plant Deseases",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center),
          backgroundColor: Colors.teal,
        ),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) {
              final Diseases diseases = listDisease[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return halaman_detail(diseases: diseases);
                  }));
                },
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.height / 3,
                        child: Image.network(diseases.imgUrls),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                          child: Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 10),
                          Text(diseases.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 241, 130, 167))),
                          SizedBox(height: 10),
                          Text(diseases.name, textAlign: TextAlign.center),
                        ],
                      ))
                    ],
                  ),
                ),
              );
            }));
  }
}
