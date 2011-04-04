Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jbb-0002C1-HE
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:14:08 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Q6jbZ-0003Ed-2h
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 15:14:05 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Q6jbZ-0003Cj-1i
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 15:14:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:13:54 +0200
Message-Id: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: On the road to omap4
To: barebox@lists.infradead.org

The following patches are done in preparation for adding omap4 support.

Sascha Hauer (9):
      ARM omap: move uart access functions to a more generic place
      ARM omap: rework gpio support
      ARM omap: move devices-gpmc-nand.c to omap architecture directory
      ARM omap: move architecture specific kconfig entries to arch part
      ARM omap: allow to put omap boards into another directory
      ARM omap4: fix indention in Kconfig
      omap: rename GPMC Kconfig entry to OMAP_GPMC
      arm omap: remove unused request/free gpio functions
      ARM omap: make gpio support mandatory

 arch/arm/Makefile                                  |    4 +-
 arch/arm/boards/omap/Kconfig                       |   93 -------------
 arch/arm/boards/omap/Makefile                      |    2 -
 arch/arm/mach-omap/Kconfig                         |  144 ++++++++++++++------
 arch/arm/mach-omap/Makefile                        |    4 +-
 .../{boards/omap => mach-omap}/devices-gpmc-nand.c |    0
 arch/arm/mach-omap/gpio.c                          |  128 ++++++------------
 arch/arm/mach-omap/include/mach/gpio.h             |   46 ------
 arch/arm/mach-omap/omap-uart.c                     |   36 +++++
 arch/arm/mach-omap/omap3_generic.c                 |   34 -----
 drivers/mtd/nand/Kconfig                           |    2 +-
 11 files changed, 183 insertions(+), 310 deletions(-)
 delete mode 100644 arch/arm/boards/omap/Kconfig
 rename arch/arm/{boards/omap => mach-omap}/devices-gpmc-nand.c (100%)
 create mode 100644 arch/arm/mach-omap/omap-uart.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
