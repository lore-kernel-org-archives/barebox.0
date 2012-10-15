Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNkVj-0008BQ-BL
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 13:15:12 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TNkVh-0006wN-4I
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 15:15:09 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TNkVh-0008Rh-2j
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 15:15:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Oct 2012 15:15:03 +0200
Message-Id: <1350306908-25206-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] barebox in-system update infrastructure
To: barebox@lists.infradead.org

This is an update to the barebox in-system update infrastructure
I posted some time ago.

Basically this infrastructure adds a command which calls previously
registered handlers to update barebox in flash/mmc/...

Here is an example session:

barebox@Ka-Ro tx53:/ barebox_update
Usage: barebox_update [OPTIONS] <image>
Update barebox to persistent media
-t <target>
-d <device>     write image to <device> instead of handler default
                Can be used for debugging purposes (-d /tmpfile)
-y              yes. Do not ask for confirmation
-f <level>      Set force level
-l              list registered targets

barebox@Ka-Ro tx53:/ barebox_update -l
registered update handlers:
* nand-xx30   -> /dev/nand0
  mmc-1011    -> /dev/disk0

barebox@Ka-Ro tx53:/ barebox_update -t mmc-1011 /mnt/tftp/barebox-tx53.bin
100Mbps full duplex link detected
DHCP client bound to address 192.168.24.6
update barebox from /mnt/tftp/barebox-tx53.bin using handler mmc-1011 to /dev/disk0 (y/n)?
updating to /dev/disk0
update succeeded

The only user of this infrastructure currently is the i.MX internal
boot mode. For MMC/SD users this has the advantage that the update
command preserves the partition table on the MMC/SD card. For NAND
users it has the advantage that a BBT table for the i.MX BOOT ROM is
created, so that bad blocks in the area where the barebox binary
resides are automatically skipped. Also before flashing an image
it's tested whether the image to flash really is a barebox image.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      Add in-system barebox update infrastructure
      ARM i.MX: Add barebox update handler for internal boot
      ARM i.MX51 babbage: register MMC update handler
      ARM i.MX53 loco: register MMC update handler
      ARM i.MX53 tx53: register MMC and NAND update handler

 arch/arm/boards/freescale-mx51-pdk/board.c         |    9 +
 arch/arm/boards/freescale-mx51-pdk/dcd-data.h      |   60 +++
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  |   61 +--
 arch/arm/boards/freescale-mx53-loco/board.c        |    9 +
 arch/arm/boards/freescale-mx53-loco/dcd-data.h     |   54 ++
 arch/arm/boards/freescale-mx53-loco/flash_header.c |   56 +-
 arch/arm/boards/karo-tx53/board.c                  |   18 +
 arch/arm/boards/karo-tx53/dcd-data-1011.h          |   94 ++++
 arch/arm/boards/karo-tx53/dcd-data-xx30.h          |  145 ++++++
 arch/arm/boards/karo-tx53/flash_header.c           |  248 +--------
 arch/arm/mach-imx/Makefile                         |    1 +
 arch/arm/mach-imx/imx-bbu-internal.c               |  543 ++++++++++++++++++++
 arch/arm/mach-imx/include/mach/bbu.h               |   51 ++
 arch/arm/mach-imx/include/mach/imx-flash-header.h  |    2 +
 commands/Kconfig                                   |    5 +
 commands/Makefile                                  |    1 +
 commands/barebox-update.c                          |   86 ++++
 common/Kconfig                                     |    3 +
 common/Makefile                                    |    1 +
 common/bbu.c                                       |  150 ++++++
 include/bbu.h                                      |   49 ++
 21 files changed, 1299 insertions(+), 347 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/dcd-data.h
 create mode 100644 arch/arm/boards/freescale-mx53-loco/dcd-data.h
 create mode 100644 arch/arm/boards/karo-tx53/dcd-data-1011.h
 create mode 100644 arch/arm/boards/karo-tx53/dcd-data-xx30.h
 create mode 100644 arch/arm/mach-imx/imx-bbu-internal.c
 create mode 100644 arch/arm/mach-imx/include/mach/bbu.h
 create mode 100644 commands/barebox-update.c
 create mode 100644 common/bbu.c
 create mode 100644 include/bbu.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
