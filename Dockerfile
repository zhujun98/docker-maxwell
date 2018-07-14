FROM centos:7.0.1406

# avoid checksum error
RUN yum install -y yum-plugin-ovl

# gcc, g++ 4.8.5 and cmake 2.8.12
RUN yum install -y gcc && \
    yum install -y gcc-c++ && \
    yum install -y cmake && \
    yum install -y make && \
    yum install -y nss && \
    yum install -y curl && \
    yum install -y git && \
    yum install -y wget && \
    yum install -y tar && \
    yum clean all

# install libzmq
RUN wget https://github.com/zeromq/libzmq/releases/download/v4.2.5/zeromq-4.2.5.tar.gz \
  && tar -xzf zeromq-4.2.5.tar.gz && rm zeromq-4.2.5.tar.gz \
  && pushd zeromq-4.2.5 \
  && ./configure -prefix=${HOME}/share/zeromq \
  && make -j${nproc} \
  && make install \
  && popd \
  && rm -r zeromq-4.2.5

# install cppzmq
RUN wget https://github.com/zeromq/cppzmq/archive/v4.2.2.tar.gz \
  && tar -xzf v4.2.2.tar.gz && rm v4.2.2.tar.gz \
  && cp cppzmq-4.2.2/*.hpp karabo-bridge-cpp/external/cppzmq/ \
  && rm -r cppzmq-4.2.2

CMD ["/bin/bash"]