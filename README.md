Basic Python Image
=====
Lightweight python image with Keras, Tensorflow and Scikit-learn  

[Docker Hub Repo](https://hub.docker.com/r/burrito/python/)  
[Github Source](https://github.com/ajay-d/docker-python)

Based off of:
* Ubuntu 16.04 LTS
* Tensorflow 0.11 (CPU only)
* Python 3.5.2
   * flask 0.11.1
   * keras 1.1.0
   * numpy 1.11.2
   * pandas 0.19.0
   * scikit-learn 0.18
   * scipy 0.18.1
   * theano 0.8.2
   * xgboost 0.6

To start container interactively:
-----
```
$ docker run -it burrito/python
$ python3
```
---
To run a Python 3 script:
-----
```
$ docker run -it -v `pwd`:/home/work burrito/python python3 script.py
```
---
To run a Flask script:
-----
```
$ docker run -d -p 5000:5000 -v `pwd`:/home/work burrito/python python3 script.py
```