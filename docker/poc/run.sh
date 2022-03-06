# Build and run file
docker rm -f m1
docker rmi m1i
docker build -t m1i .
docker run --rm -it --name=m1 m1i