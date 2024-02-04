# terraform-web-app

- provisions a auto scale group
- provisions 4 subnet groups (2 publics and 2 privates)
- witch subnet has one public security group and one private security group
- configure the communication between the world with the public subnet and between the public subnet with the private subnet

- bootstrap the machines with a ansible script present on 'pedrohro1992/ansible-roles/web-app'

- configure ansible control to controle this machines

