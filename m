Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVlXM-0000kj-Nu
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 13:16:43 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1OVlXK-0007rj-UY
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 15:16:38 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1OVlXK-0006pC-Tk
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 15:16:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Jul 2010 15:16:23 +0200
Message-Id: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: UBI support
To: barebox@lists.infradead.org

The following series prepares and implements UBI for barebox. Here is a log
while playing with UBI:

barebox@Phytec phyCORE-i.MX27:/ ubiattach dev/nand0.root
UBI: attaching mtd0 to ubi0
UBI: physical eraseblock size:   16384 bytes (16 KiB)
UBI: logical eraseblock size:    15360 bytes
UBI: smallest flash I/O unit:    512
UBI: VID header offset:          512 (aligned 512)
UBI: data offset:                1024
registering /dev/ubi0
UBI: attached mtd0 to ubi0
UBI: MTD device name:            "nand0.root"
UBI: MTD device size:            61 MiB
UBI: number of good PEBs:        3940
UBI: number of bad PEBs:         4
UBI: max. allowed volumes:       89
UBI: wear-leveling threshold:    4096
UBI: number of internal volumes: 1
UBI: number of user volumes:     0
UBI: available PEBs:             3897
UBI: total number of reserved PEBs: 43
UBI: number of PEBs reserved for bad PEB handling: 39
UBI: max/mean erase counter: 27/1
barebox@Phytec phyCORE-i.MX27:/ ls -l dev/ubi0*
c---------          0 dev/ubi0
barebox@Phytec phyCORE-i.MX27:/ ubimkvol dev/ubi0 root 32M
registering root as /dev/ubi0.root
barebox@Phytec phyCORE-i.MX27:/ ls -l dev/ubi0*
crw-------   33561600 dev/ubi0.root
c---------          0 dev/ubi0
barebox@Phytec phyCORE-i.MX27:/ dhcp
phy0: Link is up - 100/Full
T T DHCP client bound to address 192.168.24.195
barebox@Phytec phyCORE-i.MX27:/ tftp ubi.img /dev/ubi0.root
TFTP from server 192.168.23.2 ('ubi.img' -> '/dev/ubi0.root')
        #################################################################
        ############################
barebox@Phytec phyCORE-i.MX27:/ ubidetach dev/nand0.root
removing ubi0
UBI: mtd0 is detached from ubi0
barebox@Phytec phyCORE-i.MX27:/ ubiattach dev/nand0.root
UBI: attaching mtd0 to ubi0
UBI: physical eraseblock size:   16384 bytes (16 KiB)
UBI: logical eraseblock size:    15360 bytes
UBI: smallest flash I/O unit:    512
UBI: VID header offset:          512 (aligned 512)
UBI: data offset:                1024
registering /dev/ubi0
registering root as /dev/ubi0.root
UBI: attached mtd0 to ubi0
UBI: MTD device name:            "nand0.root"
UBI: MTD device size:            61 MiB
UBI: number of good PEBs:        3940
UBI: number of bad PEBs:         4
UBI: max. allowed volumes:       89
UBI: wear-leveling threshold:    4096
UBI: number of internal volumes: 1
UBI: number of user volumes:     1
UBI: available PEBs:             1712
UBI: total number of reserved PEBs: 2228
UBI: number of PEBs reserved for bad PEB handling: 39
UBI: max/mean erase counter: 30/1
barebox@Phytec phyCORE-i.MX27:/

Unfortunately UBI is really huge (about 40k) but it comes in quite handy when
working with UBI. While creating UBIFS images is simple, creating UBI images
which fit onto the device is a pain.

Sascha

The following changes since commit a398a920b6847775c255e2a783c9562bd7227e43:

  trivial: fix typos concerning "instead" (2010-07-05 08:27:28 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox ubi

Sascha Hauer (12):
      crc32: activate crc32_no_comp (needed for jffs2 and UBI)
      move drivers/nand to drivers/mtd/nand
      add rbtree support (needed for ubi)
      add partition mtd support
      cfi_flash: Do not typedef struct flash_info
      cfi_flash: Do not print debug info while erasing
      cfi_flash: Add mtd partition support for UBI
      devfs: only check for ioctl function when needed
      include stuff missing for ubi
      add ubi support from u-boot. Just enough to compile and scan
      barebox ubi changes
      Add UBI commands: ubiattach, ubidetach, ubimkvol, ubirmvol

 commands/Kconfig                        |    6 +
 commands/Makefile                       |    1 +
 commands/ubi.c                          |  129 +++
 drivers/Kconfig                         |    2 +-
 drivers/Makefile                        |    2 +-
 drivers/mtd/Kconfig                     |    9 +
 drivers/mtd/Makefile                    |    3 +
 drivers/{ => mtd}/nand/Kconfig          |    2 +-
 drivers/{ => mtd}/nand/Makefile         |    0
 drivers/{ => mtd}/nand/atmel_nand.c     |    0
 drivers/{ => mtd}/nand/atmel_nand_ecc.h |    0
 drivers/{ => mtd}/nand/diskonchip.c     |    0
 drivers/{ => mtd}/nand/nand.c           |    2 +
 drivers/{ => mtd}/nand/nand_base.c      |    0
 drivers/{ => mtd}/nand/nand_bbt.c       |    0
 drivers/{ => mtd}/nand/nand_ecc.c       |    0
 drivers/{ => mtd}/nand/nand_ids.c       |    0
 drivers/{ => mtd}/nand/nand_imx.c       |    0
 drivers/{ => mtd}/nand/nand_omap_gpmc.c |    0
 drivers/{ => mtd}/nand/nand_s3c2410.c   |    0
 drivers/{ => mtd}/nand/nand_util.c      |    0
 drivers/mtd/partition.c                 |  143 +++
 drivers/mtd/ubi/Kconfig                 |    6 +
 drivers/mtd/ubi/Makefile                |    3 +
 drivers/mtd/ubi/build.c                 | 1059 +++++++++++++++++++
 drivers/mtd/ubi/cdev.c                  |  238 +++++
 drivers/mtd/ubi/crc32defs.h             |   32 +
 drivers/mtd/ubi/debug.c                 |  192 ++++
 drivers/mtd/ubi/debug.h                 |  152 +++
 drivers/mtd/ubi/eba.c                   | 1256 +++++++++++++++++++++++
 drivers/mtd/ubi/io.c                    | 1274 +++++++++++++++++++++++
 drivers/mtd/ubi/kapi.c                  |  638 ++++++++++++
 drivers/mtd/ubi/misc.c                  |  106 ++
 drivers/mtd/ubi/scan.c                  | 1362 +++++++++++++++++++++++++
 drivers/mtd/ubi/scan.h                  |  165 +++
 drivers/mtd/ubi/ubi-barebox.h           |  191 ++++
 drivers/mtd/ubi/ubi-media.h             |  372 +++++++
 drivers/mtd/ubi/ubi.h                   |  648 ++++++++++++
 drivers/mtd/ubi/upd.c                   |  445 ++++++++
 drivers/mtd/ubi/vmt.c                   |  866 ++++++++++++++++
 drivers/mtd/ubi/vtbl.c                  |  837 +++++++++++++++
 drivers/mtd/ubi/wl.c                    | 1675 +++++++++++++++++++++++++++++++
 drivers/nor/cfi_flash.c                 |  143 +++-
 drivers/nor/cfi_flash.h                 |   55 +-
 drivers/nor/cfi_flash_amd.c             |   14 +-
 drivers/nor/cfi_flash_intel.c           |   12 +-
 fs/Kconfig                              |    3 +
 fs/devfs.c                              |   46 +-
 include/common.h                        |    4 +-
 include/driver.h                        |    1 +
 include/linux/mtd/mtd-abi.h             |    1 +
 include/linux/mtd/mtd.h                 |   13 +
 include/linux/mtd/ubi.h                 |  186 ++++
 include/linux/rbtree.h                  |  160 +++
 include/mtd/ubi-user.h                  |  300 ++++++
 lib/Makefile                            |    1 +
 lib/crc32.c                             |   11 +-
 lib/rbtree.c                            |  389 +++++++
 58 files changed, 13072 insertions(+), 83 deletions(-)
 create mode 100644 commands/ubi.c
 create mode 100644 drivers/mtd/Kconfig
 create mode 100644 drivers/mtd/Makefile
 rename drivers/{ => mtd}/nand/Kconfig (98%)
 rename drivers/{ => mtd}/nand/Makefile (100%)
 rename drivers/{ => mtd}/nand/atmel_nand.c (100%)
 rename drivers/{ => mtd}/nand/atmel_nand_ecc.h (100%)
 rename drivers/{ => mtd}/nand/diskonchip.c (100%)
 rename drivers/{ => mtd}/nand/nand.c (99%)
 rename drivers/{ => mtd}/nand/nand_base.c (100%)
 rename drivers/{ => mtd}/nand/nand_bbt.c (100%)
 rename drivers/{ => mtd}/nand/nand_ecc.c (100%)
 rename drivers/{ => mtd}/nand/nand_ids.c (100%)
 rename drivers/{ => mtd}/nand/nand_imx.c (100%)
 rename drivers/{ => mtd}/nand/nand_omap_gpmc.c (100%)
 rename drivers/{ => mtd}/nand/nand_s3c2410.c (100%)
 rename drivers/{ => mtd}/nand/nand_util.c (100%)
 create mode 100644 drivers/mtd/partition.c
 create mode 100644 drivers/mtd/ubi/Kconfig
 create mode 100644 drivers/mtd/ubi/Makefile
 create mode 100644 drivers/mtd/ubi/build.c
 create mode 100644 drivers/mtd/ubi/cdev.c
 create mode 100644 drivers/mtd/ubi/crc32defs.h
 create mode 100644 drivers/mtd/ubi/debug.c
 create mode 100644 drivers/mtd/ubi/debug.h
 create mode 100644 drivers/mtd/ubi/eba.c
 create mode 100644 drivers/mtd/ubi/io.c
 create mode 100644 drivers/mtd/ubi/kapi.c
 create mode 100644 drivers/mtd/ubi/misc.c
 create mode 100644 drivers/mtd/ubi/scan.c
 create mode 100644 drivers/mtd/ubi/scan.h
 create mode 100644 drivers/mtd/ubi/ubi-barebox.h
 create mode 100644 drivers/mtd/ubi/ubi-media.h
 create mode 100644 drivers/mtd/ubi/ubi.h
 create mode 100644 drivers/mtd/ubi/upd.c
 create mode 100644 drivers/mtd/ubi/vmt.c
 create mode 100644 drivers/mtd/ubi/vtbl.c
 create mode 100644 drivers/mtd/ubi/wl.c
 create mode 100644 include/linux/mtd/ubi.h
 create mode 100644 include/linux/rbtree.h
 create mode 100644 include/mtd/ubi-user.h
 create mode 100644 lib/rbtree.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
