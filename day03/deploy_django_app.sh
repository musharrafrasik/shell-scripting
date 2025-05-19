#!/bin/bash

: <<'task'
deploy a django app
and handle thae code for errors
task

code_clone() {
	echo "cloning the jango app..."
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_req() {
	echo "installing dependencies"
	sudo apt-get install docker.io nginx -y docker-compose
}

req_restarts() {
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy() {
	docker build -t notes-app .
	#docker run -d -p 8000:8000 notes-app:latest
	docker-compose up -d
}



echo "*************** deployment started *****************"

if ! code_clone; then
	echo "the code dir already exists"
	cd django-notes-app
fi


if ! install_req; then
	echo "installation failed"
	exit 1
fi


if ! req_restarts; then
	echo "system fault identified"
	exit 1
fi


if ! deploy; then
	echo "deployment failed, mail to admin"
	exit 1
fi

echo "*************** deployment done *****************"
