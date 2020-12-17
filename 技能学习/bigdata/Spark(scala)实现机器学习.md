# Spark(scala)实现机器学习







### K1 业内情况了解，确定待探索、待验证的猜想



#### 1. 资料清单

##### Packt  

- ### 《Scala机器学习项目》

https://subscription.packtpub.com/book/big_data_and_business_intelligence/9781788479042

``` text
主要特点

- 使用著名的开源Scala库（例如Spark ML，H2O，MXNet，Zeppelin和DeepLearning4j）探索机器学习技术
- 通过使用Scala函数式编程以可扩展且更快的方式研究复杂的数值计算来解决现实世界中的机器学习问题
- 涵盖使用Scala Play框架在计算集群上构建和部署机器模型所需的所有关键方面，例如收集，存储，处理，分析和评估。



###### 您将学到什么

- 应用高级回归技术来提高预测模型的性能
- 使用不同的分类算法进行业务分析
- 使用集成技术生成比特币和股票交易的交易策略
- 使用H2O和Spark ML训练深度神经网络（DNN）
- 利用NLP构建可扩展的机器学习模型
- 了解如何将强化学习算法（例如Q学习）应用于开发ML应用程序
- 了解如何使用自动编码器来开发欺诈检测应用程序
- 使用DeepLearning4j和MXNet实施LSTM和CNN模型



###### 关于

机器学习通过将数据转化为可行的信息，对学术界和行业产生了巨大影响。在过去的几年中，Scala的采用率稳步上升，尤其是在数据科学和分析领域。本书适用于具有复杂数值计算背景并想了解更多动手机器学习应用程序开发的数据科学家，数据工程师和深度学习爱好者。

如果您精通机器学习概念，并希望通过使用Scala的功能深入研究这些概念的实际实现来扩展您的知识，那么这本书就是您所需要的！通过11个端到端项目，您将熟悉流行的机器学习库，例如Spark ML，H2O，DeepLearning4j和MXNet。

最后，您将能够使用数值计算和函数式编程来执行复杂的数值任务，以在生产就绪型环境中开发，构建和部署研究或商业项目。

#### 
```



- ### 使用Scala的机器学习快速入门指南

https://subscription.packtpub.com/book/big-data-and-business-intelligence/9781789345070

``` 
主要特点
构建和部署可从您的数据中学习并给出准确预测的机器学习系统
释放Spark ML的功能以及流行的机器学习算法，以解决Scala中的复杂任务。
通过使用Scala与DeepLearning4j库结合流行的神经网络架构（例如LSTM和CNN）来解决动手操作问题

您将学到什么
熟悉用于Scala的基于JVM的机器学习库，例如Spark ML和Deeplearning4j
了解用于分析结构化和非结构化数据的RDD，DataFrame和Spark SQL
了解最佳实践和陷阱的有监督和无监督学习技术
通过线性回归，逻辑回归，朴素贝叶斯，支持向量机和基于树的集成技术学习分类和回归分析
学习使用降维技术进行聚类分析的有效方法
通过协作过滤方法学习推荐系统
深入研究深度学习和神经网络架构

关于
Scala是面向对象的自然和功能编程概念的高度可扩展的集成，可轻松构建可扩展的复杂大数据应用程序。本书为希望在Scala中开发和培训有效的机器学习模型的机器学习开发人员和数据科学家提供了方便的指南。

本书首先介绍了机器学习，同时介绍了深度学习和机器学习的基础知识。然后说明如何使用基于Scala的ML库通过线性回归，广义线性回归，逻辑回归，支持向量机和朴素贝叶斯算法解决分类和回归问题。

它还涵盖了用于解决分类和回归问题的基于树的集成技术。向前发展，它涵盖了无监督学习技术，例如降维，聚类和推荐系统。最后，它使用Scala中的实际示例简要介绍了深度学习。
```







#### 2. 任务列表

1.机器学习是一个什么样的过程?

2.如何用spark实现机器学习的过程？

3.scala和其他语言在spark上的表现特征如何？

4.机器学习的超参数调优、交叉验证是什么？





### K2 概念，知识分级



#### 1. 机器学习是什么？



概念可以从Packt上拷贝





### 2.如何用Spark实现机器学习的过程？





##### .1 环境搭建



List

Ubuntu 16.04 / Windows 10 64位



-  Apache Spark(win10安装这个之前一定要把hadoop给装了否则会很惨)

  参考资料： https://blog.csdn.net/songhaifengshuaige/article/details/79480491

  安装好的环境：H:\bigdata\spark-2.4.7-bin-without-hadoop-scala-2.12

- MXNet ,Zeppelin, DeepLearning4j,H2O

- hadoop 2.7 及以上

  windows10搭建hadoop的深坑，winutils.exe怎么安装或者说怎么手动编译

  参考文档：https://blog.csdn.net/love666666shen/article/details/78812622

  可以去github上下载 https://github.com/cdarlint/winutils/tree/master/hadoop-3.0.1/bin

  安装hadoop https://blog.csdn.net/songhaifengshuaige/article/details/79575308

  启动hadoop一定要记得用超管权限

  安装好的环境： H:\bigdata\hadoop-3.0.0

- Java 1.7+/1.8+

- Scala 2.11.x 及以上

- Maven,Maven编译器插件，Maven assembly插件



Course

​	windows 10 安装spark踩坑实例：https://www.codenong.com/cs106480790/

Error: A JNI error has occurred, please check your installation and try again
Exception in thread "main" java.lang.NoClassDefFoundError: org/slf4j/Logger
  at java.lang.Class.getDeclaredMethods0(Native Method)
  at java.lang.Class.privateGetDeclaredMethods(Class.java:2701)
  at java.lang.Class.privateGetMethodRecursive(Class.java:3048)
  at java.lang.Class.getMethod0(Class.java:3018)
  at java.lang.Class.getMethod(Class.java:1784)
  at sun.launcher.LauncherHelper.validateMainClass(LauncherHelper.java:544)
  at sun.launcher.LauncherHelper.checkAndLoadMain(LauncherHelper.java:526)
Caused by: java.lang.ClassNotFoundException: org.slf4j.Logger
  at java.net.URLClassLoader.findClass(URLClassLoader.java:381)
  at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
  at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:349)
  at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
  ... 7 more



两份文档组合

1.https://blog.csdn.net/Ahuuua/article/details/103136888

2.https://blog.csdn.net/ryanzhongj/article/details/80677281





spark 本地以yarn提交

spark-shell --master yarn  --deploy-mode client

环境变量中需要配置HADOOP_CONF_DIR



继续报错: 

WARN yarn.Client: Neither spark.yarn.jars nor spark.yarn.archive is set, falling back to uploading libraries under SPARK_HOME.

[2020-11-25 06:35:54.271]Container exited with a non-zero exit code 1. Last 4096 bytes of stderr :
'"H:\Program Files\Java\jdk1.8.0_271"' ????????????????????????е????
?????????????



官方文档： Running Spark on YARN https://spark.apache.org/docs/latest/running-on-yarn.html#spark-properties



S1 : 配置 HADOOP_CONF_DIR 或者是YARN_CONF_DIR 的环境变量。

HADOOP_CONF_DIR：contains the (client side) configuration files for the Hadoop cluster.

包括hadoop 集群的配置文件



S2 ：在yarn 以集群模式方式提交

To launch a Spark application in `cluster` mode:

```shell
$ ./bin/spark-submit --class path.to.your.Class --master yarn --deploy-mode cluster [options] <app jar> [app options]
```



e.g.向集群提交Pi

```
./bin/spark-submit --class org.apache.spark.examples.SparkPi \
    --master yarn \
    --deploy-mode cluster \
    --driver-memory 4g \
    --executor-memory 2g \
    --executor-cores 1 \
    --queue thequeue \
    examples/jars/spark-examples*.jar \
    10
```



S3: 预先准备的内容

To make Spark runtime jars accessible from YARN side, you can specify `spark.yarn.archive` or `spark.yarn.jars`. For details please refer to [Spark Properties](https://spark.apache.org/docs/latest/running-on-yarn.html#spark-properties). If neither `spark.yarn.archive` nor `spark.yarn.jars` is specified, Spark will create a zip file with all jars under `$SPARK_HOME/jars` and upload it to the distributed cache.



##### .2 源码地址，如何使用源码

Packt地址 ：

本机源码地址 : G:\personal\Scala-Machine-Learning-Projects

源码中的案例数据：https://www.kaggle.com/c/allstate-claims-severity/data





##### .3 用于学习的数据集去哪里获取

Kaggle

https://www.kaggle.com/c/allstate-claims-severity/data