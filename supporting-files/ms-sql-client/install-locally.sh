#!/bin/bash
curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/msprod.repo
dnf install -y --allowerasing mssql-tools

