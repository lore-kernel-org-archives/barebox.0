Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJSDz-0001oI-2z
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 16:22:53 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SJSDq-0007wi-F0
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 18:22:42 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SJSDq-00009e-Dr
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 18:22:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 18:22:39 +0200
Message-Id: <1334506961-31245-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] generic default environment - 2nd try
To: barebox@lists.infradead.org

Hi All,

This adds a new set of default environment scripts. The old default
environment has a number of shortcomings:

- It grows more complex but doesn't seem to get more flexible.
- We base our decision where the kernel, oftree and rootfs is stored
  on variables which describe only a choice, like 'nand' or 'net'.
  This does not make it possible to store the files in individual
  places, instead each time someone wants to store a kernel in a
  unusual place he has to add a new location and parse it in
  /env/bin/boot.
- USB network devices are not really supported, they always require
  a manual 'usb' command on the commandline to discover them.

The new default environment uses a different approach. Rather then
trying to control the behaviour of /env/bin/boot with an external
script, the control now is in /env/config which uses a set of helper
functions to get its job done.

Highlights are:

- A 'ifup' script brings up networking (only once) when it is needed.
  This can also handle the USB network case.
- The automount support allows to access arbitrary files on tftp
  servers, disks, filesystems on disks just by accessing them,
  no manual mounting or detecting is needed.
- Simpler usage. For example starting a second stage barebox now
  works with "bootm /mnt/tftp-dhcp/barebox.bin" instead of
  "dhcp; tftp barebox.bin /dev/ram0; go /dev/ram0". Doing a
  "bootm /mnt/tftp-dhcp/zImage" now usually works without the need
  of a boot script.

As this environment requires adjustments to the board environment and
it does not (yet) have all features (what is missing?) of the old
environment I did not switch all boards to the new environment and
left the old one in place. If you want to switch your board to the
new environment you can do so by selecting the HAVE_DEFAULT_ENVIRONMENT_NEW
option from your board Kconfig snippet and by adjusting your board
env/config file. An example for my alltime favourite pcm038 is included
in this series.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      add 2nd generation default env
      ARM pcm038: switch to new default environment

 arch/arm/boards/pcm038/env/config      |   98 ++++++++++++++++++--------------
 arch/arm/mach-imx/Kconfig              |    1 +
 common/Kconfig                         |    4 ++
 common/Makefile                        |    4 ++
 defaultenv-2/bin/add-nand-bb           |    7 +++
 defaultenv-2/bin/boot                  |    5 ++
 defaultenv-2/bin/bootargs-ip-barebox   |    7 +++
 defaultenv-2/bin/bootargs-ip-dhcp      |    5 ++
 defaultenv-2/bin/bootargs-ip-none      |    5 ++
 defaultenv-2/bin/bootargs-ip-static    |    7 +++
 defaultenv-2/bin/bootargs-root-initrd  |   11 ++++
 defaultenv-2/bin/bootargs-root-jffs2   |    9 +++
 defaultenv-2/bin/bootargs-root-nfs     |   15 +++++
 defaultenv-2/bin/bootargs-root-ubi     |   13 +++++
 defaultenv-2/bin/ifup                  |   48 ++++++++++++++++
 defaultenv-2/bin/init                  |   29 ++++++++++
 defaultenv-2/bin/mount-tftp-dhcpserver |    5 ++
 defaultenv-2/bin/mtdparts-add          |   46 +++++++++++++++
 defaultenv-2/bin/mtdparts-init         |    3 +
 defaultenv-2/config                    |   72 +++++++++++++++++++++++
 defaultenv-2/network/eth0              |   12 ++++
 21 files changed, 363 insertions(+), 43 deletions(-)
 create mode 100644 defaultenv-2/bin/add-nand-bb
 create mode 100644 defaultenv-2/bin/boot
 create mode 100644 defaultenv-2/bin/bootargs-ip-barebox
 create mode 100644 defaultenv-2/bin/bootargs-ip-dhcp
 create mode 100644 defaultenv-2/bin/bootargs-ip-none
 create mode 100644 defaultenv-2/bin/bootargs-ip-static
 create mode 100644 defaultenv-2/bin/bootargs-root-initrd
 create mode 100644 defaultenv-2/bin/bootargs-root-jffs2
 create mode 100644 defaultenv-2/bin/bootargs-root-nfs
 create mode 100644 defaultenv-2/bin/bootargs-root-ubi
 create mode 100644 defaultenv-2/bin/ifup
 create mode 100644 defaultenv-2/bin/init
 create mode 100644 defaultenv-2/bin/mount-tftp-dhcpserver
 create mode 100644 defaultenv-2/bin/mtdparts-add
 create mode 100644 defaultenv-2/bin/mtdparts-init
 create mode 100644 defaultenv-2/config
 create mode 100644 defaultenv-2/network/eth0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
