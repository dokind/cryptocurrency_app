import 'dart:math';

import 'package:coin_base_clone/models/models.dart';
import 'package:coin_base_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:coin_base_clone/models/fetchCoins_models/fetch_coins_models.dart';
import 'package:intl/intl.dart';

class CoinDetailScreen extends StatelessWidget {
  final DataModel coin;
  const CoinDetailScreen({
    Key? key,
    required this.coin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int next(int min, int max) => random.nextInt(max - min);
    var coinIconUrl =
        "https://raw.githubusercontent.com/spothq/cryptocurrency-icons/master/128/color/";
    var coinPrice = coin.quoteModel.usdModel;
    DateTime parseDate = new DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
        .parse(coinPrice.lastUpdated);
    var inputDate = DateTime.parse(parseDate.toString());
    var outputFormat = DateFormat('MM/dd/yyyy hh:mm a');
    var outputDate = outputFormat.format(inputDate);
    var data = [
      ChartData(next(110, 140), 1),
      ChartData(next(9, 41), 2),
      ChartData(next(140, 200), 3),
      ChartData(coinPrice.percentChange_24h, 4),
      ChartData(coinPrice.percentChange_1h, 5),
      ChartData(next(110, 140), 6),
      ChartData(next(9, 41), 7),
      ChartData(next(140, 200), 8),
      ChartData(coinPrice.percentChange_24h, 9),
      ChartData(coinPrice.percentChange_1h, 10),
      ChartData(next(110, 140), 12),
      ChartData(next(9, 41), 13),
      ChartData(coinPrice.percentChange_1h, 14),
      ChartData(next(9, 41), 15),
      ChartData(next(140, 200), 16),
      ChartData(coinPrice.percentChange_24h, 17),
      ChartData(coinPrice.percentChange_1h, 18),
      ChartData(next(110, 140), 19),
      ChartData(next(9, 41), 20),
      ChartData(next(140, 200), 21),
      ChartData(coinPrice.percentChange_24h, 22),
      ChartData(next(110, 140), 23),
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(11, 12, 54, 1),
      body: CustomScrollView(
        slivers: [
          CoinDetailAppBar(coin: coin, coinIconUrl: coinIconUrl),
          CoinRandomedChartWidget(
              coinPrice: coinPrice, outputDate: outputDate, data: data),
          SliverToBoxAdapter(
            child: Container(
              height: 800,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: Text(
                      "2021 Flutter with dokind",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ],
              ),
            ),
          )
          // SliverPersistentHeader(
          //   pinned: true,
          //   delegate: SliverAppBarDelegate(
          //     minHeight: 400.0,
          //     maxHeight: 400.0,
          //     child:
          //   ),
          // ),
        ],
      ),
    );
  }
}
