
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WalkThrough extends StatefulWidget {
  @override
  _WalkThroughState createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  List<SliderModel> slides = new List<SliderModel>();
  int currentIndex = 0;
  PageController pageController = new PageController(initialPage: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides = getSlides();
  }

  Widget pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? HexColor("2D00D3").withOpacity(1.0) : Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: pageController,
        onPageChanged: (val) {
          setState(() {
            currentIndex = val;
          });
        },
        itemBuilder: (context, index) {
          return SliderTile(
            imageAssetPath: slides[index].imagePath,
            title: slides[index].title,
            description: slides[index].description,
          );
        },
        itemCount: slides.length,
      ),

      bottomSheet: currentIndex != slides.length - 1
          ? Container(
        color: Colors.white,
        height: 170,

        child: Row(
          children: [
            Column(
              children: [
        Row(
        children: <Widget>[
          SizedBox(width: 190,),
        for (int i = 0; i < slides.length; i++)
          currentIndex == i
          ? pageIndexIndicator(true)
          : pageIndexIndicator(false)
      ],
        ),
                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.only(left:190.0),
                  child: Text("Skip"),
                ),
              ],
            ),
          ],
        ),

      )
          : Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        //height: Platform.isIOS ? 70 : 60,
        color: Colors.blue,
        child: Text(
          "GET STARTED NOW",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class SliderTile extends StatelessWidget {
  //initialising variables here
  String imageAssetPath;
  String title;
  String description;

  SliderTile({this.imageAssetPath, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageAssetPath, height: 200),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: "Visby CF",
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              color: HexColor("2D00D3").withOpacity(1.0),
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 42,
            width: 297,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.normal,
                fontFamily: "Visby CF",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class SliderModel {
  String _imagePath;
  String _title;
  String _description;

  SliderModel({String imagePath, String title, String description}) {
    this._imagePath = imagePath;
    this._title = title;
    this._description = title;
  }

  String get description => _description;

  setdescription(String value) {
    _description = value;
  }

  String get title => _title;

  settitle(String value) {
    _title = value;
  }

  String get imagePath => _imagePath;

  setimagePath(String value) {
    _imagePath = value;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = new List<SliderModel>();

  SliderModel sliderModel = new SliderModel();

  sliderModel.setimagePath("asset/images/one.png");
  sliderModel.settitle("Access Funds");
  sliderModel.setdescription(
      "Have access to your salary any day in the week. All you have to do is ask.");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  sliderModel.setimagePath("asset/images/two.png");
  sliderModel.settitle("Learn about money");
  sliderModel.setdescription(
      "Learn how to manage and grow your money with our inapp tutorials");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  sliderModel.setimagePath("asset/images/three.png");
  sliderModel.settitle("Save more easily");
  sliderModel.setdescription(
      "Set a saving goal and zuberi will help you save easily");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  return slides;
}