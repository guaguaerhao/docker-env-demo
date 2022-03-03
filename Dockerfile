FROM openjdk:8-jre

# 挂载目录
VOLUME /home/intelligent-posture
# 创建目录
RUN mkdir -p /home/intelligent-posture
# 指定路径
WORKDIR /home/intelligent-posture
# 复制jar文件到路径
COPY demo.jar /home/intelligent-posture/demo.jar

# 默认值
#ARG VAR1=prod
ENV VAR1 ${VAR1}

ENTRYPOINT ["java","-Dspring.profiles.active=${VAR1}","-jar", "demo.jar"]
