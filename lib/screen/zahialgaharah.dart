import 'package:lapp/screen/vndsen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductSee extends StatefulWidget {
  const ProductSee({super.key});

  @override
  State<ProductSee> createState() => _ProductSeeState();
}

class _ProductSeeState extends State<ProductSee> {
  DateTime dateTime = DateTime.now();

  void _onsar() {
    final date = showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(1800),
      lastDate: DateTime(2200),
    );
  }

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 78.0),
                child: Text(
                  "Tester",
                  // widget.userName,
                  style: TextStyle(
                    backgroundColor: Color.fromARGB(255, 253, 255, 217),
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        leading: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(
              Color.fromARGB(255, 253, 255, 217),
            ),
            elevation: MaterialStatePropertyAll<double>(0),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        backgroundColor: Color.fromARGB(255, 253, 255, 217),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/back1.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Form(
            child: Center(
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: SizedBox(
                      height: sizeHeight * 0.03,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
