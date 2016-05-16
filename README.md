# Personal Portrait

Uses color-wander to generate a piece of art from a seed. 
By watching a directory for new images we can do facial 
recognition to map generated seeds to faces.

# Docker getting started
docker build -t matto/portrait .
docker run --name cv_notebook -d -p 443:8888 -v C:\Users\<username>\PersonalPortrait:/data -v C:\Users\<username>\Pictures:/images -e "PASSWORD=password" matto/portrait
