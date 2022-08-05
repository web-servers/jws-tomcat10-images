podman manifest create quay.io/${USER}/tomcat10:latest
#for IMGTAG in amd64 s390x ppc64le arm64; do \
for IMGTAG in amd64 s390x ppc64le aarch64
do
  podman manifest add quay.io/${USER}/tomcat10:latest docker://quay.io/${USER}/tomcat10:$IMGTAG
done
podman manifest push --all quay.io/${USER}/tomcat10:latest docker://quay.io/${USER}/tomcat10:latest
