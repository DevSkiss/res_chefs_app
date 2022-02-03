import 'package:flutter/material.dart';
import 'package:res_chefs_app/core/presentation/widgets/res_chefs_text.dart';
import 'package:res_chefs_app/features/restaurants/data/models/restaurant_viewmodel.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  const RestaurantDetailsScreen({Key? key, required this.resChefs})
      : super(key: key);

  final RestaurantViewModel resChefs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        title: const ResChefsText(
          'Restaurant  Info',
          fontSize: 24,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 16),
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ResChefsText(
                      resChefs.name,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    ResChefsText(
                      resChefs.address1,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    ResChefsText(
                      '${resChefs.city}, ${resChefs.state}',
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    ResChefsText(
                      resChefs.phone,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const ResChefsText(
                'Chefs',
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ...List.generate(
                  resChefs.chefs.length,
                  (index) => Container(
                        margin: const EdgeInsets.only(top: 12),
                        padding: const EdgeInsets.symmetric(
                            vertical: 24, horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white60,
                        ),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ResChefsText(
                              '${resChefs.chefs[index].firstName} ${resChefs.chefs[index].lastName}',
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            ResChefsText(
                              resChefs.address1,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            ResChefsText(
                              resChefs.chefs[index].address,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            ResChefsText(
                              '${resChefs.chefs[index].city}, ${resChefs.chefs[index].state}',
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ],
                        ),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
