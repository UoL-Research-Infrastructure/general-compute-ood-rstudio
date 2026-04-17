# RStudio Server for OOD Deployment on UoL General Compute

This app has been derived from the app shared by NMSU.<br>[NMSU](https://gitlab.com/nmsu_hpc/ood-apps-nmsu/-/tree/main/rstudio?ref_type=heads)

This is an Open Ondemand Batch Connect app that uses Apptainer containers to run a self-contained RStudio Server single user instance.<br>

## Required Software

Here are the basic software requirements:

- [Apptainer](https://apptainer.org/)
- [R](https://www.r-project.org/)
  - This must be containerized.
- [RStudio Server](https://posit.co/products/open-source/rstudio-server/)
  - This must be containerized with R.

## Known Issues

- To avoid conflicts with other installations of R it is reccommended to change the default R User Library location.
  - This will need to be done in your container build as this app doesn't currently modify that value.
- The 'rserver' executable needs to be available from the "$PATH".  If not the app will fail to launch.
  - This should be handled in the container build recipe.

## Install

This repo is deployed by Ansible to /var/www/ood/apps/sys/ on the ondemand node.<br>
The form and submit files can be overridden by files in /etc/ood/config/apps/...

Container images are expected to be installed in /opt/container_images on the compute nodes.
