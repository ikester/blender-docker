FROM ubuntu:xenial

LABEL authors="Isaac (Ike) Arias <ikester@gmail.com>"

RUN apt-get update && \
	apt-get install -y \
		curl \
		bzip2 \
		libfreetype6 \
		libgl1-mesa-dev \
		libglu1-mesa \
		libxi6 \
		xz-utils \
		libxrender1 && \
	apt-get -y autoremove && \
	rm -rf /var/lib/apt/lists/*

ENV BLENDER_MAJOR 2.82
ENV BLENDER_VERSION 2.82
ENV BLENDER_BZ2_URL https://mirror.clarkson.edu/blender/release/Blender$BLENDER_MAJOR/blender-$BLENDER_VERSION-linux64.tar.xz

RUN mkdir /usr/local/blender && \
	curl -SL "$BLENDER_BZ2_URL" -o blender.tar.xz && \
	tar -xf blender.tar.xz -C /usr/local/blender --strip-components=1 && \
	rm blender.tar.xz

VOLUME /media
ENTRYPOINT ["/usr/local/blender/blender", "-b"]
