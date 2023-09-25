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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 250, 249, 249)),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  "https://www.yearindays.com/media/medium/jennie-kim.jpg"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(details.name),
                                Text(details.contact)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }));
  }
}
