@REM docker build -t biai-project .
docker run --rm -it -p 8888:8888 -v ${PWD}/working:/working biai-project
pause