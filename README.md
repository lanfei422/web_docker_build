# web_docker_build
# 执行build.sh [-p port] [-n docker_name]完成自动化打包，p是端口号， -n是镜像名称，可以添加tag eg. build.sh -p 8080 -n web_eg:1.0
# Dockerfile 最后执行默认是django程序，如果是flask或者其他框架，启动命令需要自己改一下。
# 因为涉及到pip install -r requirements.txt，需要外网或者内部自建pip源才行。
# 基于python3.8镜像打的，其他版本自行修改。
