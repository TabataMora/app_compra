import 'package:flutter/material.dart';
import 'package:layout/widgets/category/category-list.widget.dart';
import 'package:layout/widgets/product/produtct-list.widget.dart';
import 'package:layout/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 45,
            right: 15,
            left: 15,
          ),
          width: double.infinity,
          //color: Color(0xFFF5F5F5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                width: 60,
              ),
              SearchBox(),
              SizedBox(
                width: 30,
              ),
              Text(
                "Categorias",
                style: Theme.of(context).textTheme.headline,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 90,
                child: CategoryList(),
              ),
              SizedBox(
                width: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Best Selling",
                    style: Theme.of(context).textTheme.headline,
                  ),
                  FlatButton(
                    child: Text("See All"),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 350,
                child: ProductList(
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
