#/bin/sh
nano Dockerfile
sudo docker build -t blackelks/dccexpress .
#sudo docker run -it --rm --name DCCExpress dccexpress
#sudo docker container commit <name> blackelkx/dccexpress:latest
sudo docker push blackelkx/dccexpress
