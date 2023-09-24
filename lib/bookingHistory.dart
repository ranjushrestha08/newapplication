import 'package:flutter/material.dart';
import 'package:newapplication/bookingHistory_dumy_data.dart';
import 'package:newapplication/bookingHistory_model.dart';

class BookingHistory extends StatelessWidget {
  const BookingHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Booking History"),
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: bookingHistoryDetails.length,
            itemBuilder: (context, index) {
              BookingHistoryModel details = bookingHistoryDetails[index];
              return Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 250, 249, 249)),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              "https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fimage&psig=AOvVaw3yKDGkj-cyXcOR9-dWihCv&ust=1695639543235000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKCMxdeLw4EDFQAAAAAdAAAAABAE"),
                        ),
                        Column(
                          children: [Text(details.name), Text(details.contact)],
                        )
                      ],
                    ),
                  ),
                ],
              );
            }));
  }
}
