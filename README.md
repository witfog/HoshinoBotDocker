# HoshinoBotDocker

A docker image for [Ice-Cirno/HoshinoBot](https://github.com/Ice-Cirno/HoshinoBot).  
This image auto publish into [Github Container Registry](ghcr.io) by Github Action.  

## 说明

此镜像从 [Ice-Cirno/HoshinoBot](https://github.com/Ice-Cirno/HoshinoBot) 仓库拉取 Hoshino 源码, 未对其源码做任何更改。  
你可以使用此镜像快速部署 HoshinoBot 于 Docker 环境中, 无需在主机环境安装 Python 环境。

# 获取镜像

1. 从 https://github.com/settings/tokens 申请一个 **Github Access Token**  
2. 登录
   ```sh
   docker login ghcr.io
   ``` 
    此命令要求你输入用户名和密码, 用户名使用你登录 Github 时的用户名, 密码使用步骤一申请的 **Github Access Token** 。注意不要使用 Github 密码登录, 使用 Github 密码是无法登录的。
3. 拉取镜像 
   ```sh 
   docker pull ghcr.io/witfog/hoshinobot
   ```  

# 镜像详情

镜像内的 HoshinoBot 运行于 **/HoshinoBot** 目录下, 你需要在创建三个目录并 Mount 到容器内:

- config : /HoshinoBot/hoshino/config  
  对应 HoshinoBot 的 config 目录。此目录保存所有配置文件, 你可以在此目录放置或者修改配置, 然后重启容器即可应用配置。
- modules : /HoshinoBot/hoshino/modules  
  对应 HoshinoBot 的 modules 目录。此目录保存所有插件, 你可以将自己的插件放到此目录下, 并且在 config 目录放置配置文件并且修改 \_\_bot\_\_.py 以启用插件, 然后重启容器即可。
- res : <你的配置文件中 RES_DIR 的路径>  
  资源文件目录, 此仓库不提供下载, 请自行寻找下载链接。  
- requirements : /HoshinoBot/hoshino/requirements  
  此目录用于放置所有自定义插件的 requirements.txt 文件, 镜像每次启动之前会对该目录下的所有 .txt 文件使用 ```pip install -r``` 安装相关依赖。

tips: 
1. 如果你的 config 和 modules 目录为空的话, 镜像启动时会将 HoshinoBot 原有的文件复制进去, 如果目录不为空, 复制过程也会进行但是会跳过已有文件不进行覆盖。  
2. 当你需要更换服务器的时候, 将上面 3 个目录复制到新的服务器并启动容器即可保持原有配置启动 HoshinoBot 。

# 使用方法

## 准备工作

请自行安装 docker-ce, 并按照 [获取镜像](#获取镜像) 的说明登录 ghcr.io 已确保能正确拉取镜像。  
如果使用 docker-compose 需要额外安装 docker-compose 。

## 使用 docker 安装

[docker-run.sh](./example/docker/docker-run.sh)
```sh
git clone https://github.com/witfog/HoshinoBotDocker.git # 不想安装 git 可以自己下载 zip 文件并解压

cd HoshinoBotDocker/example/docker

./docker-run.sh
```

## 使用 docker-compose 安装(建议, 可搭配其他容器一起运行)

[docker-compose.yml](./example/docker-compose/docker-compose.yaml)
```sh
git clone https://github.com/witfog/HoshinoBotDocker.git # 不想安装 git 可以自己下载 zip 文件并解压

cd HoshinoBotDocker/example/docker-compose

docker-compose up -d

# 停止容器请在相同目录下运行 docker-compose down
```