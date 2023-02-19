import 'package:flutter/material.dart';

import 'consts.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 6,
                child: Padding(
                  padding: ProjectPadding.projectPadding,
                  child: Container(
                    color: Colors.green,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildContainer(),
                          Image.asset(ProjectImages.yesilDunyaImages,height: 150,),
                        ],
                      )),
                )),
            Expanded(
                child: Container(
                  color: Colors.blue,
                  child: BackButton(),
                ),
                flex: 10),
          ],
        ),
      ),
    );
  }

  Container buildContainer() {
    return Container(
                          child: Icon(Icons.search,size: 35,),
                          width: ProjectWidth.containerSmallWidth,
                          height: ProjectWidth.containerSmallWidth,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black12,
                          ),
                        );
  }
}

