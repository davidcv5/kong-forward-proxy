FROM kong:latest
RUN mkdir /forward-proxy
COPY . /forward-proxy/
RUN cd /forward-proxy && luarocks make