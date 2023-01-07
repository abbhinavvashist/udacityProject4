[![CircleCI](https://dl.circleci.com/status-badge/img/gh/abbhinavvashist/udacityProject4/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/abbhinavvashist/udacityProject4/tree/main)


create cloud9 environment with 2 CPU and 8 GB RAM and SSHoption selected
Once environment created ,change volume szie to 30 GB.

Open cloud9 environment and generate SSH keyand copy keyto your github account
ssh-keygen -t rsa
cat /home/ec2-user/.ssh/id_rsa.pub


clone your repo into cloud9 env.
git clone https://github.com/abbhinavvashist/udacityProject4.git

create local env inside ur project folderand activate it
cd udacityProject4/
python3 -m venv ~/.devops
source ~/.devops/bin/activate

run make install command to install alldependencies in makefile.

provide permissions for hadolint
chmod +x ./hadolint

then make lint command to check on dockerfile errors.you should get below message - 
------------------------------------
Your code has been rated at 10.00/10

give permissions on below scripts
chmod +x run_docker.sh 
chmod +x run_kubernetes.sh 
(.devops) voclabs:~/environment/udacityProject4 (main) $ chmod +x upload_docker.sh 


now run docker shell script
./run_docker.sh

Open new terminal in cloud9 and give permission on prediction script and run it
cd udacityProject4/
source ~/.devops/bin/activate

Once ddocker is up and running ,perform below-
chmod +x make_prediction.sh 
./make_prediction.sh

After checking theout put ,you can Ctrl+c the docker run

Now you can upload the docker image created to your docker hub account
./upload_docker.sh


Download Minikube 
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

Download Kubectl
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.8.0/bin/linux/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/

$ minikube start

./run_kubernetes.sh


 






•	Upload a complete Github repo with CircleCI to indicate that your code has been tested: [https://github.com/abbhinavvashist/udacityProject4.git]

•	Output file: ./output_txt_files/docker_out.txt contains results from "add at least one log statement to app.py that prints out the output prediction values and ./run_docker.sh again"

•	Output file: ./output_txt_files/kubernetes_out.txt contains results from "Copy the text output after calling run_kubernetes.sh and paste it into a file kubernetes_out.txt."

