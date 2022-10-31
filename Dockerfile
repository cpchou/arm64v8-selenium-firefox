FROM cpchou/arm64v8-ubuntu:20.04
#FROM arm64v8/ubuntu:20.04
# download openjdk from https://github.com/ojdkbuild/ojdkbuild

RUN apt-get update

RUN apt-get install firefox -y
RUN apt-get install vim -y
RUN apt install wget -y
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.32.0/geckodriver-v0.32.0-linux-aarch64.tar.gz
RUN gzip -d geckodriver-v0.32.0-linux-aarch64.tar.gz
RUN tar xvf geckodriver-v0.32.0-linux-aarch64.tar
RUN mv geckodriver /usr/bin/.
RUN rm -f /*.gz
RUN rm -f /*.tar

#RUN apt install add-apt-repository -y
#RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get install python3.7 -y
RUN apt install python3-pip -y
RUN pip3 install selenium
RUN pip3 install Image
