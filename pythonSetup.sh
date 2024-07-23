# Download Python source
wget https://www.python.org/ftp/python/3.8.12/Python-3.8.12.tgz
tar xzf Python-3.8.12.tgz
cd Python-3.8.12

# Configure and build a static Python binary
./configure --enable-optimizations --prefix=/usr/local LDFLAGS="-static"
make altinstall



