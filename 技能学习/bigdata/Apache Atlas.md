# Apache Atlas



### K1 使用场景

已知使用了Atlas的企业 ：美团，网易



1.元数据管理

2.血缘管理

3.数据治理？







### K2 待验证功能

1.自动hook

2.血缘关系图



### K3 快速入门

#### 1.安装部署

##### 1.1 源码编译

- 001 官方提供源码包编译



- 002 本地编译





npm uninstall node-sass

npm i node-sass --sass_binary_site=https://npm.taobao.org/mirrors/node-sass/



#####  常见问题：

1.兼容性 Atlas 和CDH 6.3.2的兼容性问题

https://gaoming.blog.csdn.net/article/details/108844380

2.dashboardv2,dashboardv3中 npm 和 node的报错

问题：

pom.xml<font color="red">原始</font>配置

```
<execution>
    <id>install node and npm</id>
    <goals>
        <goal>install-node-and-npm</goal>
    </goals>
    <configuration>
        <nodeVersion>${node-for-v2.version}</nodeVersion>
        <npmVersion>${npm-for-v2.version}</npmVersion>
    </configuration>
</execution>
```



解决方案一：

<font color="red">修改</font>后配置：

```xml
<execution>
    <id>install node and npm</id>
    <goals>
        <goal>install-node-and-npm</goal>
    </goals>
    <configuration>
        <nodeDownloadRoot>http://nodejs.org/dist/</nodeDownloadRoot>
        <npmDownloadRoot>https://registry.npm.taobao.org/npm/-/</npmDownloadRoot>
        <nodeVersion>${node-for-v2.version}</nodeVersion>
        <npmVersion>${npm-for-v2.version}</npmVersion>
    </configuration>
</execution>
```



如果在配置了以下两个地址的情况还无法下载，

<nodeDownloadRoot>http://nodejs.org/dist/</nodeDownloadRoot>
<npmDownloadRoot>https://registry.npm.taobao.org/npm/-/</npmDownloadRoot>

<b>那么可以考虑手动下载</b>

- s1:移除node-sass

npm uninstall node-sass

- s2:指定下载的环境

npm i node-sass --sass_binary_site=https://npm.taobao.org/mirrors/node-sass/



解决方案二：

1.本地安装nodejs,npm等

2将IDEA的Terminal 换成cmd

![image-20201207013903118](D:\技能学习\bigdata\img\Apache Atlas\image-20201207013903118.png)



参考文档2： https://www.cnblogs.com/maobuji/p/11123606.html



##### 1.2 修改各项配置，集成CDH

