import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugasprakmob/tourism_place.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.index});
  
  final int index;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Location Detail"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(14),
              child: Column(
                children: [
                  Image.network(tourismPlaceList[index].imageUrls[0]),
                  Image.network(tourismPlaceList[index].imageUrls[1]),
                  Image.network(tourismPlaceList[index].imageUrls[2]),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 69, vertical: 25),
                    child: Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.top,
                      children: [
                        TableRow(
                          children: [
                            TableCell(child: Text("Nama: ")),
                            TableCell(child: Text(tourismPlaceList[index].name)),
                          ]
                        ),
                        TableRow(
                          children: [
                            TableCell(child: Text("Location: ")),
                            TableCell(child: Text(tourismPlaceList[index].location))
                          ]
                        ),
                        TableRow(
                            children: [
                              TableCell(child: Text("Description: ")),
                              TableCell(child: Text(tourismPlaceList[index].description))
                            ]
                        ),
                        TableRow(
                            children: [
                              TableCell(child: Text("Open Days: ")),
                              TableCell(child: Text(tourismPlaceList[index].openDays))
                            ]
                        ),
                        TableRow(
                            children: [
                              TableCell(child: Text("Open Time: ")),
                              TableCell(child: Text(tourismPlaceList[index].openTime))
                            ]
                        ),
                        TableRow(
                            children: [
                              TableCell(child: Text("Ticket Price: ")),
                              TableCell(child: Text(tourismPlaceList[index].ticketPrice))
                            ]
                        ),
                      ],
                    ),
                  )
                ],
              )
            ),
          ),
        )
    );
  }
}
