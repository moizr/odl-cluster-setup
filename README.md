odl-cluster-setup
=================

1. Get the opendaylight controller sources
2. mvn clean install
3. Get the opendaylight openflowplugin sources
4. mvn clean install
5. Goto the openflowplugin distribution
8. From this Github repositiory copy the following files
    - configuration-1/01-md-sal.xml to configuration/initial
    - configuration-1/*.conf to configuration/initial
    - configuration-1/myrun.sh to .
6. Zip up the openflowplugin distribution and copy it on to all nodes where you intend to run opendaylight
7. After copying and unzipping the files on the destination member do the following,
    - Edit myrun.sh and change the name of the member. Note that configuration1 requires atleast two members to function.
    - Edit application.conf to have the right host_names. Note that the seed node hostname should be the same for all members
8. Run each node of the opendaylight cluster by executing myrun.sh (chmod +x myrun.sh if neccessary)

