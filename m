Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3IZZ-0006uE-Ik
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 06:36:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1Z3IZA-0004UE-Ha
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 08:35:48 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <sha@pengutronix.de>) id 1Z3IZA-0005EP-0J
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 08:35:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 08:35:36 +0200
Message-Id: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: i.MX FCB NAND boot updates
To: Barebox List <barebox@lists.infradead.org>

The i.MX6 NAND boot update code can be used for i.MX28 aswell with
some modifications. This series makes the code available for i.MX28
and also has some optimizations like use of a partition to allow
for size checks.

Sascha

----------------------------------------------------------------
Sascha Hauer (10):
      ARM: dts: Karo tx6: increase barebox partition to 4MB
      mtd: partition: implement write_oob
      filetype: Add filetype for MXS bootstream
      ARM: i.MX6: bbu nand: Move to common place
      imx-bbu-nand-fcb: Fix debug messages
      imx-bbu-nand-fcb: Use barebox partition instead of whole device
      imx-bbu-nand-fcb: make available for i.MX28 aswell
      imx-bbu-nand-fcb: Let DBBT start at page 1
      imx-bbu-nand-fcb: Erase whole partition
      imx-bbu-nand-fcb: Split space for firmware in two equal regions

 arch/arm/dts/imx6dl-tx6u-801x.dts                  |   4 +-
 arch/arm/mach-imx/Kconfig                          |   9 -
 arch/arm/mach-imx/Makefile                         |   1 -
 arch/arm/mach-imx/include/mach/bbu.h               |   9 -
 common/Kconfig                                     |   8 +
 common/Makefile                                    |   1 +
 common/filetype.c                                  |   3 +
 .../imx6-bbu-nand.c => common/imx-bbu-nand-fcb.c   | 248 ++++++++++++++++-----
 drivers/mtd/partition.c                            |  13 ++
 include/bbu.h                                      |  14 ++
 include/filetype.h                                 |   1 +
 11 files changed, 239 insertions(+), 72 deletions(-)
 rename arch/arm/mach-imx/imx6-bbu-nand.c => common/imx-bbu-nand-fcb.c (69%)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
