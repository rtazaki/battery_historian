FROM gcr.io/android-battery-historian/stable:3.0
 
RUN apt update && apt install -y \
    tzdata && \
    ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
