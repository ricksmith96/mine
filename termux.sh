pkg upgrade -y  && \
pkg install git cmake libuv clang nano -y && \
git clone --single-branch https://github.com/turtlecoin/ninjarig && \
cd ninjarig && \
mkdir build && cd build && \
cmake .. -DWITH_HTTPD=OFF -DWITH_TLS=OFF -DWITH_OPENCL=OFF -DWITH_CUDA=OFF -DCMAKE_BUILD_TYPE=Release && \
make -j2 && \
cp ../src/config.json config.json && \
nano config.json
