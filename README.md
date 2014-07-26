odl-cluster-setup
=================

1. Get the opendaylight controller sources
2. mvn clean install
3. cd src_root/opendaylight/md-sal/sal-distributed-datastore
4. mvn clean install
5. Get the opendaylight openflowplugin sources
6. mvn clean install
7. Goto the openflowplugin distribution
8. From this repositiory copy the following files
    - configuration1/01-md-sal.xml to configuration/initial
    - configuration1/*.conf to configuration/initial
    - configuration1/myrun.sh to .
9. Zip up the openflowplugin distribution and copy it on to all nodes where you intend to run opendaylight
10. After copying and unzipping the files on the destination member do the following,
    - Edit myrun.sh and change the name of the member. Note that configuration1 requires atleast two members to function.
    - Edit application.conf to have the right host_names. Note that the seed node hostname should be the same for all members
11. Run each node of the opendaylight cluster by executing myrun.sh (chmod +x myrun.sh if neccessary)

