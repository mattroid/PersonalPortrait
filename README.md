# Personal Portrait

Uses color-wander to generate a piece of art from a seed. 
By watching a directory for new images we can do facial 
recognition to map generated seeds to faces.

# Capturing images

I'm using a web cam and am running TinCam on windows to capture images and write to a folder that I have volume mapped to in the docker container.

# Facial recognition 

I used the example code from microsoft to get started
https://github.com/Microsoft/ProjectOxford-ClientSDK/blob/master/Emotion/Python/Jupyter%20Notebook/Emotion%20Analysis%20Example.ipynb

# Docker getting started

docker build -t matto/portrait .
docker run --name cv_notebook -d -p 443:8888 -v C:\Users\<username>\PersonalPortrait:/data -v C:\Users\<username>\Pictures:/images -e "PASSWORD=password" matto/portrait
