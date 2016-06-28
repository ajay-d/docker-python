Basic Python Image
=====
Lightweight python image with Flask, Tensorflow and SciPy  
Comes in under 400 MB

[Docker Hub Repo](https://hub.docker.com/r/burrito/python/)  
[Github Source](https://github.com/ajay-d/docker-python)

Based off of:
* Ubuntu 16.04 LTS
* Tensorflow 0.9.0 (CPU only)
* Python 3.5.1
   * flask
   * numpy
   * pandas
   * scipy


To start container interactively:
-----
```
$ docker run -it -p 5000:5000 burrito/python
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