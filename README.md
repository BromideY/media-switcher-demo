## 直播画面切换平台

可以设置多个源流画面，选择其中一个推流出去（目前只支持 rtmp 推流）<br>

小预览画面幅面固定是 320x180，帧率 15<br>

主画面可以自己设置幅面，帧率，码率，推流地址和播流地址<br>

主画面可以设置特效（叠加水印，文字，图片等等）<br>

页面上输出画面播放 的是 m3u8 流（延迟有点大），如果你想播 rtmp 可以直接用客户端播放器播<br>

由于系统是对所有源流进行解码，做了视频幅面帧率变换和音频重采样，最后编码成 h264 和 aac 推流出去，所以对硬件资源要求比较高

## 依赖项目

特效编辑器依赖<br>
https://github.com/nihaojob/vue-fabric-editor<br>
感谢大佬的项目

## 系统要求

ubuntu 20.04 以上

## 启动方式

克隆仓库

```
git clone https://github.com/BromideY/media-switcher-demo.git
git lfs fetch
```

第一次启动需要准备运行环境

```
bash ./PrepareEnv.sh
```

接下来就可以运行程序了

1. `bash ./Start.sh`
2. 打开 http://localhost:10001 （可以在 Start.sh 里面配置端口）

## 截图

![](./pic/1.png)

![](./pic/2.png)

![](./pic/3.png)

![](./pic/4.png)

![](./pic/5.png)
