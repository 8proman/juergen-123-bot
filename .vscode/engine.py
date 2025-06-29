# engine.py
import backtrader as bt

class MyStrategy(bt.Strategy):
    def __init__(self):
        self.sma = bt.indicators.SimpleMovingAverage(period=15)

    def next(self):
        if self.data.close[0] > self.sma[0]:
            self.buy()
        elif self.data.close[0] < self.sma[0]:
            self.sell()

def run_backtest(datafile="data.csv"):
    cerebro = bt.Cerebro()
    cerebro.addstrategy(MyStrategy)

    data = bt.feeds.GenericCSVData(
        dataname=datafile,
        dtformat="%Y-%m-%d",
        timeframe=bt.TimeFrame.Days,
        compression=1,
        openinterest=-1,
        headers=True
    )

    cerebro.adddata(data)
    cerebro.run()
    cerebro.plot()
# ...existing code...
