# Tomcat常见问题





### 1.Windows下控制台乱码

conf/logging.properties

```properties
# 避免中文乱码 java.util.logging.ConsoleHandler.encoding = UTF-8  --> GBK
java.util.logging.ConsoleHandler.encoding = GBK
```







