FROM ubuntu:12.04
MAINTAINER Ted Mielczarek <ted@mielczarek.org>
RUN apt-get update
RUN apt-get install -qq linux-libc-dev linux-libc-dev:i386 gcc-multilib libc6-dev:i386 rpm lib32stdc++6 zlib1g:i386 zlib1g-dev:i386 python-pexpect build-essential gcc g++ gcc-4.6 g++-4.6 cmake pkg-config zlib1g-dev gdb cpp cpp-4.6 git
RUN ln -s /usr/lib32/libstdc++.so.6 /usr/lib32/libstdc++.so
ADD build.sh /tmp/
