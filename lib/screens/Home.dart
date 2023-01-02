import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:portifolio/generated/assets.dart';
import 'package:portifolio/layout-details/appColors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:animated_floating_buttons/animated_floating_buttons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int TouchIndex = -1;

  Widget floatWhatsapp() {
    return Container(
      child: FloatingActionButton(
        child: Icon(LineIcons.whatSApp),
        tooltip: 'Whatsapp',
        onPressed: () {},
      ),
    );
  }
  Widget floatGitHub() {
    return Container(
      child: FloatingActionButton(
        child: Icon(LineIcons.github),
        backgroundColor: Color(0xff171515),
        tooltip: 'GitHub',
        onPressed: () {},
      ),
    );
  }
  showingSections() {
    return List.generate(5, (i) {
      final Toutched = i == TouchIndex;
      final fontSize = Toutched ? 18.0 : 14.0;
      final radius = Toutched ? 60.0 : 50.0;
      final size = Toutched ? 50.0 : 40.0;

      switch (i) {

        case 0:
          return PieChartSectionData(
            radius: radius,
            color: DarkBlueColor,
            showTitle: true,
            badgeWidget: Container(
              width: size,
              height: size,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(Assets.MySqlLogo), fit: BoxFit.contain),
              ),
            ),
            value: 5,
            title: 'MySql',
            badgePositionPercentageOffset: 1,
            titlePositionPercentageOffset: 1.85,
            titleStyle: TextStyle(
                color: DarkBlueColor,
                fontFamily: 'roboto',
                fontWeight: FontWeight.w900,
                fontSize: fontSize),
          );

        case 1:
          return PieChartSectionData(
            radius: radius,
            color: RedColor,
            showTitle: true,
            value: 15,
            badgeWidget: Container(
              width: size,
              height: size,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(Assets.javaLogo), fit: BoxFit.fill),
              ),
            ),
            title: 'Java',
            badgePositionPercentageOffset: 1,
            titlePositionPercentageOffset: 1.7,
            titleStyle: TextStyle(
                color: RedColor,
                fontFamily: 'roboto',
                fontWeight: FontWeight.w900,
                fontSize: fontSize),
          );

        case 2:
          return PieChartSectionData(
            radius: radius,
            color: BlueColor,
            value: 50,
            showTitle: true,
            badgeWidget: Container(
              width: size,
              height: size,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(Assets.flutterLogo), fit: BoxFit.contain),
              ),
            ),
            title: 'Flutter',
            badgePositionPercentageOffset: 1,
            titlePositionPercentageOffset: 1.85,
            titleStyle: TextStyle(
                color: DarkBlueColor,
                fontFamily: 'roboto',
                fontWeight: FontWeight.w900,
                fontSize: fontSize),

          );

        case 3:
          return PieChartSectionData(
            radius: radius,
            color: CreamColor,
            showTitle: true,
            badgeWidget: Container(
              width: size,
              height: size,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(Assets.kotlinLogo), fit: BoxFit.contain),
              ),
            ),
            title: 'Kotlin',
            value: 25,
            badgePositionPercentageOffset: 1,
            titlePositionPercentageOffset: 1.55,
            titleStyle: TextStyle(
                color: DarkCreamColor,
                fontFamily: 'roboto',
                fontWeight: FontWeight.w900,
                fontSize: fontSize),
          );

        case 4:
          return PieChartSectionData(
            radius: radius,
            color: OrangeFirebase,
            showTitle: true,
            badgeWidget: Container(
              width: size,
              height: size,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(Assets.firebaseIcon), fit: BoxFit.contain),
              ),
            ),
            title: 'Firebase',
            value: 20,
            badgePositionPercentageOffset: 1,
            titlePositionPercentageOffset: 2,
            titleStyle: TextStyle(
                color: DarkOrangeFirebase,
                fontFamily: 'roboto',
                fontWeight: FontWeight.w900,
                fontSize: fontSize),
          );

        default:
          return PieChartSectionData();
      }
    });
  }

  Widget floatLinkedin() {
    return Container(
      child: FloatingActionButton(
        child: Icon(LineIcons.linkedinIn),
        backgroundColor: Color(0xff0e76a8),
        tooltip: 'Linkedin',
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AnimatedFloatingActionButton(
        fabButtons: [floatGitHub(), floatLinkedin(), floatWhatsapp()],
        animatedIconData: AnimatedIcons.menu_close,
        colorStartAnimation: GreenWhatsAppp,
        tooltip: 'Contatos',
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.gamesPattern),
                repeat: ImageRepeat.repeat,
                alignment: Alignment.topCenter)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                MediaQuery.of(context).size.width / 3),
                            topRight: Radius.circular(
                                MediaQuery.of(context).size.width / 3),
                          ),
                          color: Colors.white,
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/fundo_triangular.png'),
                              fit: BoxFit.cover,
                              opacity: 0.6),
                        ),
                        padding: const EdgeInsets.only(top: 36),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Text(
                                'Felippe Pinheiro de Almeida',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Text(
                                'Desenvolvedor Mobile',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, bottom: 20),
                                child: Text(
                                  'Gráfico de Skills',
                                  textAlign: TextAlign.center,
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16, top: 18),
                                child: SizedBox(
                                  height: 200,
                                  width: 200,
                                  child: PieChart(
                                    PieChartData(
                                        sections: showingSections(),
                                        centerSpaceRadius: 40,
                                        pieTouchData: PieTouchData(
                                          touchCallback:
                                              (event, pieTouchResponse) {
                                            setState(() {
                                              if (!event
                                                      .isInterestedForInteractions ||
                                                  pieTouchResponse == null ||
                                                  pieTouchResponse
                                                          .touchedSection ==
                                                      null) {
                                                TouchIndex = -1;
                                                return;
                                              }
                                              TouchIndex = pieTouchResponse
                                                  .touchedSection!
                                                  .touchedSectionIndex;
                                            });
                                          },
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Stack(
                        children: const [
                          Align(
                            alignment: AlignmentDirectional.topCenter,
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 52,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional.topCenter,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/images/perfil.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Divider(
                      color: DarkGreenColor,
                    ),
                    Text(
                      'Trabalhos Recentes:',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        List<AssetImage> asset = [
                          const AssetImage(Assets.tela1),
                          const AssetImage(Assets.tela2),
                          const AssetImage(Assets.tela3),
                          const AssetImage(Assets.tela4),
                        ];
                        return SizedBox(
                          height: 200,
                          child: Card(
                            elevation: 5,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            margin: const EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: asset[index], fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    gradient: BlackToTransparent,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10))),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: GridTile(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'Aplicativo',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'roboto',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ), //just for testing, will fill with image later
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
