############################################################
# Dockerfile to build NARG Base Image
# Based on Oracle Linux 6.6 Image
############################################################

# Set the base image to use to Oracle Linux 6.6
FROM oraclelinux:6.6

MAINTAINER Necip Arg

# Update Server
RUN yum -y update

# Install Development Tools
RUN yum groupinstall -y "Development Tools"

# Install ekstra packages
RUN yum install -y perl-devel zlib-devel wget tar vim git

# Clean up YUM
RUN yum clean all
