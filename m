Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9H4b-0006Po-4y
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 14:27:06 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1S9H4I-0006ts-GP
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 15:26:46 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1S9H4I-00047x-FJ
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 15:26:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 18 Mar 2012 15:26:36 +0100
Message-Id: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] automount support
To: barebox@lists.infradead.org

The following series adds automount support to barebox. With the
automount command it's possible to access arbitrary files just
by using them without having to care about whether devices have
to be brought up or mounted first. It has the potential of making
the environment simpler and more flexible at the same time. Also
this series contains some patches which either fix some bugs I came
along while implementing it or make using automount more convenient.

The idea of automount is quite simple. The automount command is called
with a path and a script file argument. When the path is first accessed
the script is executed with the destination path as argument. It's the
resposibility of the script to make this directory available. A simple
example could be:

/env/bin/automount_tftp:

|#!/bin/sh
|
|where="$1"
|dhcp
|mount $eth0.serverip tftp $where

and on the commandline:

barebox:/ automount /mnt/tftp /env/bin/automount_tftp
barebox:/ automount -l
/mnt/tftp       /env/bin/automount_tftp
barebox:/ cp mnt/tftp/barebox.bin /
phy0: Link is up - 100/Full
T T DHCP client bound to address 192.168.24.146
barebox:/ automount -l
barebox:/ ls -l barebox.bin
-rwxrwxrwx     158388 barebox.bin
barebox:/

It does not only work with filesystems mounted to directories but
also with flat devices:

/env/bin/automount_usbdisk:

|#!/bin/sh
|
|usb

barebox:/ automount /dev/usbdisk0.0 /env/bin/automount_usbdisk
barebox:/ bootm /dev/usbdisk0.0
USB: scanning bus for devices...
Bus 001 Device 002: ID 090c:1000 USB DISK
Using index 0 for the new disk
Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
2 USB Device(s) found
commandline:  ip=dhcp root=mtd:nand0.root rootfstype=jffs2 mtdparts=mxc_nand:512k(nand0.barebox)ro,128k(nand0.bareboxenv),2M(nand0.kernel),-(nand0.root);physmap-flash.0:512k(nor0.barebox)ro,128k(nor0.bareboxenv),2M(nor0.kernel),-(nor0.root) console=ttymxc0,115200
arch_number: 1551
Uncompressing Linux... done, booting the kernel.
...


Comments welcome.

Thanks,
 Sascha

----------------------------------------------------------------
Sascha Hauer (8):
      fs: change get_fs_device_by_path prototype
      fs: drop struct mtab_entry
      Add automount support
      fs open: pass error from stat
      hush source: expand $PATH
      FAT: Fix error path
      usb command: by default scan only once for USB devices
      partition command: optionally do not automatically prepend the device name

 commands/Kconfig     |   10 ++
 commands/Makefile    |    1 +
 commands/automount.c |   66 ++++++++++++
 commands/mount.c     |   10 +-
 commands/partition.c |   33 +++++--
 commands/usb.c       |   26 ++++-
 common/hush.c        |   17 +++-
 fs/Kconfig           |    3 +
 fs/fat/fat.c         |   18 +++-
 fs/fat/ff.c          |    4 +-
 fs/fs.c              |  282 +++++++++++++++++++++++++++++++++++---------------
 include/fs.h         |   19 ++--
 12 files changed, 371 insertions(+), 118 deletions(-)
 create mode 100644 commands/automount.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
