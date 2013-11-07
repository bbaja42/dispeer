# Installing Dispeer #

First off, we're on Python3 (3.3 to be slightly more specific). I know, sadfaces and grumblings. If you want to make a Python2.x implementation, go for it and I'll link it here or the README. Anyway, here's [a link](http://www.python.org/getit/) to where you can download Python3.

Secondly, we're using Mongo as the database. Check out [MongoDB](http://docs.mongodb.org/manual/installation/) for your particular way of installing it.

Thirdly, we have pip and virtualenv going on. This is fairly common so read some details for [pip](http://www.pip-installer.org/en/latest/) and [virtualenv](http://docs.python-guide.org/en/latest/dev/virtualenvs/#virtualenv). I mention `/usr/bin/python3.3` further down with virtualenv as where python3 is on my machine, `which python3` might work for you to find it.

## General Idea ##

    $ sudo pip install virtualenv
    $ virtualenv -p /usr/bin/python3.3 dispeer
    $ source dispeer/bin/activate
    (dispeer) $ cd dispeer
    (dispeer) $ git clone https://github.com/pauricthelodger/dispeer.git
    (dispeer) $ cd dispeer
    (dispeer) $ pip install -r requirements.txt
