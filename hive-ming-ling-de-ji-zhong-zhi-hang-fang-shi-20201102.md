# hive命令的几种执行方式\_20201102

1. hue
2. 2.CLI\(控制台\)

   hive

​ -e "show databases;"

​ -f /srv/xxxx.sql

​ beeline 远程连接

​

3.新建一个sql文件

--创建hive表脚本

use xxxx;

drop table dwd\_labor\_company\_injurys\_di ;

create table dwd\_labor\_company\_injurys\_di as select b.id month\_id,d.id area\_id,c.crop\_id company\_id,a.AAE078 is\_pay,a.AAE140 plant\_type,a.AAB119 is\_ginseng\_num from ods\_si\_ad21\_di a left join dim\_month b on a.AAE002=b.month\_name left join dim\_crop\_di c on a.AAB001=c.crop\_id left join dim\_areainfo d on c.area=d.AREA\_CODE where a.AAE140='工伤险'

4.新建一个sh文件

```sql
#!/bin/bash

hive -f  /srv/xxx.sql
```

5.配置datax shell任务

![image-20201102202148318](c:/Users/bahsk/AppData/Roaming/Typora/typora-user-images/image-20201102202148318.png)

命令:

```text
ssh 192.168.41.244 "/srv/hive_script/dwd_labor_company_injurys_di.sh >> /srv/hive_script/dwd_labor_company_injurys_di.log"
```

