import 'package:flutter/material.dart';
import 'package:spotify/common/helpers/is_dark.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';

import '../../../common/widgets/buttons/back_bar.dart';
import '../../../core/configs/assets/app_images.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/configs/themes/app_colors.dart';
import '../widgets/news_songs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 4, vsync: this);}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const BackBar(
        hideBackButton: true,
        title: Image(
          image: AssetImage(
            AppImages.logo,
          ),
          height: 150,
          width: 140,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _homeTopCard(),
            _tabs(),
            SizedBox(
              height: 260,
              child: TabBarView(
                controller: _tabController,
                children: [
                  const NewsSongs(),
                  Container(),
                  Container(),
                  Container()
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }

  Widget _homeTopCard(){
    return Stack(
      children: [
        Align(
          alignment:Alignment.bottomCenter ,
          child: SizedBox(
            height: 170,
            child: SvgPicture.asset(
              AppVectors.homeTopCard
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Image.asset(AppImages.homeTopImage, height: 145,),
          ),
        )
      ],
    );
  }

  Widget _tabs() {
    return TabBar(
      controller: _tabController,
      isScrollable: true,
      labelColor: context.isDarkMode ? Colors.white : Colors.black,
      indicatorColor: AppColors.primary,
      padding: const EdgeInsets.symmetric(
          vertical: 10,
      ),
      tabs: const [
        Text(
          'News',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16
          ),
        ),
        Text(
          'Videos',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16
          ),
        ),
        Text(
          'Artists',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16
          ),
        ),
        Text(
          'Podcasts',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16
          ),
        )
      ],
    );
  }
}
