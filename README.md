Purpose
-------

Prepare a local development environment using Vagrant and provision it with Puppet.

Prerequisites
-------------

Install [Vagrant](http://downloads.vagrantup.com/) on your machine.

Steps
-----

Grab the default centos box

    vagrant box add theCentos64 http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130427.box

Clone this repository

    git clone git@github.com:tekkie/vagrant-puppet-dev-env.git

Start the machine

    cd vagrant-puppet-dev-env
    vagrant up
