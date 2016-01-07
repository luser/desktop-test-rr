FROM elvis314/desktop-test:0.5.3
ADD dist/*.deb /tmp/
RUN dpkg -i /tmp/rr-*.deb; rm /tmp/rr-*.deb
