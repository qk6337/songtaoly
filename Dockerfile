FROM dordoka/tomcat
MAINTAINER zhangds "zds038@qq.com"
RUN apt-get update
RUN apt-get install python3.3
RUN apt-get install make automake g++ bzip2 python unzip patch subversion ruby build-essential git-core checkinstall yasm texi2html libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libsdl1.2-dev libtheora-dev libvdpau-dev libvorbis-dev libvpx-dev libx11-dev libxfixes-dev libxvidcore-dev zlib1g-dev -y
RUN mkdir /usr/ffmpegtar
RUN mkdir /usr/ffmpegtar/ffmpeg
WORKDIR /usr/ffmpegtar/
RUN git clone git://git.videolan.org/x264.git
WORKDIR /usr/ffmpegtar/x264
RUN ./configure --enable-shared --prefix=/usr/ffmpegtar/ffmpeg
RUN make
RUN make install
 
