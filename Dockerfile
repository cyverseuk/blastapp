FROM ubuntu:16.04

RUN apt install -y wget
RUN wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ncbi-blast-2.4.0+-x64-linux.tar.gz
RUN tar -xvzf ncbi-blast-2.4.0+-x64-linux.tar.gz
RUN cp ncbi-blast-2.4.0+/bin/* /usr/bin

COPY runblast.sh /usr/bin/
RUN chmod u+x /usr/bin/runblast.sh

ENTRYPOINT ["/usr/bin/runblast.sh"]
