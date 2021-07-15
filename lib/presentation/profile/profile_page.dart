import 'package:flutter/material.dart';
import 'package:udemy_course/widgets/card_information_widget.dart';
import 'package:udemy_course/widgets/discover_list_item_widget.dart';
import 'package:udemy_course/widgets/featured_article_banner_widget.dart';
import 'package:udemy_course/widgets/title_and_subtitle_widget.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
                  child: Column(
            children:[
              CardInformationWidget(),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: natureDiscoveryData(),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: FeaturedArticleBannerWidget()
              ),            
            ],
          ),
        ),
      ),
    );
  }

  Widget natureDiscoveryData() {
    return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleAndSubtitle(title: 'Natures', subTitle: 'Based on the popularity of articles',),
              SizedBox(height: 20),
              Container(
                height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return DiscoverListItemWidget();
                    }),
              ),                
            ],
          ),
        );
  }
}


