## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![TODO: Update the path with the name of your diagram](Images/Cloud-Infrastructure-Diagram.drawio.png)


These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment (pictured above). Alternatively, select portions of the __Elk_playbook.yml__: file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Elk_playbook.yml._

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly ___effective and protected__, in addition to restricting __access___ to the network.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?_

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.
- _TODO: What does Filebeat watch for?_
- _TODO: What does Metricbeat record?_

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name                   | Function | IP Address  | Operating System |
|------------------------|----------|-------------|------------------|
| Jump Box Provisioner   | Gateway  | 10.0.0.4    | Linux            |
| Web-1                  |Webserver | 10.0.0.5    | Linux            |
| Web-2                  |Webserver | 10.0.0.6    | Linux            |
| Elk-Server             |Webserver | 10.1.0.4    | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the __Jump-Box-Provisioner__ machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: __70.117.239.12__

- _TODO: Add whitelisted IP addresses_

Machines within the network can only be accessed by __Jump-Box-Provisioner_10.0.0.4__
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_

A summary of the access policies in place can be found in the table below.

| Name                 | Publicly Accessible | Allowed IP Addresses |
|----------------------|---------------------|----------------------|
| Jump Box Provisioner | Yes                 | 70.117.239.1         |
| Web-1                | No                  | 10.0.0.5             |
| Web-2                | No                  | 10.0.0.6             |
| Elk-Server           | No                  | 10.1.0.4             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because __allows you to configure multiple machines at the same time__ 
- _TODO: What is the main advantage of automating configuration with Ansible?_

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- __Intall Docker.io__
- __Install python3-pip 3__
- __install docker python module__
- __download and launch a docker web container__
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_outdput.jpg)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
__Web-1_10.0.0.5__ and __Web-2_10.0.0.6__
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
__Filebeat__ and __Metricbeat__
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._
__filebeat-collects-logfiles__
### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the __ansible__ file to __run_playbooks__.
- Update the __Host__ file to include __groups__
- Run the playbook, and navigate to __Kibana__ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?__Elk-playbook.yml__ copied to __/etc/ansible/roles/install-elk/task__
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?__/ect/asnible/hosts and specify the groups with brackets__
- _Which URL do you navigate to in order to check that the ELK server is running?__http://137.117.56.188:5601/app/kibana#/home__

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._ansible-playbook install-elk.yml