FROM larjim/kademlialab:latest

WORKDIR /home/go/src

RUN mkdir -p github.com

WORKDIR /home/go/src/github.com

RUN git clone https://github.com/jegladh/KademliaDHT.git

WORKDIR /home/go/src/github.com/KademliaDHT

RUN mkdir -p src/Kademlia/KademliaDHT

RUN cp -R Lab src/Kademlia/KademliaDHT

ENV GOPATH=/home/go/src/github.com/KademliaDHT

EXPOSE 62001

RUN /usr/local/go/bin/go build -o kademlia.exe main.go

CMD ["./kademlia.exe"]
