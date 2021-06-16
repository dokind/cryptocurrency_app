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
  List<bool> _isSelected = [true, false, false, false, false];
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
                borderRadius: BorderRadius.circular(8.0),
                borderColor: Colors.indigoAccent,
                color: Colors.white,
                fillColor: Colors.green,
                selectedColor: Colors.white,
                selectedBorderColor: Colors.indigoAccent,
                children: [
                  ToggleButtonWidget(name: "Today"),
                  ToggleButtonWidget(name: "1W"),
                  ToggleButtonWidget(name: "1M"),
                  ToggleButtonWidget(name: "3M"),
                  ToggleButtonWidget(name: "6M"),
                ],
                isSelected: _isSelected,
                onPressed: (int newIndex) {
                  setState(() {
                    for (int i = 0; i < _isSelected.length; i++) {
                      if (i == newIndex) {
                        _isSelected[i] = true;
                      } else {
                        _isSelected[i] = false;
                      }
                    }
                  });
                },
              ),
              const SizedBox(height: 8.0)
            ],
          ),
        ),
      ),
    );
  }
}
