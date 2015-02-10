Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YL6jd-0002pX-FJ
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 09:03:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1YL6jH-0000Jk-8w
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 10:03:35 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1YL6jH-0001uK-7s
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 10:03:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 Feb 2015 10:03:28 +0100
Message-Id: <1423559014-3783-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH v2] nand-bb fixes
To: Barebox List <barebox@lists.infradead.org>

Changes:

- in nand_bb_erase we have to use '>' instead of '>=' to test if we must
  bail out
- Add patch to fix testing for a bad block when reading from the device.
- Add patch to also print the raw position when debugging.

Sascha

----------------------------------------------------------------
Sascha Hauer (6):
      mtd: nand: omap: Fix OMAP_ECC_BCH8_CODE_HW ecc mode
      mtd: Fix allowing to erase bad blocks on partitions
      mtd: nand-bb: Fix accesses beyond device
      mtd: nand-bb: fix erasing bb devices with bad blocks
      mtd: nand-bb: Fix test for bad block when reading
      mtd: nand-bb: Also print raw position in debug messages

 drivers/mtd/core.c                |  6 ++---
 drivers/mtd/nand/nand-bb.c        | 48 ++++++++++++++++++++++++++++++++++-----
 drivers/mtd/nand/nand_omap_gpmc.c |  4 ++--
 3 files changed, 47 insertions(+), 11 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
