help(
[[
The poldracklaunch module file defines the following environment variables:
LAUNCH_TEMPLATE for the
location of the launcher.slurm template respectively.

Version 1.0.0
]]
)

whatis("Name: Poldracklab Launch")
whatis("Version: 1.0.0")
whatis("Category: tools")
whatis("Keywords: Launch, Poldracklab, SLURM")
whatis("URL: http://github.com/poldracklab/poldracklaunch")
whatis("Description: Launcher interface for PoldrackLab")


prepend_path("PATH","/home/02092/vsochat/SCRIPT/modules/launch")
setenv ("LAUNCH_TEMPLATE", "/home/02092/vsochat/SCRIPT/modules/launch/launcher.slurm")
