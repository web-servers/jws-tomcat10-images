# jws-tomcat10-images
multi arch images based on https://github.com/apache/tomcat/tree/main/modules/stuffed

# NOTES
please check https://github.com/apache/tomcat/tree/main/modules/stuffed before using THIS!!!
THIS is a copy it might be outdated...

The jws-tomcat10 images are based on ubi8/openjdk-11 instead the openjdk:11-jre for the ASF based images.

# Building the images
on each platform IMGTAG in (amd64 s390x ppc64le aarch64) do:
```bash
mvn package
podman quay.io/${USER}/tomcat10:$IMGTAG
podman build -t quay.io/${USER}/tomcat10:$IMGTAG .
podman push quay.io/${USER}/tomcat10:$IMGTAG
```

Then when you have done all the platforms
```bash
bash multiplatform.sh
podman push quay.io/${USER}/tomcat10:latest
```
