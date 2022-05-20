import paramiko

ssh = paramiko.SSHClient()
ssh.connect(server, username=ec2-user)
ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(ansible-playbook --connection=local --inventory 127.0.0.1, /home/ec2-user/git/web-server.yml)