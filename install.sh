#!/bin/bash

mv /etc/yum.repos.d/ /etc/yum.repos.d.old
mkdir /etc/yum.repos.d/
curl -4 https://raw.githubusercontent.com/mhdi-khosravi/fix-centos7-repo/main/yum.repos.d/CentOS-Base.repo --output /etc/yum.repos.d/CentOS-Base.repo
curl -4 https://raw.githubusercontent.com/mhdi-khosravi/fix-centos7-repo/main/yum.repos.d/CentOS-CR.repo --output /etc/yum.repos.d/CentOS-CR.repo
curl -4 https://raw.githubusercontent.com/mhdi-khosravi/fix-centos7-repo/main/yum.repos.d/CentOS-Debuginfo.repo --output /etc/yum.repos.d/CentOS-Debuginfo.repo
curl -4 https://raw.githubusercontent.com/mhdi-khosravi/fix-centos7-repo/main/yum.repos.d/CentOS-Media.repo --output /etc/yum.repos.d/CentOS-Media.repo
curl -4 https://raw.githubusercontent.com/mhdi-khosravi/fix-centos7-repo/main/yum.repos.d/CentOS-Sources.repo --output /etc/yum.repos.d/CentOS-Sources.repo
curl -4 https://raw.githubusercontent.com/mhdi-khosravi/fix-centos7-repo/main/yum.repos.d/CentOS-Vault.repo --output /etc/yum.repos.d/CentOS-Vault.repo
curl -4 https://raw.githubusercontent.com/mhdi-khosravi/fix-centos7-repo/main/yum.repos.d/CentOS-fasttrack.repo --output /etc/yum.repos.d/CentOS-fasttrack.repo
curl -4 https://raw.githubusercontent.com/mhdi-khosravi/fix-centos7-repo/main/yum.repos.d/CentOS-x86_64-kernel.repo --output /etc/yum.repos.d/CentOS-x86_64-kernel.repo


yum cleanall
yum update
