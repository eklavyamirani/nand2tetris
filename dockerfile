# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine

# copy working directory into image
COPY ./nand2tetris/ /nand2tetris/

# give execute permissions to Hardware Simulator script
RUN chmod +x /nand2tetris/tools/HardwareSimulator.sh

# set nand2tetris as the working directory.
WORKDIR /nand2tetris