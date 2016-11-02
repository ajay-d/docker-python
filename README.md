Basic Python Image
=====
Lightweight python image with Keras, Tensorflow and Scikit-learn  
Comes in under 400 MB

[Docker Hub Repo](https://hub.docker.com/r/burrito/python/)  
[Github Source](https://github.com/ajay-d/docker-python)

Based off of:
* Ubuntu 16.04 LTS
* Tensorflow 0.11 (CPU only)
* Python 3.5.2
   * flask
   * keras
   * numpy
   * pandas
   * scikit-learn
   * scipy
   * theano

To start container interactively:
-----
```
$ docker run -it burrito/python
$ python3
```
---
To run a Python 3 script:
```
$ docker run -it -v `pwd`:/home/work burrito/python python3 script.py
```
---
To run a Flask script:
```
$ docker run -d -p 5000:5000 -v `pwd`:/home/work burrito/python python3 script.py
```
---
To install other packages:
```
$ docker run -i -t burrito/python
$ docker ps -a
$ docker exec `container ID` pip3 install `package`
```
---
Copy files in or out:
-----
```
$ docker cp `local directory` `container ID`:/home/work
$ docker cp `container ID`:/home/work/data.csv `local directory`
```
---