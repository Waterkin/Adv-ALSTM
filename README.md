<!--
 * @Date: 2022-01-09 22:00:26
 * @LastEditors: Waterking
 * @LastEditTime: 2022-03-12 15:59:39
 * @FilePath: /Adv-ALSTM/README.md
-->
# Adv-ALSTM
Code for paper "Enhancing Stock Movement Prediction with Adversarial Training" IJCAI 2019

# Requirements
Python 3.6.1

Tensorflow 1.8.0

Numpy 1.14.5

To run the proposed Adv-ALSTM, ALSTM, and LSTM on the ACL18 and KDD17 dataset, run the commands in the hyperparameter file.

# Reference
For usage of this code, please cite our paper
```
@article{feng2019enhancing,
  title={Enhancing Stock Movement Prediction with Adversarial Training},
  author={Feng, Fuli and Chen, Huimin and He, Xiangnan and Ding, Ji and Sun, Maosong and Chua, Tat-Seng},
  journal={IJCAI},
  year={2019}
}
```

# 数据集格式
见data/dataset_example

ourpped/xxx.csv: xxx股票的csv文件，每个股票一个csv
c_high = high/low -1

trading_dates.csv: 每一行是一个YYYY/MM/DD格式的交易日历

关于预处理数据各列的格式问题：
https://github.com/fulifeng/Adv-ALSTM/issues/2

# 如何自定义数据集
将数据处理成ourpped的格式即可
空值是-123321！！


# 步骤
① 处理数据成它的格式，添加trading_days.csv
② 修改load.py的路径和划分数据集时间点
③ 修改pred_lstm的划分时间点

change pred_lstm seq=5->40

# 画图
桃革plt = pred_lstm.py line 549
            batch_loss_ = np.average(batch_loss)
            batch_acc_ = np.average(batch_acc)
            batch_mcc_ = np.average(batch_mcc)
            batch_f1_ = np.average(batch_f1)

            epoch_loss.append(batch_loss_)
            epoch_acc.append(batch_acc_)
            epoch_mcc.append(batch_mcc_)
            epoch_f1.append(batch_f1_)
