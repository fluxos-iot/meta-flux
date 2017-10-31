# meta-flux
A easy to be deployed OS based on Yocto

Quick Start:

First, pick a jiri root directory. All projects will be synced to subdirectories of the root.

$ export MY_ROOT=$HOME/myroot


Second, execute the jiri_bootstrap script, which will fetch and build the jiri tool, and initialize the root directory.

$ curl -s https://raw.githubusercontent.com/fuchsia-mirror/jiri/master/scripts/bootstrap_jiri | bash -s "$MY_ROOT"


The jiri command line tool will be installed in $MY_ROOT/.jiri_root/bin/jiri, so add that to your PATH.

$ export PATH="$MY_ROOT"/.jiri_root/bin:$PATH


Then you can import the flux manifest.

$ cd "$MY_ROOT"
$ jiri import flux https://github.com/fluxos-iot/manifests


Then, run jiri update, which will sync all local projects to the revisions listed in the manifest (which in this case will be HEAD).

$ jiri update


Finially, run the setup python script, you will get a bitbake build environment running in a dokcer image.

$ ./setup
