# Inception
Set up a small infrastructure composed of WordPress with LEMP Stack (Nginx, MariaDB and PHP) using Docker / Docker-Compose under specific rules.

## Mandatory part
You then have to set up:
- A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.
- A Docker container that contains WordPress + php-fpm (it must be installed and
configured) only without nginx.
- A Docker container that contains MariaDB only without nginx.
- A volume that contains your WordPress database.
- A second volume that contains your WordPress website files.
- A docker-network that establishes the connection between your containers.

Your containers have to restart in case of a crash.

<img width="697" alt="Screen Shot 2022-12-13 at 2 51 07 AM" src="https://user-images.githubusercontent.com/46541419/207206454-724fbb86-7285-4893-b70c-537f37d81d71.png">

## Bonus part
For this project, the bonus part is aimed to be simple.
A Dockerfile must be written for each extra service. Thus, each one of them will run
inside its own container and will have, if necessary, its dedicated volume.

Bonus list:
  - Set up redis cache for your WordPress website in order to properly manage the cache.
  - Set up a FTP server container pointing to the volume of your WordPress website.
  - Create a simple static website in the language of your choice except PHP (Yes, PHP is excluded!). For example, a showcase site or a site for presenting your resume.
  - Set up Adminer.
  - Set up a service of your choice that you think is useful. During the defense, you will have to justify your choice (I chose Portainer)

## ressources
- [Docker docs](https://docs.docker.com/desktop/)
- [Getting started with docker, the step by step tutorial](https://www.youtube.com/watch?v=Vyp5_F42NGs&t=1s)
- [Dockerfile Tutorial by Example I - Basics](https://www.youtube.com/watch?v=6Er8MAvTWlI)
- [Dockerfile Tutorial by Example II - Best practices](https://www.youtube.com/watch?v=ZcMr4G5DH7c&t=2s)
- [Docker compose tutorial by example](https://www.youtube.com/watch?v=4EqysCR3mjo&list=PLX0Ak4vUBQfC6S8egys9kx6uy6tpw5yDX&index=28)
- [Docker Networking Crash Course](https://www.youtube.com/watch?v=OU6xOM0SE4o)
- [Docker networking II](https://www.youtube.com/watch?v=bKFMS5C4CG0&t=1073s)
- [docker volumes](https://docs.docker.com/storage/volumes/)
- [The NGINX Crash Course](https://www.youtube.com/watch?v=7VAI73roXaY&t=565s)
- [What is Nginx? Understanding the basics of Nginx](https://medium.com/devopscurry/what-is-nginx-understanding-the-basics-of-nginx-in-2021-f8ee0f3d3d54)
- [What is a web server?](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_web_server)
- [What is a Proxy Server and How Does it Work?](https://www.varonis.com/blog/what-is-a-proxy-server)
- [What Is a Reverse Proxy Server?](https://www.nginx.com/resources/glossary/reverse-proxy-server/)
- [TLS Basics](https://www.internetsociety.org/deploy360/tls/basics/)
- [What Is An Ssl/Tls Certificate?](https://aws.amazon.com/what-is/ssl-certificate/?nc1=h_ls)
- [Compare TLS 1.3 and TLS 1.2 Certificates: Which is Stronger?](https://www.venafi.com/blog/why-tls-13-radically-different-tls-12#:~:text=As%20part%20of%20the%20SSL,weaknesses%20that%20had%20security%20vulnerabilities.)
- [How To Create a Self-Signed SSL Certificate for Nginx in Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-nginx-in-ubuntu-16-04)
- [Install WordPress with Nginx on Ubuntu](https://www.digitalocean.com/community/tutorials/install-wordpress-nginx-ubuntu#install-wordpress-with-nginx-on-ubuntu)
- [How To Make a Website With WordPress](https://www.youtube.com/watch?v=O79pJ7qXwoE)
- [Install WordPress WP-CLI (wordpress command line)](https://blog.sucuri.net/2022/11/wp-cli-how-to-install-wordpress-via-ssh.html#create-directory)
- [What's mariadb ?](https://www.techtarget.com/searchdatamanagement/definition/MariaDB)
- [php-fpm: PHP FastCGI Process Manager](https://rm-rf.medium.com/an-introduction-to-php-fpm-tuning-c422f0f26418)
- [PID 1 and the best practices for writing Dockerfiles](https://www.padok.fr/en/blog/docker-processes-container)
- [Introduction to Redis](https://severalnines.com/blog/introduction-redis-what-it-what-are-use-cases-etc/)
- [Configure Redis Caching to Speed Up WordPress](https://www.digitalocean.com/community/tutorials/how-to-configure-redis-caching-to-speed-up-wordpress-on-ubuntu-14-04)
- [ FTP Server Setup (vsftpd)](https://www.youtube.com/watch?v=TyqwwAzwLuM)
- [ Build and deploy a portfolio website ](https://www.youtube.com/watch?v=_xkSvufmjEs)
- [ Set up adminer with nginx ](https://www.digitalocean.com/community/questions/how-to-install-adminer-on-a-nginx-server-running-ubuntu-os-on-it)
- [ Portainer ](https://docs.portainer.io/)

