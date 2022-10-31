# Twim deployment @ home

This contains a set of files and deployment scripts to run the twim video indexing service on physical infrastructure. You probably should not do this, just use real cloud infrastructure.

This is merely here because elastic search gets very expensive quickly as it is very resource intensive.

The basic setup is like this:

[Raspberry PI4] ---> [One] Envoy Proxy ---> Elastic Search/API/WWW -----> Mongo DB service

This is mainly here to test the infrastructure and see if it works.

The envoy pieces should be installed on the PI4, and the other pieces should be deployed on One.
