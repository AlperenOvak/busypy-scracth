FROM scratch
COPY rootfs/ /
COPY busybox /bin
# Copy the Python interpreter and libraries
COPY Python-3.8.12 /usr/local
COPY test.py /test.py
RUN ["./bin/busybox", "--install", "-s", "/bin"]
CMD ["/bin/sh"]
