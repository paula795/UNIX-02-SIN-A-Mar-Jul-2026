# It is used to change directories and takes you to the system root, that is, the main folder where all the others are located.
cd /
# It displays the files and folders in your current location, adding symbols like / to identify which are directories.
ls -F
# Update the list of available packages from the repositories.
sudo apt update
# Update installed programs to their latest version.
sudo apt upgrade
# Install the parted tool on the system.
sudo apt install parted
# Displays disk and partition information (parted -l and lsblk -f) separated by lines to better organize the output.
sudo parted -l && echo -e "/n---/n" && lsblk -f && echo -e "/n---/n"
# List all disks and their partitions
sudo parted -l
# Displays the devices with their file system
lsblk -f
# Check if the system uses UEFI or BIOS, showing “UEFI” if that directory exists or “BIOS” if it does not.
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS"