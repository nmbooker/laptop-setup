#! /bin/bash

agy="apt-get -y"

function enable_raid() {
$agy install mdadm
if ! [ -e /dev/md0 ] ; then
	mdadm --assemble --scan
fi
}

function enable_lvm() {
	$agy install lvm2
	vgchange -ay
}

function install_fs_utils() {
	$agy install xfsprogs xfsdump
}

function config_fstab() {
	umount /media/{vm,homes,built,scratch,download}
	fstab_add /dev/data/home /data ext3 noatime 0 2
	fstab_add /dev/data/vm /vm xfs noatime 0 2
	fstab_add /dev/data/scratch /scratch xfs noatime 0 2
	fstab_add /dev/data/download /down xfs noatime 0 2
	fstab_add /dev/data/built /built ext4 noatime 0 2
	mount /data
	mount /vm
	mount /scratch
	mount /down
	mount /built
}

function fstab_add() {
	if ! grep "^$1" /etc/fstab
	then
		echo "$1 $2 $3 $4 $5 $6" >> /etc/fstab
	fi
	mkdir "$2"
}

enable_raid
enable_lvm
install_fs_utils
config_fstab
