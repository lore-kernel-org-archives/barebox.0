Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tgbay-000816-KI
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:34:33 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Tgbax-0004kT-0a
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 14:34:31 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Tgbaw-0007YT-VT
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 14:34:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Dec 2012 14:34:21 +0100
Message-Id: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] AHCI support
To: barebox@lists.infradead.org

The following adds support for AHCI based SATA controllers. Some
cleanup has to be done first as currently our ATA support assumes
that all devices have a SFF interface, so this has to be separated
first.

----------------------------------------------------------------
Sascha Hauer (9):
      ata: register disks as /dev/ata*
      ata: fix status flags
      ata: split ide sff suport to separate file
      ata: align ata command defines with kernel
      ata: Use dma_alloc for buffer
      ata: Add ahci support
      mfd: Add i.MX6 iomux gpr header file
      ata: Add i.MX AHCI driver
      ARM i.MX5: Add SATA support

 arch/arm/mach-imx/clk-imx5.c                   |    1 +
 arch/arm/mach-imx/include/mach/devices-imx53.h |    5 +
 arch/arm/mach-imx/include/mach/imx53-regs.h    |    2 +
 drivers/ata/Kconfig                            |   15 +-
 drivers/ata/Makefile                           |    3 +
 drivers/ata/ahci.c                             |  678 ++++++++++++++++++++++++
 drivers/ata/ahci.h                             |  182 +++++++
 drivers/ata/disk_ata_drive.c                   |  345 ++----------
 drivers/ata/ide-sff.c                          |  343 ++++++++++++
 drivers/ata/intf_platform_ide.c                |    2 +-
 drivers/ata/pata-imx.c                         |    2 +-
 drivers/ata/sata-imx.c                         |  155 ++++++
 include/ata_drive.h                            |   43 +-
 include/mfd/imx6q-iomuxc-gpr.h                 |  320 +++++++++++
 14 files changed, 1783 insertions(+), 313 deletions(-)
 create mode 100644 drivers/ata/ahci.c
 create mode 100644 drivers/ata/ahci.h
 create mode 100644 drivers/ata/ide-sff.c
 create mode 100644 drivers/ata/sata-imx.c
 create mode 100644 include/mfd/imx6q-iomuxc-gpr.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
