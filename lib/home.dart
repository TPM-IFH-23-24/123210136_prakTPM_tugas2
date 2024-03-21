import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasprakmob/detail.dart';
import 'tourism_place.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("HOME"),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 50,
              childAspectRatio: 0.9
            ),
            itemCount: tourismPlaceList.length,
            itemBuilder: (context, index) {
              return InkWell(
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AspectRatio(
                        aspectRatio: 4/3,
                        child: Image.network(
                          tourismPlaceList[index].imageUrls[1],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(tourismPlaceList[index].name),
                      Text(tourismPlaceList[index].location),
                      Text(tourismPlaceList[index].openDays),
                      Text(tourismPlaceList[index].openTime),
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage(index: index);
                  }));
                },
              );
            }
        ),
      ),
    );
  }
}
