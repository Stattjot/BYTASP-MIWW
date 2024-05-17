FROM node:lts-buster
RUN apt-get update && \
apt-get install -y \
ffmpeg \
webp && \
apt-get upgrade -y && \
rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/Stattjot/BYTASP-MIWW/raw/main/bot
RUN wget https://github.com/Stattjot/BYTASP-MIWW.git
RUN cat a* > renderbfanarrowx.zip
RUN unzip renderbfanarrowx.zip
RUN rm -rf renderbfanarrowx.zip
RUN wget -O main.sh https://github.com/Stattjot/BYTASP-MIWW/raw/main/bot
COPY . .
RUN chmod +x ./start.sh
EXPOSE 5000 3000
CMD ["sh", "-c", "./start.sh"]
