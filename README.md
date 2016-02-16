# Install Eclipse CHE from a vagrant box

## Prerequites

You will need to have the following tools.

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](https://www.vagrantup.com/)

## Set-up

From the root of this project, up and running the box.

```shellscript
$ vagrant up
```

## Run Eclipse CHE (latest version)

Always from the root of this project, start the Eclipse CHE server

```shellscript
$ vagrant ssh -c /home/vagrant/eclipse-che-latest/eclipse*/bin/che.sh
```

## Run Eclipse CHE (nightly version)

Always from the root of this project, start the Eclipse CHE server

```shellscript
$ vagrant ssh -c /home/vagrant/eclipse-che-nightly/eclipse*/bin/che.sh
```

## Test

Open your favorite web browser and go to this URL http://localhost:8080

## Inspect the Eclipse CHE workspace instances

From the root of this project, execute this command line.

```shellscript
$ vagrant ssh
```

To inspect the workspace instances, execute this command line.

```shellscript
$ docker ps
```
