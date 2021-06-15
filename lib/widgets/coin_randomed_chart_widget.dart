import 'package:coin_base_clone/models/fetchCoins_models/fetch_coins_models.dart';
import 'package:coin_base_clone/models/models.dart';
import 'package:coin_base_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CoinRandomedChartWidget extends StatefulWidget {
  const CoinRandomedChartWidget({
    Key? key,
    required this.coinPrice,
    required this.outputDate,
    required this.data,
  }) : super(key: key);

  final UsdModel coinPrice;
  final String outputDate;
  final List<ChartData> data;

  @override
  _CoinRandomedChartWidgetState createState() =>
      _CoinRandomedChartWidgetState();
}

class _CoinRandomedChartWidgetState extends State<CoinRandomedChartWidget> {
  List<bool> isSelected = List.generate(5, (index) => false);
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverAppBarDelegate(
        minHeight: 360.0,
        maxHeight: 360.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Column(
            children: [
              Text(
                '\$' + widget.coinPrice.price.toStringAsFixed(2),
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                widget.outputDate,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              CoinChartWidget(
                  coinPrice: widget.coinPrice,
                  color: Colors.green,
                  data: widget.data),
              ToggleButtons(
                borderColor: Colors.indigoAccent,
                color: Colors.white,
                fillColor: Colors.green,
                selectedColor: Colors.white,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Today',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      '1W',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      '1M',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      '3M',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      '6M',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ],
                onPressed: (int index) {
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < isSelected.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        isSelected[buttonIndex] = !isSelected[buttonIndex];
                      } else {
                        isSelected[buttonIndex] = false;
                      }
                    }
                  });
                },
                isSelected: isSelected,
              ),
              const SizedBox(
                height: 8.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
