#!/bin/bash
# This script simply passes some additional parameters to the opendaylight run.sh
#
# The important ones to look for are
#
# -Dakka.cluster.roles.0=member-1
# -Dconfig.resource=./configuration/initial/application.conf
#
# akka.cluster.roles.0 is to tell the datastore which member of the cluster this node is
# config.resource is to tell the datastore the location of the configuration that needs to be used for akka
#
# To get the cluster working properly you must edit the application.conf and provide the correct ip address/hostname
# of the current member and the ip address of the seed node as well
 
./run.sh -Dakka.cluster.roles.0=member-1 -Xmx4G -XX:MaxPermSize=512m -Dconfig.resource=./configuration/initial/application.conf
 
