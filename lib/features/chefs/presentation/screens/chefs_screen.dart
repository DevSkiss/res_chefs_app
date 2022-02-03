import 'package:flutter/material.dart';
import 'package:res_chefs_app/core/data/models/chefs_model.dart';
import 'package:res_chefs_app/core/presentation/widgets/res_chefs_text.dart';

class ChefScreen extends StatelessWidget {
  const ChefScreen({Key? key, required this.chefs}) : super(key: key);

  final List<ChefsModel> chefs;

  @override
  Widget build(BuildContext context) {
    return ChefView(chefs: chefs);
  }
}

class ChefView extends StatefulWidget {
  const ChefView({Key? key, required this.chefs}) : super(key: key);

  final List<ChefsModel> chefs;

  @override
  _ChefViewState createState() => _ChefViewState();
}

class _ChefViewState extends State<ChefView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        title: const ResChefsText(
          'Chef  List',
          fontSize: 24,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ...List.generate(
                  widget.chefs.length,
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
                              '${widget.chefs[index].firstName} ${widget.chefs[index].lastName}',
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            ResChefsText(
                              widget.chefs[index].address,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            ResChefsText(
                              '${widget.chefs[index].city}, ${widget.chefs[index].state}',
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            ResChefsText(
                              widget.chefs[index].email,
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
