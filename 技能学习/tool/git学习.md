# git学习





### 1.清除本地代理配置

- git clone 命令发现连接拒绝

```bash
bahsk@Orange-Cat MINGW64 /d/知识库
$ git clone http://github.com/bahskzs/wiki.git
Cloning into 'wiki'...
fatal: unable to access 'http://github.com/bahskzs/wiki.git/': Failed to connect to 127.0.0.1 port 11000: Connection refused
```

- git config --global -l发现本地配置了代理

```bash
$ git config --global -l
user.name=bahsk
user.email=bahskzs610@live.com
http.sslverify=false
http.proxy=http://127.0.0.1:11000
https.proxy=http://127.0.0.1:11000
```

- 取消代理

```bash
git config --global --unset http.proxy
git config --global --unset https.proxy
```







