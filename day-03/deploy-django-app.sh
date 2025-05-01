#!/bin/bash


code_clone() {
	echo " cloning the Django App.."
	git clone https://github.com/bhhavesh/django-notes-app.git
}
install_req() {
	echo "install dependencies"
	sudo apt-get install docker.io nginx -y docker-compose
}
req_restart() {
	sudo chown $USER /var/run/docker.sock
	#sudo systemctl enable docker
	#sudo systemctl enable nginx
	#sudo systemctl restart docker
}
deploy() {
	docker build -t notes-app .
	#docker run -d -p 8000:8000 notes-app:latest
	docker-compose up -d
}

echo "*****DEPLOYMENT STARTED*****"

if ! code_clone; then
	echo "THE CODE DIRECTORY ALREADY EXISTS"
	cd django-notes-app
fi
if ! install_req; then
	echo "INSTALLATION FAILED"
	exit 1
fi
if ! req_restart; then
	echo " SYSTEM FAULT IDENTIFIED"
	exit 1
fi
if ! deploy; then 
	echo "Deployment Failed "
	exit 1
fi

echo "*****DEPLOYMENT ENDED*****"
