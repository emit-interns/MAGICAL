FROM jayl940712/magical

# Debian Jessie packages have been moved to archive
# TODO: retrieve actual keyring instead of using trusted=yes
RUN > /etc/apt/sources.list
RUN echo "deb [trusted=yes] http://archive.debian.org/debian/ jessie main" >> /etc/apt/sources.list
RUN echo "deb-src [trusted=yes] http://archive.debian.org/debian/ jessie main" >> /etc/apt/sources.list
RUN echo "deb [trusted=yes] http://archive.debian.org/debian-security jessie/updates main" >> /etc/apt/sources.list
RUN echo "deb-src [trusted=yes] http://archive.debian.org/debian/ jessie main" >> /etc/apt/sources.list

RUN apt update

# Installing GDB
RUN apt-get install -y gdb