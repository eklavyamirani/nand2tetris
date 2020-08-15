# nand2tetris

This project is for the homework exercises for nand2tetris

# How to use the project to simulate chips
1. Build the docker container:
docker build -t simulator . 
2. docker run -it simulator:latest bash
3. To test the chip run:
 docker run -t simulator:latest /bin/sh -c "./tools/HardwareSimulator.sh <<path to .tst for the project>>"
 e.g.  docker run -t simulator:latest /bin/sh -c "./tools/HardwareSimulator.sh ./projects/05/CPU.tst"