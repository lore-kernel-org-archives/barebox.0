Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQa0q-00063N-7a
 for barebox@lists.infradead.org; Mon, 30 Sep 2013 09:43:33 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VQa0U-0000Rv-E4
 for barebox@lists.infradead.org; Mon, 30 Sep 2013 11:43:10 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VQa0U-0006cH-Cx
 for barebox@lists.infradead.org; Mon, 30 Sep 2013 11:43:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Sep 2013 11:43:04 +0200
Message-Id: <1380534188-1734-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: bootloader specification for barebox
To: barebox@lists.infradead.org

Hi All,

The following implements the bootloader specification for barebox.

See http://www.freedesktop.org/wiki/Specifications/BootLoaderSpec/ for a
description of the bootloader spec.

Quoting from it:

| Currently there's little cooperation between multiple distributions in
| dual-boot (or triple, ... multi-boot) setups, and we'd like to improve this
| situation by getting everybody to commit to a single boot configuration format
| that is based on drop-in files, and thus is robust, simple, works without
| rewriting configuration files and is free of namespace clashes.
| 
| The Boot Loader Specification defines a scheme how different operating systems
| can cooperatively manage a boot loader configuration directory, that accepts
| drop-in files for boot menu items that are defined in a format that is shared
| between various boot loader implementations, operating systems, and userspace
| programs. The target audience for this specification is:
| 
| * Boot loader developers, to write a boot loader that directly reads its
|   configuration at runtime from these drop-in snippets Distribution and Core
| * OS developers, in order to create these snippets at OS/kernel package
|   installation time
| * UI developers, for implementing a user interface that discovers the available
|   boot options
| * OS Installer developers, for setting up the initial drop-in directory

With this it is for the first time possible for a distribution to install a
kernel for barebox in a completely bootloader or board agnostic way. systemd
based distributions already ship a kernel-install script which can be used
to install a kernel.

With the following series it's possible to discover bootloader spec entries
on a device and to start them. For the user it basically goes down to adding
a device to the boot order, so either call 'boot <devname>' (with devname being
disk0, emmc, sd, or the hardware device, like omap-hsmmc0...) or add this to
global.boot.default.

I already used systemds kernel-install script successfully to install a kernel.
However, embedded users often have the task of making SD cards bootable from
a development host, so barebox has its own tool which is able to work in a
cross environment.

To test this do the following:

- build and start barebox with these patches (obviously)
- create a SD card with a VFAT partition big enough to hold your kernels,
  preferably with a partition type of 0xea
- Add a partition to hold your rootfs, copy your rootfs to it.
- build a kernel.
- Call the barebox kernel-install tool like this, assuming your SD card is
  /dev/sde and the rootfs is on /dev/sde2:

./scripts/kernel-install --add --device=/dev/sde --root=/dev/sde2 \
	--kernel=/path/to/zImage --devicetree=/path/to/dtb \
	--options="console=ttySx,115200" --title="My Linux 3.12-rc3" \
	--kernel-version="3.12-rc3" --add-root-option

- put the SD card into the board, try 'boot -l'. It should then list the
  entry. Start it with boot <devname>. If menu support is enabled try 'boot -m'

With the Fedora FC19 SD images it should be possible to simply call the following
from a running system:

kernel-install add v3.12-rc3 /path/to/zImage

(The official bootloader spec currently has no support for devicetrees, barebox
must provide it should you need one)

This all probably still has some rough edges, but it really already shows the
potential of making generic ARM distribution (and installer) images possible.
Also there's only little configuration of the bootloader needed which hopefully
makes usage of barebox easier.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      add function to read single line files
      cdev: store dos partition type in struct cdev
      Implement bootloader spec support for barebox
      add kernel-install tool for bootloader Spec

 commands/boot.c            |  172 +++++-
 common/Kconfig             |   14 +
 common/Makefile            |    2 +
 common/blspec.c            |  516 ++++++++++++++++
 common/partitions.c        |    4 +-
 common/partitions/dos.c    |    7 +-
 common/partitions/parser.h |    1 +
 include/blspec.h           |   92 +++
 include/driver.h           |    1 +
 include/libbb.h            |    2 +
 lib/libbb.c                |   42 ++
 scripts/Makefile           |    2 +
 scripts/kernel-install.c   | 1399 ++++++++++++++++++++++++++++++++++++++++++++
 13 files changed, 2226 insertions(+), 28 deletions(-)
 create mode 100644 common/blspec.c
 create mode 100644 include/blspec.h
 create mode 100644 scripts/kernel-install.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
