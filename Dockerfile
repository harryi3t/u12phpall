FROM drydock/u12all:prod

ADD . /u12phpall

RUN /u12phpall/install.sh && rm -rf /u12phpall
