# Scala 入门

开始时间： 2020-12-08

### K1 背景知识

#### 学习scala的基本用途 ：

1.  语言美，函数式编程的便捷性，支持java的很多库，有良好的生态体系
2.  **数据分析应用 spark的底层是用scala写的**





### K2 概念，知识分级

#### scala的基本学习路线

1.开发所需要的工具(工欲善其事必先利其器)  K1 

2.scala的特性(函数式，多范式，隐式转换)  K4

3.scala与其他OOP类似的语言  K3

4.scala的应用 K4



#### Task 任务列表

1.了解scala开发常用的开发工具，并掌握一个工具

2.掌握scala的基本语法

3.入门scala的特性

4.通过比较scala和其他语言的异同点，快速学习scala和其他语言相似的地方

5.熟练掌握scala的应用案例

(参考课程 ： https://coding.imooc.com/learn/list/215.html)





### K3	快速入门



#### T1 IDEA+Maven快速搭建scala开发环境



![image-20201213224906464](D:\技能学习\bigdata\img\Scala 入门\image-20201213224906464.png)



#### T3.入门scala的特性

##### var 和 val 

val 代表的是常量，不可再改变值

```scala
scala> val a = 100
a: Int = 100

scala> a =200
<console>:12: error: reassignment to val
       a =200
```

so,重新为a赋值后报错，由此可见val定义的是不可变值



##### var 和 val 

var 代表是变量

val 代表常量



##### lazy

lazy是在实际使用的时候才会调用

```scala
scala> lazy val a = 1
a: Int = <lazy>

scala> a
res2: Int = 1
```



##### 导入文件

```scala
import scala.io.Source._
val file = fromFilefromFile("D:\\技能学习\\bigdata\\Atlas.txt").mkString


```

ps:刚好遇到了控制台显示中文文件乱码的问题，经排查是cmd显示中文乱码。

解决此方案仅需： chcp 936

#### ? 什么场景适合使用lazy ,什么时候适合使用延迟加载?



##### scala函数

![image-20201213225809553](D:\技能学习\bigdata\img\Scala 入门\image-20201213225809553.png)

> 方法的定义和使用

![image-20201213225933659](D:\技能学习\bigdata\img\Scala 入门\image-20201213225933659.png)

通用公式

```scala
def 方法名(参数名:参数类型):返回值 = {
	//方法体
	
	//返回值 不需要return关键字
}
```



![image-20201213230443464](D:\技能学习\bigdata\img\Scala 入门\image-20201213230443464.png)

没有入参的函数，调用括号时是可以省略的



#### T2.掌握scala的基本语法

- 基本数据类型

  Byte/Char

  Short/Int/Long/Float/Double

  Boolean

```scala
scala> var a = 'c'
a: Char = c

scala> var a = "c"
a: String = c

scala> var a = 1L
a: Long = 1

scala> var a = 1.0
a: Double = 1.0

scala> var a = 1.0F
a: Float = 1.0

scala> var a =true
a: Boolean = true

scala> var a:Short = 1
a: Short = 1

scala> var a:Byte = 1
a: Byte = 1
```

什么类型需要显式定义？

Short需要显式定义

Byte需要显式定义



- 数据类型转换

  int --> Double

  ```scala
  scala> a.asInstanceOf[Double]
  res0: Double = 1.0
  ```

- 判断是否是什么类型

  ```scala
  a.asInstanceOf[Double].isInstanceOf[Double]
  res1: Boolean = true
  ```

  

  a  --> int

  a.asInstanceOf[Double]   --> Double    //将int转换为Double

  a.asInstanceOf[Double].isInstanceOf[Double]   --> Boolean  //将int转换为Double后，判断是否是Double类型，true/false

  