Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlHaM-0001ej-0C
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 12:17:47 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VlHZx-0007rD-VH
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 13:17:21 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VlHZx-00072X-Tp
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 13:17:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 13:17:17 +0100
Message-Id: <1385468240-3915-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH v2] OMAP gpmc bus driver support
To: barebox@lists.infradead.org

This adds OMAP gpmc bus driver support. Unlike the last version
this one sets the device_node of the registered nand device correctly
so that the partitions can be populated from the devicetree.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      string: Add (x)memdup
      device: Add functions to add resources
      bus: Add omap gpmc driver

 arch/arm/mach-omap/include/mach/gpmc_nand.h |   3 +
 drivers/base/resource.c                     |  60 +++-
 drivers/bus/Kconfig                         |   6 +
 drivers/bus/Makefile                        |   1 +
 drivers/bus/omap-gpmc.c                     | 480 ++++++++++++++++++++++++++++
 include/driver.h                            |   9 +
 include/string.h                            |   2 +
 include/xfuncs.h                            |   1 +
 lib/string.c                                |  14 +
 lib/xfuncs.c                                |  10 +
 10 files changed, 573 insertions(+), 13 deletions(-)
 create mode 100644 drivers/bus/omap-gpmc.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
