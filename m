Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jsw-0002T0-Uw
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:32:04 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Q6jsu-0004L1-Te
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 15:32:00 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Q6jsu-0007fD-Si
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 15:32:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:31:52 +0200
Message-Id: <1301923918-28746-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: several driver update
To: barebox@lists.infradead.org


The following contains driver update mostly done while working on
the panda board. We add sms95xx usb network support which is found
on the panda board and also BCH ecc support for the nand controller
which is needed to boot from Nand.

Sascha Hauer (6):
      usb net: Add SMSC95xx support
      net smc911x: Add LAN9221 support
      mci: Add omap hsmmc driver
      mtd nand omap: Pass ecc mode from platform
      mtd nand omap: make ecc mode runtime configurable
      mtd nand omap: Add BCH ecc support

 arch/arm/boards/omap/board-beagle.c         |    2 +-
 arch/arm/boards/omap/devices-gpmc-nand.c    |    5 +-
 arch/arm/mach-omap/include/mach/gpmc.h      |    1 +
 arch/arm/mach-omap/include/mach/gpmc_nand.h |   17 +-
 drivers/mci/Kconfig                         |    7 +
 drivers/mci/Makefile                        |    1 +
 drivers/mci/omap_hsmmc.c                    |  582 +++++++++++++++++
 drivers/mtd/nand/Makefile                   |    2 +-
 drivers/mtd/nand/nand_omap_bch_decoder.c    |  389 +++++++++++
 drivers/mtd/nand/nand_omap_gpmc.c           |  454 ++++++++++---
 drivers/net/smc911x.c                       |    2 +
 drivers/net/usb/Kconfig                     |    4 +
 drivers/net/usb/Makefile                    |    1 +
 drivers/net/usb/smsc95xx.c                  |  938 +++++++++++++++++++++++++++
 drivers/net/usb/smsc95xx.h                  |  256 ++++++++
 15 files changed, 2545 insertions(+), 116 deletions(-)
 create mode 100644 drivers/mci/omap_hsmmc.c
 create mode 100644 drivers/mtd/nand/nand_omap_bch_decoder.c
 create mode 100644 drivers/net/usb/smsc95xx.c
 create mode 100644 drivers/net/usb/smsc95xx.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
