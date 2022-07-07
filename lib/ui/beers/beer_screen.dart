import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/beer_presenter.dart';
import 'package:get/get.dart';

class BeerScreen extends StatelessWidget {
  static const String id = '/beers';

  const BeerScreen({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  final BeerPresenter presenter;

  void showError(String errorMessage) async {
    Get.snackbar(errorMessage, '');
  }

  @override
  Widget build(BuildContext context) {
    presenter.errorMessage.listen((errorMessage) {
      if (errorMessage.isNotEmpty) showError(errorMessage);
    });

    return Scaffold(
      body: SafeArea(
        child: Obx(
          () {
            final catsList = presenter.beersList.value;
            return ListView.separated(
              itemCount: catsList.length,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) => Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: SizedBox(
                  height: 160,
                  child: Row(
                    children: [
                      Image.network(
                        catsList[index].image,
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 16,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                catsList[index].name,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Rating: ${catsList[index].rating}'),
                              Text(
                                catsList[index].description,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
