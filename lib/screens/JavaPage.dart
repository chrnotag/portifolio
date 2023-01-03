import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../layout-details/appColors.dart';

class JavaPage extends StatefulWidget {
  const JavaPage({Key? key}) : super(key: key);

  @override
  State<JavaPage> createState() => _JavaPageState();
}

class _JavaPageState extends State<JavaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black, shadows: List.generate(1, (index) {
          return const Shadow(color: Colors.white, blurRadius: 3);
        })),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.patternVermelho),
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
                                Assets.fundoTriangular),
                            fit: BoxFit.cover,),
                        ),
                        padding: const EdgeInsets.only(top: 36),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Text(
                                'Trabalhos em Java',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                              Text(
                                'Veja um pouco do meu potencial',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyMedium,
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
                              backgroundColor: Colors.white,
                              radius: 50,
                              backgroundImage:
                              AssetImage(Assets.javaLogo),
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
