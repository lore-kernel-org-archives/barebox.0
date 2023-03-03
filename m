Delivery-date: Fri, 03 Mar 2023 10:25:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1f0-007Ne1-8M
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:25:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1ew-0001gl-LF
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:25:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZO/nQBHxlLIxN/Z7RD4kUyG/E78zTYzt/+gauAGFR50=; b=D4AuESOchS/rmJWkOCGa3CoBN7
	HXiNA23ZYbFnB/Gxlp0pRyU7wOUrLIluRh8kAzrmAvUhWin2A+FHUtohZdh3fUyyVDjUdXygGOTGv
	Rf7+ELQqmuAYmPyNgEzEAoT3TRZtF7uiTQR8ydYqXBYCQ1GaLdoixM1TqK/QXrr4NmPWGOnbIpeck
	iz3ivYTJ60APp641E886ZTsHhGhCaKXY+rT+VFbtbdmuEqjax6J6CskeDBlwLJ3H/c+l3BkSZAROJ
	rxB31HYwe8de88MBpMLCHvZYv1A6ivVU3h1Rfh/kDf1vYthEO9X6OHrbxGXXgbgeUtt8eAd0ZbQ0D
	eALQ3/mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1d9-005fOM-IH; Fri, 03 Mar 2023 09:23:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1be-005eKN-PZ
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bd-00009u-GD; Fri, 03 Mar 2023 10:21:37 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bc-001WhS-J4; Fri, 03 Mar 2023 10:21:36 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2gH-Bl; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:57 +0100
Message-Id: <20230303092131.3063587-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012139_435876_4CFA96DE 
X-CRM114-Status: GOOD (  13.04  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 16/50] ARM: omap: Move mach header files to include/mach/omap
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all omap specific header files to include/mach/omap/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/afi-gf/board.c                |  4 ++--
 arch/arm/boards/afi-gf/lowlevel.c             | 18 +++++++--------
 arch/arm/boards/archosg9/board.c              |  8 +++----
 arch/arm/boards/archosg9/lowlevel.c           | 12 +++++-----
 arch/arm/boards/archosg9/mux.c                |  6 ++---
 arch/arm/boards/beagle/board.c                |  8 +++----
 arch/arm/boards/beagle/lowlevel.c             | 16 +++++++-------
 arch/arm/boards/beaglebone/beaglebone.h       |  2 +-
 arch/arm/boards/beaglebone/board.c            | 10 ++++-----
 arch/arm/boards/beaglebone/lowlevel.c         | 16 +++++++-------
 arch/arm/boards/myirtech-x335x/board.c        |  2 +-
 arch/arm/boards/myirtech-x335x/lowlevel.c     | 12 +++++-----
 arch/arm/boards/omap343xdsp/board.c           |  6 ++---
 arch/arm/boards/omap343xdsp/lowlevel.c        | 16 +++++++-------
 arch/arm/boards/omap3evm/board.c              |  8 +++----
 arch/arm/boards/omap3evm/lowlevel.c           | 16 +++++++-------
 arch/arm/boards/panda/board.c                 | 12 +++++-----
 arch/arm/boards/panda/lowlevel.c              | 12 +++++-----
 arch/arm/boards/panda/mux.c                   |  6 ++---
 .../boards/phytec-phycard-omap3/lowlevel.c    | 16 +++++++-------
 .../boards/phytec-phycard-omap3/pca-a-l1.c    | 14 ++++++------
 .../boards/phytec-phycard-omap4/lowlevel.c    | 12 +++++-----
 arch/arm/boards/phytec-phycard-omap4/mux.c    |  6 ++---
 .../boards/phytec-phycard-omap4/pca-a-xl2.c   | 18 +++++++--------
 .../boards/phytec-phycore-omap4460/board.c    | 20 ++++++++---------
 .../boards/phytec-phycore-omap4460/lowlevel.c | 12 +++++-----
 arch/arm/boards/phytec-phycore-omap4460/mux.c |  6 ++---
 arch/arm/boards/phytec-som-am335x/board.c     |  6 ++---
 arch/arm/boards/phytec-som-am335x/lowlevel.c  | 16 +++++++-------
 arch/arm/boards/vscom-baltos/board.c          | 12 +++++-----
 arch/arm/boards/vscom-baltos/lowlevel.c       | 16 +++++++-------
 arch/arm/boards/wago-pfc-am35xx/board-mlo.c   | 10 ++++-----
 arch/arm/boards/wago-pfc-am35xx/board.c       |  2 +-
 arch/arm/boards/wago-pfc-am35xx/lowlevel.c    | 20 ++++++++---------
 arch/arm/include/asm/debug_ll.h               |  2 ++
 arch/arm/mach-omap/am33xx_bbu_emmc.c          |  2 +-
 arch/arm/mach-omap/am33xx_bbu_nand.c          |  2 +-
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c       |  2 +-
 arch/arm/mach-omap/am33xx_clock.c             |  4 ++--
 arch/arm/mach-omap/am33xx_generic.c           | 14 ++++++------
 arch/arm/mach-omap/am33xx_mux.c               |  4 ++--
 arch/arm/mach-omap/am33xx_scrm.c              |  4 ++--
 arch/arm/mach-omap/am3xxx.c                   |  2 +-
 arch/arm/mach-omap/boot_order.c               |  2 +-
 arch/arm/mach-omap/devices-gpmc-nand.c        |  4 ++--
 arch/arm/mach-omap/emif4.c                    |  2 +-
 arch/arm/mach-omap/gpmc.c                     | 14 ++++++------
 arch/arm/mach-omap/omap3_clock.c              | 14 ++++++------
 arch/arm/mach-omap/omap3_generic.c            | 22 +++++++++----------
 arch/arm/mach-omap/omap3_xload_usb.c          |  4 ++--
 arch/arm/mach-omap/omap4_clock.c              |  8 +++----
 arch/arm/mach-omap/omap4_generic.c            | 16 +++++++-------
 arch/arm/mach-omap/omap4_rom_usb.c            |  6 ++---
 arch/arm/mach-omap/omap4_twl6030_mmc.c        |  2 +-
 arch/arm/mach-omap/omap_devices.c             |  2 +-
 arch/arm/mach-omap/omap_generic.c             | 16 +++++++-------
 arch/arm/mach-omap/syslib.c                   |  2 +-
 arch/arm/mach-omap/xload.c                    |  6 ++---
 drivers/bus/omap-gpmc.c                       |  4 ++--
 drivers/clocksource/timer-ti-32k.c            | 12 +++++-----
 drivers/clocksource/timer-ti-dm.c             |  4 ++--
 drivers/i2c/busses/i2c-omap.c                 |  4 ++--
 drivers/mci/omap_hsmmc.c                      |  4 ++--
 drivers/mtd/nand/nand_omap_gpmc.c             |  4 ++--
 drivers/net/cpsw.c                            |  2 +-
 drivers/net/davinci_emac.c                    |  2 +-
 drivers/serial/serial_omap4_usbboot.c         |  2 +-
 drivers/usb/host/ehci-omap.c                  | 10 ++++-----
 fs/omap4_usbbootfs.c                          |  2 +-
 .../mach => include/mach/omap}/am33xx-clock.h |  0
 .../mach/omap}/am33xx-generic.h               |  4 ++--
 .../mach => include/mach/omap}/am33xx-mux.h   |  0
 .../mach/omap}/am33xx-silicon.h               |  0
 .../mach/omap}/am3xxx-silicon.h               |  0
 .../include/mach => include/mach/omap}/bbu.h  |  0
 .../mach => include/mach/omap}/clocks.h       |  0
 .../mach/omap}/cm-regbits-34xx.h              |  0
 .../mach => include/mach/omap}/control.h      |  0
 .../include/mach => include/mach/omap}/cpsw.h |  0
 .../mach => include/mach/omap}/debug_ll.h     |  6 ++---
 .../mach => include/mach/omap}/devices.h      |  2 +-
 .../include/mach => include/mach/omap}/ehci.h |  0
 .../mach => include/mach/omap}/emac_defs.h    |  0
 .../mach => include/mach/omap}/emif4.h        |  0
 .../mach => include/mach/omap}/generic.h      |  0
 .../include/mach => include/mach/omap}/gpmc.h |  0
 .../mach => include/mach/omap}/gpmc_nand.h    |  0
 .../include/mach => include/mach/omap}/intc.h |  0
 .../mach => include/mach/omap}/mcspi.h        |  0
 .../mach => include/mach/omap}/omap3-clock.h  |  0
 .../mach/omap}/omap3-devices.h                |  8 +++----
 .../mach/omap}/omap3-generic.h                |  4 ++--
 .../mach => include/mach/omap}/omap3-mux.h    |  0
 .../mach/omap}/omap3-silicon.h                |  0
 .../mach => include/mach/omap}/omap3-smx.h    |  0
 .../mach => include/mach/omap}/omap4-clock.h  |  0
 .../mach/omap}/omap4-devices.h                |  8 +++----
 .../mach/omap}/omap4-generic.h                |  4 ++--
 .../mach => include/mach/omap}/omap4-mux.h    |  0
 .../mach/omap}/omap4-silicon.h                |  0
 .../mach/omap}/omap4_rom_usb.h                |  0
 .../mach/omap}/omap4_twl6030_mmc.h            |  0
 .../mach => include/mach/omap}/omap_hsmmc.h   |  0
 .../include/mach => include/mach/omap}/sdrc.h |  0
 .../mach => include/mach/omap}/sys_info.h     |  0
 .../mach => include/mach/omap}/syslib.h       |  0
 .../mach => include/mach/omap}/timers.h       |  0
 107 files changed, 310 insertions(+), 308 deletions(-)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/am33xx-clock.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/am33xx-generic.h (92%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/am33xx-mux.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/am33xx-silicon.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/am3xxx-silicon.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/bbu.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/clocks.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/cm-regbits-34xx.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/control.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/cpsw.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/debug_ll.h (95%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/devices.h (92%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/ehci.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/emac_defs.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/emif4.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/generic.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/gpmc.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/gpmc_nand.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/intc.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/mcspi.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap3-clock.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap3-devices.h (94%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap3-generic.h (90%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap3-mux.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap3-silicon.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap3-smx.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap4-clock.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap4-devices.h (94%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap4-generic.h (88%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap4-mux.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap4-silicon.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap4_rom_usb.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap4_twl6030_mmc.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap_hsmmc.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/sdrc.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/sys_info.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/syslib.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/timers.h (100%)

diff --git a/arch/arm/boards/afi-gf/board.c b/arch/arm/boards/afi-gf/board.c
index 53d3b67008..66288ca5b7 100644
--- a/arch/arm/boards/afi-gf/board.c
+++ b/arch/arm/boards/afi-gf/board.c
@@ -8,8 +8,8 @@
 #include <envfs.h>
 #include <bootsource.h>
 #include <asm/armlinux.h>
-#include <mach/bbu.h>
-#include <mach/am33xx-generic.h>
+#include <mach/omap/bbu.h>
+#include <mach/omap/am33xx-generic.h>
 
 static int board_console_init(void)
 {
diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
index 7c94b19c9f..1b08d14205 100644
--- a/arch/arm/boards/afi-gf/lowlevel.c
+++ b/arch/arm/boards/afi-gf/lowlevel.c
@@ -7,15 +7,15 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <linux/bitops.h>
-#include <mach/am33xx-generic.h>
-#include <mach/am33xx-silicon.h>
-#include <mach/am33xx-clock.h>
-#include <mach/emif4.h>
-#include <mach/generic.h>
-#include <mach/sdrc.h>
-#include <mach/sys_info.h>
-#include <mach/syslib.h>
-#include <mach/am33xx-mux.h>
+#include <mach/omap/am33xx-generic.h>
+#include <mach/omap/am33xx-silicon.h>
+#include <mach/omap/am33xx-clock.h>
+#include <mach/omap/emif4.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/sdrc.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/am33xx-mux.h>
 #include <debug_ll.h>
 
 /* AM335X EMIF Register values */
diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
index 597830432b..8aa35262d3 100644
--- a/arch/arm/boards/archosg9/board.c
+++ b/arch/arm/boards/archosg9/board.c
@@ -5,10 +5,10 @@
 #include <init.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <mach/devices.h>
-#include <mach/omap4-silicon.h>
-#include <mach/omap4-devices.h>
-#include <mach/omap4_rom_usb.h>
+#include <mach/omap/devices.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/omap4-devices.h>
+#include <mach/omap/omap4_rom_usb.h>
 #include <linux/sizes.h>
 #include <i2c/i2c.h>
 #include <gpio.h>
diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
index f31ef1a7f2..2c3d0e1ee4 100644
--- a/arch/arm/boards/archosg9/lowlevel.c
+++ b/arch/arm/boards/archosg9/lowlevel.c
@@ -4,12 +4,12 @@
 #include <io.h>
 #include <init.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
-#include <mach/omap4-mux.h>
-#include <mach/omap4-silicon.h>
-#include <mach/omap4-generic.h>
-#include <mach/omap4-clock.h>
-#include <mach/syslib.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/omap4-mux.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/omap4-generic.h>
+#include <mach/omap/omap4-clock.h>
+#include <mach/omap/syslib.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include "mux.h"
diff --git a/arch/arm/boards/archosg9/mux.c b/arch/arm/boards/archosg9/mux.c
index dc85271208..d51ccefba4 100644
--- a/arch/arm/boards/archosg9/mux.c
+++ b/arch/arm/boards/archosg9/mux.c
@@ -3,9 +3,9 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/omap4-silicon.h>
-#include <mach/omap4-mux.h>
-#include <mach/omap4-clock.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/omap4-mux.h>
+#include <mach/omap/omap4-clock.h>
 #include "mux.h"
 
 static const struct pad_conf_entry core_padconf_array[] = {
diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index 7caac5727f..53a93e1ed3 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -12,10 +12,10 @@
 #include <envfs.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <mach/gpmc.h>
-#include <mach/gpmc_nand.h>
-#include <mach/ehci.h>
-#include <mach/omap3-devices.h>
+#include <mach/omap/gpmc.h>
+#include <mach/omap/gpmc_nand.h>
+#include <mach/omap/ehci.h>
+#include <mach/omap/omap3-devices.h>
 #include <i2c/i2c.h>
 #include <linux/err.h>
 #include <usb/ehci.h>
diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index 683ab552f4..ff822e5c24 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -6,14 +6,14 @@
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/control.h>
-#include <mach/generic.h>
-#include <mach/omap3-silicon.h>
-#include <mach/omap3-generic.h>
-#include <mach/omap3-mux.h>
-#include <mach/sdrc.h>
-#include <mach/syslib.h>
-#include <mach/sys_info.h>
+#include <mach/omap/control.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/omap3-generic.h>
+#include <mach/omap/omap3-mux.h>
+#include <mach/omap/sdrc.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/sys_info.h>
 #include <generated/mach-types.h>
 
 /**
diff --git a/arch/arm/boards/beaglebone/beaglebone.h b/arch/arm/boards/beaglebone/beaglebone.h
index 9f1f906699..c95936a84f 100644
--- a/arch/arm/boards/beaglebone/beaglebone.h
+++ b/arch/arm/boards/beaglebone/beaglebone.h
@@ -3,7 +3,7 @@
 #ifndef __BOARD_BEAGLEBONE_H
 #define __BOARD_BEAGLEBONE_H
 
-#include <mach/am33xx-generic.h>
+#include <mach/omap/am33xx-generic.h>
 
 static inline int is_beaglebone_black(void)
 {
diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index 6d2144f95b..f42ff368b4 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -18,12 +18,12 @@
 #include <bootsource.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <mach/am33xx-silicon.h>
-#include <mach/sys_info.h>
-#include <mach/syslib.h>
-#include <mach/gpmc.h>
+#include <mach/omap/am33xx-silicon.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/gpmc.h>
 #include <linux/err.h>
-#include <mach/bbu.h>
+#include <mach/omap/bbu.h>
 
 #include "beaglebone.h"
 
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index ebec4b5419..6978723fbb 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -7,14 +7,14 @@
 #include <debug_ll.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/am33xx-silicon.h>
-#include <mach/am33xx-clock.h>
-#include <mach/generic.h>
-#include <mach/sdrc.h>
-#include <mach/sys_info.h>
-#include <mach/syslib.h>
-#include <mach/am33xx-mux.h>
-#include <mach/am33xx-generic.h>
+#include <mach/omap/am33xx-silicon.h>
+#include <mach/omap/am33xx-clock.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/sdrc.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/am33xx-mux.h>
+#include <mach/omap/am33xx-generic.h>
 
 #include "beaglebone.h"
 
diff --git a/arch/arm/boards/myirtech-x335x/board.c b/arch/arm/boards/myirtech-x335x/board.c
index c6d808284e..82bb612032 100644
--- a/arch/arm/boards/myirtech-x335x/board.c
+++ b/arch/arm/boards/myirtech-x335x/board.c
@@ -7,7 +7,7 @@
 #include <envfs.h>
 #include <init.h>
 #include <linux/sizes.h>
-#include <mach/am33xx-generic.h>
+#include <mach/omap/am33xx-generic.h>
 
 static struct omap_barebox_part myir_barebox_part = {
 	.nand_offset = SZ_128K * 4,
diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
index c394253320..66d2dc1a53 100644
--- a/arch/arm/boards/myirtech-x335x/lowlevel.c
+++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
@@ -8,12 +8,12 @@
 #include <debug_ll.h>
 #include <init.h>
 #include <linux/sizes.h>
-#include <mach/am33xx-clock.h>
-#include <mach/am33xx-generic.h>
-#include <mach/am33xx-mux.h>
-#include <mach/generic.h>
-#include <mach/sdrc.h>
-#include <mach/sys_info.h>
+#include <mach/omap/am33xx-clock.h>
+#include <mach/omap/am33xx-generic.h>
+#include <mach/omap/am33xx-mux.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/sdrc.h>
+#include <mach/omap/sys_info.h>
 
 #define AM335X_ZCZ_1000		0x1c2f
 
diff --git a/arch/arm/boards/omap343xdsp/board.c b/arch/arm/boards/omap343xdsp/board.c
index 045a8b1bca..ca1cf9c58c 100644
--- a/arch/arm/boards/omap343xdsp/board.c
+++ b/arch/arm/boards/omap343xdsp/board.c
@@ -7,9 +7,9 @@
 #include <driver.h>
 #include <io.h>
 #include <asm/armlinux.h>
-#include <mach/omap3-silicon.h>
-#include <mach/omap3-devices.h>
-#include <mach/gpmc.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/omap3-devices.h>
+#include <mach/omap/gpmc.h>
 #include <errno.h>
 
 /**
diff --git a/arch/arm/boards/omap343xdsp/lowlevel.c b/arch/arm/boards/omap343xdsp/lowlevel.c
index 271b122d4d..3a8165f885 100644
--- a/arch/arm/boards/omap343xdsp/lowlevel.c
+++ b/arch/arm/boards/omap343xdsp/lowlevel.c
@@ -6,14 +6,14 @@
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/generic.h>
-#include <mach/omap3-mux.h>
-#include <mach/sdrc.h>
-#include <mach/control.h>
-#include <mach/syslib.h>
-#include <mach/omap3-silicon.h>
-#include <mach/omap3-generic.h>
-#include <mach/sys_info.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/omap3-mux.h>
+#include <mach/omap/sdrc.h>
+#include <mach/omap/control.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/omap3-generic.h>
+#include <mach/omap/sys_info.h>
 
 /**
  * @brief Do the SDRC initialization for 128Meg Infenion DDR for CS0
diff --git a/arch/arm/boards/omap3evm/board.c b/arch/arm/boards/omap3evm/board.c
index 62b1a1c00f..4099c97d31 100644
--- a/arch/arm/boards/omap3evm/board.c
+++ b/arch/arm/boards/omap3evm/board.c
@@ -32,12 +32,12 @@
 #include <io.h>
 #include <linux/sizes.h>
 #include <asm/armlinux.h>
-#include <mach/omap3-silicon.h>
-#include <mach/omap3-mux.h>
-#include <mach/gpmc.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/omap3-mux.h>
+#include <mach/omap/gpmc.h>
 #include <errno.h>
 #include <generated/mach-types.h>
-#include <mach/omap3-devices.h>
+#include <mach/omap/omap3-devices.h>
 
 /**
  * @brief Initialize the serial port to be used as console.
diff --git a/arch/arm/boards/omap3evm/lowlevel.c b/arch/arm/boards/omap3evm/lowlevel.c
index 1dcfbc27ba..5797acc14e 100644
--- a/arch/arm/boards/omap3evm/lowlevel.c
+++ b/arch/arm/boards/omap3evm/lowlevel.c
@@ -5,14 +5,14 @@
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/generic.h>
-#include <mach/omap3-mux.h>
-#include <mach/sdrc.h>
-#include <mach/control.h>
-#include <mach/syslib.h>
-#include <mach/omap3-silicon.h>
-#include <mach/omap3-generic.h>
-#include <mach/sys_info.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/omap3-mux.h>
+#include <mach/omap/sdrc.h>
+#include <mach/omap/control.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/omap3-generic.h>
+#include <mach/omap/sys_info.h>
 
 
 /*
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index 01189ebd76..276aeb287d 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -8,12 +8,12 @@
 #include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <mach/omap4-silicon.h>
-#include <mach/omap4-devices.h>
-#include <mach/sdrc.h>
-#include <mach/sys_info.h>
-#include <mach/syslib.h>
-#include <mach/control.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/omap4-devices.h>
+#include <mach/omap/sdrc.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/control.h>
 #include <usb/ehci.h>
 #include <linux/err.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index 4fe445b17d..f535e7f9a4 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -5,12 +5,12 @@
 #include <init.h>
 #include <io.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
-#include <mach/omap4-mux.h>
-#include <mach/omap4-silicon.h>
-#include <mach/omap4-generic.h>
-#include <mach/omap4-clock.h>
-#include <mach/syslib.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/omap4-mux.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/omap4-generic.h>
+#include <mach/omap/omap4-clock.h>
+#include <mach/omap/syslib.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 
diff --git a/arch/arm/boards/panda/mux.c b/arch/arm/boards/panda/mux.c
index 25def93ea2..b5e1e79c8f 100644
--- a/arch/arm/boards/panda/mux.c
+++ b/arch/arm/boards/panda/mux.c
@@ -3,9 +3,9 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/omap4-silicon.h>
-#include <mach/omap4-mux.h>
-#include <mach/omap4-clock.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/omap4-mux.h>
+#include <mach/omap/omap4-clock.h>
 
 #include "mux.h"
 
diff --git a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
index 6f24108ef2..56fbdf12ad 100644
--- a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
@@ -6,14 +6,14 @@
 #include <linux/sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/omap3-mux.h>
-#include <mach/generic.h>
-#include <mach/sdrc.h>
-#include <mach/control.h>
-#include <mach/syslib.h>
-#include <mach/omap3-silicon.h>
-#include <mach/omap3-generic.h>
-#include <mach/sys_info.h>
+#include <mach/omap/omap3-mux.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/sdrc.h>
+#include <mach/omap/control.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/omap3-generic.h>
+#include <mach/omap/sys_info.h>
 
 /* Slower full frequency range default timings for x32 operation */
 #define SDP_SDRC_SHARING	0x00000100
diff --git a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
index 0128401e1a..ef22d807a8 100644
--- a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
+++ b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
@@ -42,13 +42,13 @@
 #include <asm/io.h>
 #include <generated/mach-types.h>
 #include <linux/err.h>
-#include <mach/gpmc.h>
-#include <mach/gpmc_nand.h>
-#include <mach/omap_hsmmc.h>
-#include <mach/sdrc.h>
-#include <mach/omap3-silicon.h>
-#include <mach/sys_info.h>
-#include <mach/omap3-devices.h>
+#include <mach/omap/gpmc.h>
+#include <mach/omap/gpmc_nand.h>
+#include <mach/omap/omap_hsmmc.h>
+#include <mach/omap/sdrc.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/omap3-devices.h>
 
 #define SMC911X_BASE 0x2c000000
 
diff --git a/arch/arm/boards/phytec-phycard-omap4/lowlevel.c b/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
index 6ccaf3e342..b5906234d3 100644
--- a/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
@@ -5,12 +5,12 @@
 #include <init.h>
 #include <io.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
-#include <mach/omap4-mux.h>
-#include <mach/omap4-silicon.h>
-#include <mach/omap4-generic.h>
-#include <mach/omap4-clock.h>
-#include <mach/syslib.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/omap4-mux.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/omap4-generic.h>
+#include <mach/omap/omap4-clock.h>
+#include <mach/omap/syslib.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 
diff --git a/arch/arm/boards/phytec-phycard-omap4/mux.c b/arch/arm/boards/phytec-phycard-omap4/mux.c
index b0bbfa5906..a545ca5948 100644
--- a/arch/arm/boards/phytec-phycard-omap4/mux.c
+++ b/arch/arm/boards/phytec-phycard-omap4/mux.c
@@ -3,9 +3,9 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/omap4-silicon.h>
-#include <mach/omap4-mux.h>
-#include <mach/omap4-clock.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/omap4-mux.h>
+#include <mach/omap/omap4-clock.h>
 
 #include "mux.h"
 
diff --git a/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c b/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
index 1724bc6dc6..da2a21d616 100644
--- a/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
+++ b/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
@@ -9,19 +9,19 @@
 #include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <mach/omap4-silicon.h>
-#include <mach/sdrc.h>
-#include <mach/sys_info.h>
-#include <mach/syslib.h>
-#include <mach/control.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/sdrc.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/control.h>
 #include <linux/err.h>
 #include <linux/sizes.h>
 #include <nand.h>
 #include <asm/mmu.h>
-#include <mach/gpmc.h>
-#include <mach/gpmc_nand.h>
-#include <mach/omap_hsmmc.h>
-#include <mach/omap4-devices.h>
+#include <mach/omap/gpmc.h>
+#include <mach/omap/gpmc_nand.h>
+#include <mach/omap/omap_hsmmc.h>
+#include <mach/omap/omap4-devices.h>
 #include <i2c/i2c.h>
 
 static int pcaaxl2_console_init(void)
diff --git a/arch/arm/boards/phytec-phycore-omap4460/board.c b/arch/arm/boards/phytec-phycore-omap4460/board.c
index 6c69fb7e1b..0b1ffe77a6 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/board.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/board.c
@@ -10,20 +10,20 @@
 #include <envfs.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <mach/devices.h>
-#include <mach/omap4-silicon.h>
-#include <mach/omap4-devices.h>
-#include <mach/omap4-clock.h>
-#include <mach/sdrc.h>
-#include <mach/sys_info.h>
-#include <mach/syslib.h>
-#include <mach/control.h>
+#include <mach/omap/devices.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/omap4-devices.h>
+#include <mach/omap/omap4-clock.h>
+#include <mach/omap/sdrc.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/control.h>
 #include <linux/err.h>
 #include <linux/sizes.h>
 #include <nand.h>
 #include <asm/mmu.h>
-#include <mach/gpmc.h>
-#include <mach/gpmc_nand.h>
+#include <mach/omap/gpmc.h>
+#include <mach/omap/gpmc_nand.h>
 #include <i2c/i2c.h>
 
 static int pcm049_console_init(void)
diff --git a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
index 2a65e40e6b..17194c6562 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
@@ -5,12 +5,12 @@
 #include <init.h>
 #include <io.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
-#include <mach/omap4-mux.h>
-#include <mach/omap4-silicon.h>
-#include <mach/omap4-generic.h>
-#include <mach/omap4-clock.h>
-#include <mach/syslib.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/omap4-mux.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/omap4-generic.h>
+#include <mach/omap/omap4-clock.h>
+#include <mach/omap/syslib.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 
diff --git a/arch/arm/boards/phytec-phycore-omap4460/mux.c b/arch/arm/boards/phytec-phycore-omap4460/mux.c
index 9cd10e06f8..287c2a4826 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/mux.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/mux.c
@@ -3,9 +3,9 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/omap4-silicon.h>
-#include <mach/omap4-mux.h>
-#include <mach/omap4-clock.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/omap4-mux.h>
+#include <mach/omap/omap4-clock.h>
 
 #include "mux.h"
 
diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/phytec-som-am335x/board.c
index 11acd06c53..5e726b56fc 100644
--- a/arch/arm/boards/phytec-som-am335x/board.c
+++ b/arch/arm/boards/phytec-som-am335x/board.c
@@ -21,9 +21,9 @@
 #include <generated/mach-types.h>
 #include <linux/phy.h>
 #include <linux/micrel_phy.h>
-#include <mach/am33xx-generic.h>
-#include <mach/am33xx-silicon.h>
-#include <mach/bbu.h>
+#include <mach/omap/am33xx-generic.h>
+#include <mach/omap/am33xx-silicon.h>
+#include <mach/omap/bbu.h>
 
 static int physom_coredevice_init(void)
 {
diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 8e506bc4ed..445ec18d5a 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -7,14 +7,14 @@
 #include <init.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/am33xx-silicon.h>
-#include <mach/am33xx-clock.h>
-#include <mach/generic.h>
-#include <mach/sdrc.h>
-#include <mach/sys_info.h>
-#include <mach/syslib.h>
-#include <mach/am33xx-mux.h>
-#include <mach/am33xx-generic.h>
+#include <mach/omap/am33xx-silicon.h>
+#include <mach/omap/am33xx-clock.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/sdrc.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/am33xx-mux.h>
+#include <mach/omap/am33xx-generic.h>
 #include <debug_ll.h>
 
 #include "ram-timings.h"
diff --git a/arch/arm/boards/vscom-baltos/board.c b/arch/arm/boards/vscom-baltos/board.c
index b9ce356264..20f990c404 100644
--- a/arch/arm/boards/vscom-baltos/board.c
+++ b/arch/arm/boards/vscom-baltos/board.c
@@ -18,13 +18,13 @@
 #include <bootsource.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <mach/am33xx-generic.h>
-#include <mach/am33xx-silicon.h>
-#include <mach/sys_info.h>
-#include <mach/syslib.h>
-#include <mach/gpmc.h>
+#include <mach/omap/am33xx-generic.h>
+#include <mach/omap/am33xx-silicon.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/gpmc.h>
 #include <linux/err.h>
-#include <mach/bbu.h>
+#include <mach/omap/bbu.h>
 #include <libfile.h>
 #include <gpio.h>
 
diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
index 2fa8a0fdc3..f1dcc731a0 100644
--- a/arch/arm/boards/vscom-baltos/lowlevel.c
+++ b/arch/arm/boards/vscom-baltos/lowlevel.c
@@ -8,14 +8,14 @@
 #include <debug_ll.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/am33xx-silicon.h>
-#include <mach/am33xx-clock.h>
-#include <mach/generic.h>
-#include <mach/sdrc.h>
-#include <mach/sys_info.h>
-#include <mach/syslib.h>
-#include <mach/am33xx-mux.h>
-#include <mach/am33xx-generic.h>
+#include <mach/omap/am33xx-silicon.h>
+#include <mach/omap/am33xx-clock.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/sdrc.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/am33xx-mux.h>
+#include <mach/omap/am33xx-generic.h>
 
 static const struct am33xx_ddr_data ddr3_data = {
 	.rd_slave_ratio0        = 0x38,
diff --git a/arch/arm/boards/wago-pfc-am35xx/board-mlo.c b/arch/arm/boards/wago-pfc-am35xx/board-mlo.c
index c940565b4a..c5ccdf7faf 100644
--- a/arch/arm/boards/wago-pfc-am35xx/board-mlo.c
+++ b/arch/arm/boards/wago-pfc-am35xx/board-mlo.c
@@ -8,12 +8,12 @@
 #include <init.h>
 #include <io.h>
 #include <linux/sizes.h>
-#include <mach/omap3-silicon.h>
-#include <mach/gpmc.h>
-#include <mach/gpmc_nand.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/gpmc.h>
+#include <mach/omap/gpmc_nand.h>
 #include <errno.h>
-#include <mach/omap3-devices.h>
-#include <mach/generic.h>
+#include <mach/omap/omap3-devices.h>
+#include <mach/omap/generic.h>
 
 /* map first four erase blocks */
 static struct omap_barebox_part pfc200_mlo_part = {
diff --git a/arch/arm/boards/wago-pfc-am35xx/board.c b/arch/arm/boards/wago-pfc-am35xx/board.c
index c0a039ba50..091e606e21 100644
--- a/arch/arm/boards/wago-pfc-am35xx/board.c
+++ b/arch/arm/boards/wago-pfc-am35xx/board.c
@@ -14,7 +14,7 @@
 #include <linux/phy.h>
 #include <linux/micrel_phy.h>
 #include <asm/memory.h>
-#include <mach/generic.h>
+#include <mach/omap/generic.h>
 
 static int pfc200_mem_init(void)
 {
diff --git a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
index 9018bedf22..04e036c233 100644
--- a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
+++ b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
@@ -12,19 +12,19 @@
 #include <debug_ll.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/generic.h>
-#include <mach/sdrc.h>
-#include <mach/sys_info.h>
-#include <mach/syslib.h>
-#include <mach/omap3-mux.h>
-#include <mach/omap3-silicon.h>
-#include <mach/omap3-generic.h>
-#include <mach/omap3-clock.h>
-#include <mach/control.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/sdrc.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/omap3-mux.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/omap3-generic.h>
+#include <mach/omap/omap3-clock.h>
+#include <mach/omap/control.h>
 #include <asm/common.h>
 #include <asm-generic/memory_layout.h>
 
-#include <mach/emif4.h>
+#include <mach/omap/emif4.h>
 
 static void mux_config(void)
 {
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index acc6be7e8f..25f7559527 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -36,6 +36,8 @@
 #include <mach/socfpga/debug_ll.h>
 #elif defined CONFIG_ARCH_PXA
 #include <mach/pxa/debug_ll.h>
+#elif defined CONFIG_ARCH_OMAP
+#include <mach/omap/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-omap/am33xx_bbu_emmc.c b/arch/arm/mach-omap/am33xx_bbu_emmc.c
index c3d4f9c422..3cae31d34c 100644
--- a/arch/arm/mach-omap/am33xx_bbu_emmc.c
+++ b/arch/arm/mach-omap/am33xx_bbu_emmc.c
@@ -18,7 +18,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <filetype.h>
-#include <mach/bbu.h>
+#include <mach/omap/bbu.h>
 
 #define PART_TABLE_SIZE		66
 #define PART_TABLE_OFFSET	0x1BE
diff --git a/arch/arm/mach-omap/am33xx_bbu_nand.c b/arch/arm/mach-omap/am33xx_bbu_nand.c
index 8c487c8ebb..2041cf3c0b 100644
--- a/arch/arm/mach-omap/am33xx_bbu_nand.c
+++ b/arch/arm/mach-omap/am33xx_bbu_nand.c
@@ -24,7 +24,7 @@
 #include <filetype.h>
 #include <linux/mtd/mtd.h>
 #include <mtd/mtd-peb.h>
-#include <mach/bbu.h>
+#include <mach/omap/bbu.h>
 
 struct nand_bbu_handler {
 	struct bbu_handler bbu_handler;
diff --git a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
index f36c2c3bf0..2c58c9ae69 100644
--- a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
+++ b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
@@ -20,7 +20,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <linux/stat.h>
-#include <mach/bbu.h>
+#include <mach/omap/bbu.h>
 
 /*
  * AM35xx, AM33xx chips use big endian MLO for SPI NOR flash
diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33xx_clock.c
index a5ac6f68c0..eeb7e93329 100644
--- a/arch/arm/mach-omap/am33xx_clock.c
+++ b/arch/arm/mach-omap/am33xx_clock.c
@@ -14,8 +14,8 @@
  */
 #include <common.h>
 #include <asm/io.h>
-#include <mach/am33xx-clock.h>
-#include <mach/am33xx-generic.h>
+#include <mach/omap/am33xx-clock.h>
+#include <mach/omap/am33xx-generic.h>
 #include <linux/math64.h>
 
 #define PRCM_MOD_EN		0x2
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 94fe26b2b2..850fbceaec 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -21,13 +21,13 @@
 #include <net.h>
 #include <restart.h>
 #include <asm/barebox-arm.h>
-#include <mach/am33xx-silicon.h>
-#include <mach/am33xx-clock.h>
-#include <mach/emif4.h>
-#include <mach/generic.h>
-#include <mach/sys_info.h>
-#include <mach/am33xx-generic.h>
-#include <mach/gpmc.h>
+#include <mach/omap/am33xx-silicon.h>
+#include <mach/omap/am33xx-clock.h>
+#include <mach/omap/emif4.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/am33xx-generic.h>
+#include <mach/omap/gpmc.h>
 #include <reset_source.h>
 
 static void __noreturn am33xx_restart_soc(struct restart_handler *rst)
diff --git a/arch/arm/mach-omap/am33xx_mux.c b/arch/arm/mach-omap/am33xx_mux.c
index cc96ced18e..3192e332c6 100644
--- a/arch/arm/mach-omap/am33xx_mux.c
+++ b/arch/arm/mach-omap/am33xx_mux.c
@@ -15,8 +15,8 @@
 #include <common.h>
 #include <config.h>
 #include <asm/io.h>
-#include <mach/am33xx-mux.h>
-#include <mach/am33xx-silicon.h>
+#include <mach/omap/am33xx-mux.h>
+#include <mach/omap/am33xx-silicon.h>
 
 #define MUX_CFG(value, offset)	\
 	__raw_writel(value, (AM33XX_CTRL_BASE + offset));
diff --git a/arch/arm/mach-omap/am33xx_scrm.c b/arch/arm/mach-omap/am33xx_scrm.c
index aeb828001c..c2ae73d53e 100644
--- a/arch/arm/mach-omap/am33xx_scrm.c
+++ b/arch/arm/mach-omap/am33xx_scrm.c
@@ -20,8 +20,8 @@
 #include <of.h>
 #include <asm/barebox-arm.h>
 #include <asm/memory.h>
-#include <mach/am33xx-silicon.h>
-#include <mach/emif4.h>
+#include <mach/omap/am33xx-silicon.h>
+#include <mach/omap/emif4.h>
 
 static int am33xx_scrm_probe(struct device *dev)
 {
diff --git a/arch/arm/mach-omap/am3xxx.c b/arch/arm/mach-omap/am3xxx.c
index 60a6e4b825..faf230a027 100644
--- a/arch/arm/mach-omap/am3xxx.c
+++ b/arch/arm/mach-omap/am3xxx.c
@@ -2,7 +2,7 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/am3xxx-silicon.h>
+#include <mach/omap/am3xxx-silicon.h>
 
 /* UART Defines */
 #define UART_SYSCFG_OFFSET	0x54
diff --git a/arch/arm/mach-omap/boot_order.c b/arch/arm/mach-omap/boot_order.c
index 4b74fdba66..4fed99743f 100644
--- a/arch/arm/mach-omap/boot_order.c
+++ b/arch/arm/mach-omap/boot_order.c
@@ -15,7 +15,7 @@
 #include <common.h>
 #include <command.h>
 #include <complete.h>
-#include <mach/omap4-silicon.h>
+#include <mach/omap/omap4-silicon.h>
 
 struct bootsrc {
 	const char *name;
diff --git a/arch/arm/mach-omap/devices-gpmc-nand.c b/arch/arm/mach-omap/devices-gpmc-nand.c
index c4ddc951fe..1cfba5af71 100644
--- a/arch/arm/mach-omap/devices-gpmc-nand.c
+++ b/arch/arm/mach-omap/devices-gpmc-nand.c
@@ -24,8 +24,8 @@
 #include <clock.h>
 #include <io.h>
 
-#include <mach/gpmc.h>
-#include <mach/gpmc_nand.h>
+#include <mach/omap/gpmc.h>
+#include <mach/omap/gpmc_nand.h>
 
 #define GPMC_CONF1_VALx8	0x00000800
 #define GPMC_CONF1_VALx16	0x00001800
diff --git a/arch/arm/mach-omap/emif4.c b/arch/arm/mach-omap/emif4.c
index b5a53e8c63..db16d6c760 100644
--- a/arch/arm/mach-omap/emif4.c
+++ b/arch/arm/mach-omap/emif4.c
@@ -11,7 +11,7 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/emif4.h>
+#include <mach/omap/emif4.h>
 
 /*
  * AM35xx configuration values
diff --git a/arch/arm/mach-omap/gpmc.c b/arch/arm/mach-omap/gpmc.c
index 07eeae1ace..1cee845012 100644
--- a/arch/arm/mach-omap/gpmc.c
+++ b/arch/arm/mach-omap/gpmc.c
@@ -24,13 +24,13 @@
 #include <init.h>
 #include <io.h>
 #include <errno.h>
-#include <mach/omap3-silicon.h>
-#include <mach/omap4-silicon.h>
-#include <mach/am33xx-silicon.h>
-#include <mach/gpmc.h>
-#include <mach/sys_info.h>
-#include <mach/syslib.h>
-#include <mach/generic.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/am33xx-silicon.h>
+#include <mach/omap/gpmc.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/generic.h>
 
 /**
  * @brief Do a Generic initialization of GPMC. if you choose otherwise,
diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index 03b866c28e..f66316a536 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -32,13 +32,13 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/omap3-silicon.h>
-#include <mach/omap3-generic.h>
-#include <mach/clocks.h>
-#include <mach/omap3-clock.h>
-#include <mach/timers.h>
-#include <mach/sys_info.h>
-#include <mach/syslib.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/omap3-generic.h>
+#include <mach/omap/clocks.h>
+#include <mach/omap/omap3-clock.h>
+#include <mach/omap/timers.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/syslib.h>
 
 #define S32K_CR			(OMAP3_32KTIMER_BASE + 0x10)
 
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index cb6105cc04..8230b37619 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -32,17 +32,17 @@
 #include <init.h>
 #include <io.h>
 #include <restart.h>
-#include <mach/omap3-silicon.h>
-#include <mach/gpmc.h>
-#include <mach/generic.h>
-#include <mach/sdrc.h>
-#include <mach/control.h>
-#include <mach/omap3-smx.h>
-#include <mach/clocks.h>
-#include <mach/omap3-clock.h>
-#include <mach/sys_info.h>
-#include <mach/syslib.h>
-#include <mach/omap3-generic.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/gpmc.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/sdrc.h>
+#include <mach/omap/control.h>
+#include <mach/omap/omap3-smx.h>
+#include <mach/omap/clocks.h>
+#include <mach/omap/omap3-clock.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/omap3-generic.h>
 #include <reset_source.h>
 
 /**
diff --git a/arch/arm/mach-omap/omap3_xload_usb.c b/arch/arm/mach-omap/omap3_xload_usb.c
index ac6a434643..01e958da6f 100644
--- a/arch/arm/mach-omap/omap3_xload_usb.c
+++ b/arch/arm/mach-omap/omap3_xload_usb.c
@@ -19,8 +19,8 @@
 #include <common.h>
 #include <io.h>
 #include <malloc.h>
-#include <mach/omap3-silicon.h>
-#include <mach/omap3-generic.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/omap3-generic.h>
 
 static void __iomem *omap3_usb_base = (void __iomem *)OMAP3_MUSB0_BASE;
 
diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
index 6f53c706d6..aa314b70ec 100644
--- a/arch/arm/mach-omap/omap4_clock.c
+++ b/arch/arm/mach-omap/omap4_clock.c
@@ -2,10 +2,10 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/syslib.h>
-#include <mach/omap4-silicon.h>
-#include <mach/clocks.h>
-#include <mach/omap4-clock.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/clocks.h>
+#include <mach/omap/omap4-clock.h>
 
 #define LDELAY	12000000
 
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 7c8374eba7..10190b152b 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -5,14 +5,14 @@
 #include <init.h>
 #include <restart.h>
 #include <io.h>
-#include <mach/omap4-clock.h>
-#include <mach/omap4-silicon.h>
-#include <mach/omap4-mux.h>
-#include <mach/syslib.h>
-#include <mach/generic.h>
-#include <mach/gpmc.h>
-#include <mach/omap4_rom_usb.h>
-#include <mach/omap4-generic.h>
+#include <mach/omap/omap4-clock.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/omap4-mux.h>
+#include <mach/omap/syslib.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/gpmc.h>
+#include <mach/omap/omap4_rom_usb.h>
+#include <mach/omap/omap4-generic.h>
 
 /*
  *  The following several lines are taken from U-Boot to support
diff --git a/arch/arm/mach-omap/omap4_rom_usb.c b/arch/arm/mach-omap/omap4_rom_usb.c
index 0b31240590..a3e447128f 100644
--- a/arch/arm/mach-omap/omap4_rom_usb.c
+++ b/arch/arm/mach-omap/omap4_rom_usb.c
@@ -31,9 +31,9 @@
  */
 
 #include <common.h>
-#include <mach/omap4-silicon.h>
-#include <mach/omap4_rom_usb.h>
-#include <mach/generic.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/omap4_rom_usb.h>
+#include <mach/omap/generic.h>
 #include <init.h>
 
 static struct omap4_usbboot omap4_usbboot_data;
diff --git a/arch/arm/mach-omap/omap4_twl6030_mmc.c b/arch/arm/mach-omap/omap4_twl6030_mmc.c
index 67a9a5d6b5..c5fa0e77aa 100644
--- a/arch/arm/mach-omap/omap4_twl6030_mmc.c
+++ b/arch/arm/mach-omap/omap4_twl6030_mmc.c
@@ -17,7 +17,7 @@
 #include <io.h>
 
 #include <mfd/twl6030.h>
-#include <mach/omap4_twl6030_mmc.h>
+#include <mach/omap/omap4_twl6030_mmc.h>
 
 /* MMC voltage */
 #define OMAP4_CONTROL_PBIASLITE			0x4A100600
diff --git a/arch/arm/mach-omap/omap_devices.c b/arch/arm/mach-omap/omap_devices.c
index 15a4618931..3ade3225df 100644
--- a/arch/arm/mach-omap/omap_devices.c
+++ b/arch/arm/mach-omap/omap_devices.c
@@ -3,7 +3,7 @@
 #include <driver.h>
 #include <asm/armlinux.h>
 
-#include <mach/omap3-devices.h>
+#include <mach/omap/omap3-devices.h>
 
 void omap_add_ram0(resource_size_t size)
 {
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 6bb26a6ef0..59c1ce7666 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -22,14 +22,14 @@
 #include <malloc.h>
 #include <libfile.h>
 #include <linux/stat.h>
-#include <mach/gpmc.h>
-#include <mach/generic.h>
-#include <mach/am33xx-silicon.h>
-#include <mach/omap3-silicon.h>
-#include <mach/omap4-silicon.h>
-#include <mach/am33xx-generic.h>
-#include <mach/omap3-generic.h>
-#include <mach/omap4-generic.h>
+#include <mach/omap/gpmc.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/am33xx-silicon.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/am33xx-generic.h>
+#include <mach/omap/omap3-generic.h>
+#include <mach/omap/omap4-generic.h>
 
 void __iomem *omap_gpmc_base;
 
diff --git a/arch/arm/mach-omap/syslib.c b/arch/arm/mach-omap/syslib.c
index 488f0ab859..f8fad243c6 100644
--- a/arch/arm/mach-omap/syslib.c
+++ b/arch/arm/mach-omap/syslib.c
@@ -25,7 +25,7 @@
 #include <config.h>
 #include <common.h>
 #include <io.h>
-#include <mach/syslib.h>
+#include <mach/omap/syslib.h>
 
 /**
  * @brief simple spin loop
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 5591f01c9c..e61e2ce652 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -13,9 +13,9 @@
 #include <malloc.h>
 #include <filetype.h>
 #include <xymodem.h>
-#include <mach/generic.h>
-#include <mach/am33xx-generic.h>
-#include <mach/omap3-generic.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/am33xx-generic.h>
+#include <mach/omap/omap3-generic.h>
 #include <net.h>
 #include <environment.h>
 #include <dhcp.h>
diff --git a/drivers/bus/omap-gpmc.c b/drivers/bus/omap-gpmc.c
index 1f4580e5d7..4661220c86 100644
--- a/drivers/bus/omap-gpmc.c
+++ b/drivers/bus/omap-gpmc.c
@@ -16,8 +16,8 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <linux/mtd/rawnand.h>
-#include <mach/gpmc_nand.h>
-#include <mach/gpmc.h>
+#include <mach/omap/gpmc_nand.h>
+#include <mach/omap/gpmc.h>
 
 #define GPMC_CS_NUM	8
 #define GPMC_NR_WAITPINS		4
diff --git a/drivers/clocksource/timer-ti-32k.c b/drivers/clocksource/timer-ti-32k.c
index 658e0a226c..2b3ef4360a 100644
--- a/drivers/clocksource/timer-ti-32k.c
+++ b/drivers/clocksource/timer-ti-32k.c
@@ -16,12 +16,12 @@
 #include <clock.h>
 #include <init.h>
 #include <io.h>
-#include <mach/omap3-silicon.h>
-#include <mach/omap4-silicon.h>
-#include <mach/clocks.h>
-#include <mach/timers.h>
-#include <mach/sys_info.h>
-#include <mach/syslib.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/clocks.h>
+#include <mach/omap/timers.h>
+#include <mach/omap/sys_info.h>
+#include <mach/omap/syslib.h>
 
 /** Sync 32Khz Timer registers */
 #define S32K_CR			0x10
diff --git a/drivers/clocksource/timer-ti-dm.c b/drivers/clocksource/timer-ti-dm.c
index 17412198b9..88bc61dbbf 100644
--- a/drivers/clocksource/timer-ti-dm.c
+++ b/drivers/clocksource/timer-ti-dm.c
@@ -21,8 +21,8 @@
 #include <clock.h>
 #include <init.h>
 #include <io.h>
-#include <mach/am33xx-silicon.h>
-#include <mach/am33xx-clock.h>
+#include <mach/omap/am33xx-silicon.h>
+#include <mach/omap/am33xx-clock.h>
 
 #include <stdio.h>
 
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index d9436b17c0..5cf33039ed 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -28,8 +28,8 @@
 
 #include <io.h>
 #include <i2c/i2c.h>
-#include <mach/generic.h>
-#include <mach/omap3-clock.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/omap3-clock.h>
 
 /* This will be the driver name */
 #define DRIVER_NAME "i2c-omap"
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 205d5b434a..0052d89525 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -12,12 +12,12 @@
 #include <io.h>
 #include <linux/err.h>
 
-#include <mach/omap_hsmmc.h>
+#include <mach/omap/omap_hsmmc.h>
 
 #if defined(CONFIG_MFD_TWL6030) && \
 	defined(CONFIG_MCI_OMAP_HSMMC) && \
 	defined(CONFIG_ARCH_OMAP4)
-#include <mach/omap4_twl6030_mmc.h>
+#include <mach/omap/omap4_twl6030_mmc.h>
 #endif
 
 struct hsmmc {
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index c7252ce72a..c5e50d27c8 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -68,8 +68,8 @@
 #include <linux/mtd/rawnand.h>
 #include <linux/mtd/nand_ecc.h>
 #include <io.h>
-#include <mach/gpmc.h>
-#include <mach/gpmc_nand.h>
+#include <mach/omap/gpmc.h>
+#include <mach/omap/gpmc_nand.h>
 #include <platform_data/elm.h>
 
 #include "nand_omap_bch_decoder.h"
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 82a1fb974e..eacb382afe 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -22,7 +22,7 @@
 #include <asm/system.h>
 #include <linux/err.h>
 
-#include <mach/cpsw.h>
+#include <mach/omap/cpsw.h>
 
 #define CPSW_VERSION_1		0x19010a
 #define CPSW_VERSION_2		0x19010c
diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 2415aa7443..7f2e1af3f7 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -31,7 +31,7 @@
 #include <init.h>
 #include <asm/system.h>
 #include <linux/phy.h>
-#include <mach/emac_defs.h>
+#include <mach/omap/emac_defs.h>
 #include <of_net.h>
 #include "davinci_emac.h"
 
diff --git a/drivers/serial/serial_omap4_usbboot.c b/drivers/serial/serial_omap4_usbboot.c
index ea018444d5..463d217f97 100644
--- a/drivers/serial/serial_omap4_usbboot.c
+++ b/drivers/serial/serial_omap4_usbboot.c
@@ -4,7 +4,7 @@
 #include <init.h>
 #include <malloc.h>
 #include <errno.h>
-#include <mach/omap4_rom_usb.h>
+#include <mach/omap/omap4_rom_usb.h>
 
 struct serial_omap4_usbboot_priv {
 	struct console_device cdev;
diff --git a/drivers/usb/host/ehci-omap.c b/drivers/usb/host/ehci-omap.c
index 858dc55f32..dd18c4af39 100644
--- a/drivers/usb/host/ehci-omap.c
+++ b/drivers/usb/host/ehci-omap.c
@@ -11,15 +11,15 @@
 
 #include <mfd/twl4030.h>
 #include <usb/twl4030.h>
-#include <mach/ehci.h>
+#include <mach/omap/ehci.h>
 #include <common.h>
 #include <io.h>
 #include <clock.h>
 #include <gpio.h>
-#include <mach/omap3-silicon.h>
-#include <mach/omap3-clock.h>
-#include <mach/cm-regbits-34xx.h>
-#include <mach/sys_info.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/omap3-clock.h>
+#include <mach/omap/cm-regbits-34xx.h>
+#include <mach/omap/sys_info.h>
 
 void omap_usb_utmi_init(struct omap_hcd *omap, u8 tll_channel_mask)
 {
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index 985d968cc5..9b0755d539 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -17,7 +17,7 @@
 #include <init.h>
 #include <linux/stat.h>
 #include <linux/err.h>
-#include <mach/omap4_rom_usb.h>
+#include <mach/omap/omap4_rom_usb.h>
 
 #define OMAP4_USBBOOT_FS_MAGIC		0x5562464D
 #define OMAP4_USBBOOT_FS_CMD_OPEN	0x46530000
diff --git a/arch/arm/mach-omap/include/mach/am33xx-clock.h b/include/mach/omap/am33xx-clock.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/am33xx-clock.h
rename to include/mach/omap/am33xx-clock.h
diff --git a/arch/arm/mach-omap/include/mach/am33xx-generic.h b/include/mach/omap/am33xx-generic.h
similarity index 92%
rename from arch/arm/mach-omap/include/mach/am33xx-generic.h
rename to include/mach/omap/am33xx-generic.h
index e146bf0909..30aa139741 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-generic.h
+++ b/include/mach/omap/am33xx-generic.h
@@ -4,8 +4,8 @@
 #define __MACH_AM33XX_GENERIC_H
 
 #include <string.h>
-#include <mach/generic.h>
-#include <mach/am33xx-silicon.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/am33xx-silicon.h>
 
 int am33xx_register_ethaddr(int eth_id, int mac_id);
 
diff --git a/arch/arm/mach-omap/include/mach/am33xx-mux.h b/include/mach/omap/am33xx-mux.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/am33xx-mux.h
rename to include/mach/omap/am33xx-mux.h
diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/include/mach/omap/am33xx-silicon.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/am33xx-silicon.h
rename to include/mach/omap/am33xx-silicon.h
diff --git a/arch/arm/mach-omap/include/mach/am3xxx-silicon.h b/include/mach/omap/am3xxx-silicon.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/am3xxx-silicon.h
rename to include/mach/omap/am3xxx-silicon.h
diff --git a/arch/arm/mach-omap/include/mach/bbu.h b/include/mach/omap/bbu.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/bbu.h
rename to include/mach/omap/bbu.h
diff --git a/arch/arm/mach-omap/include/mach/clocks.h b/include/mach/omap/clocks.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/clocks.h
rename to include/mach/omap/clocks.h
diff --git a/arch/arm/mach-omap/include/mach/cm-regbits-34xx.h b/include/mach/omap/cm-regbits-34xx.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/cm-regbits-34xx.h
rename to include/mach/omap/cm-regbits-34xx.h
diff --git a/arch/arm/mach-omap/include/mach/control.h b/include/mach/omap/control.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/control.h
rename to include/mach/omap/control.h
diff --git a/arch/arm/mach-omap/include/mach/cpsw.h b/include/mach/omap/cpsw.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/cpsw.h
rename to include/mach/omap/cpsw.h
diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/include/mach/omap/debug_ll.h
similarity index 95%
rename from arch/arm/mach-omap/include/mach/debug_ll.h
rename to include/mach/omap/debug_ll.h
index 25ddd485be..b0a3b0abde 100644
--- a/arch/arm/mach-omap/include/mach/debug_ll.h
+++ b/include/mach/omap/debug_ll.h
@@ -18,9 +18,9 @@
 #define   __MACH_DEBUG_LL_H__
 
 #include <io.h>
-#include <mach/omap3-silicon.h>
-#include <mach/omap4-silicon.h>
-#include <mach/am33xx-silicon.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/am33xx-silicon.h>
 
 #define LSR_THRE	0x20	/* Xmit holding register empty */
 #define LCR_BKSE	0x80	/* Bank select enable */
diff --git a/arch/arm/mach-omap/include/mach/devices.h b/include/mach/omap/devices.h
similarity index 92%
rename from arch/arm/mach-omap/include/mach/devices.h
rename to include/mach/omap/devices.h
index 0549dbb2f1..ef2e186e14 100644
--- a/arch/arm/mach-omap/include/mach/devices.h
+++ b/include/mach/omap/devices.h
@@ -3,7 +3,7 @@
 #ifndef __MACH_OMAP_DEVICES_H
 #define __MACH_OMAP_DEVICES_H
 
-#include <mach/omap_hsmmc.h>
+#include <mach/omap/omap_hsmmc.h>
 #include <video/omap-fb.h>
 
 void omap_add_ram0(resource_size_t size);
diff --git a/arch/arm/mach-omap/include/mach/ehci.h b/include/mach/omap/ehci.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/ehci.h
rename to include/mach/omap/ehci.h
diff --git a/arch/arm/mach-omap/include/mach/emac_defs.h b/include/mach/omap/emac_defs.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/emac_defs.h
rename to include/mach/omap/emac_defs.h
diff --git a/arch/arm/mach-omap/include/mach/emif4.h b/include/mach/omap/emif4.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/emif4.h
rename to include/mach/omap/emif4.h
diff --git a/arch/arm/mach-omap/include/mach/generic.h b/include/mach/omap/generic.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/generic.h
rename to include/mach/omap/generic.h
diff --git a/arch/arm/mach-omap/include/mach/gpmc.h b/include/mach/omap/gpmc.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/gpmc.h
rename to include/mach/omap/gpmc.h
diff --git a/arch/arm/mach-omap/include/mach/gpmc_nand.h b/include/mach/omap/gpmc_nand.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/gpmc_nand.h
rename to include/mach/omap/gpmc_nand.h
diff --git a/arch/arm/mach-omap/include/mach/intc.h b/include/mach/omap/intc.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/intc.h
rename to include/mach/omap/intc.h
diff --git a/arch/arm/mach-omap/include/mach/mcspi.h b/include/mach/omap/mcspi.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/mcspi.h
rename to include/mach/omap/mcspi.h
diff --git a/arch/arm/mach-omap/include/mach/omap3-clock.h b/include/mach/omap/omap3-clock.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/omap3-clock.h
rename to include/mach/omap/omap3-clock.h
diff --git a/arch/arm/mach-omap/include/mach/omap3-devices.h b/include/mach/omap/omap3-devices.h
similarity index 94%
rename from arch/arm/mach-omap/include/mach/omap3-devices.h
rename to include/mach/omap/omap3-devices.h
index 16ef2184db..6203de883a 100644
--- a/arch/arm/mach-omap/include/mach/omap3-devices.h
+++ b/include/mach/omap/omap3-devices.h
@@ -5,10 +5,10 @@
 
 #include <driver.h>
 #include <linux/sizes.h>
-#include <mach/omap3-silicon.h>
-#include <mach/devices.h>
-#include <mach/mcspi.h>
-#include <mach/omap_hsmmc.h>
+#include <mach/omap/omap3-silicon.h>
+#include <mach/omap/devices.h>
+#include <mach/omap/mcspi.h>
+#include <mach/omap/omap_hsmmc.h>
 
 
 static inline void omap3_add_sram0(void)
diff --git a/arch/arm/mach-omap/include/mach/omap3-generic.h b/include/mach/omap/omap3-generic.h
similarity index 90%
rename from arch/arm/mach-omap/include/mach/omap3-generic.h
rename to include/mach/omap/omap3-generic.h
index 6304ac7bb8..e70d28fb9e 100644
--- a/arch/arm/mach-omap/include/mach/omap3-generic.h
+++ b/include/mach/omap/omap3-generic.h
@@ -5,8 +5,8 @@
 
 #include <linux/sizes.h>
 #include <linux/string.h>
-#include <mach/generic.h>
-#include <mach/omap3-silicon.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/omap3-silicon.h>
 
 static inline void omap3_save_bootinfo(uint32_t *info)
 {
diff --git a/arch/arm/mach-omap/include/mach/omap3-mux.h b/include/mach/omap/omap3-mux.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/omap3-mux.h
rename to include/mach/omap/omap3-mux.h
diff --git a/arch/arm/mach-omap/include/mach/omap3-silicon.h b/include/mach/omap/omap3-silicon.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/omap3-silicon.h
rename to include/mach/omap/omap3-silicon.h
diff --git a/arch/arm/mach-omap/include/mach/omap3-smx.h b/include/mach/omap/omap3-smx.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/omap3-smx.h
rename to include/mach/omap/omap3-smx.h
diff --git a/arch/arm/mach-omap/include/mach/omap4-clock.h b/include/mach/omap/omap4-clock.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/omap4-clock.h
rename to include/mach/omap/omap4-clock.h
diff --git a/arch/arm/mach-omap/include/mach/omap4-devices.h b/include/mach/omap/omap4-devices.h
similarity index 94%
rename from arch/arm/mach-omap/include/mach/omap4-devices.h
rename to include/mach/omap/omap4-devices.h
index 530132998c..de73062bc5 100644
--- a/arch/arm/mach-omap/include/mach/omap4-devices.h
+++ b/include/mach/omap/omap4-devices.h
@@ -5,10 +5,10 @@
 
 #include <driver.h>
 #include <linux/sizes.h>
-#include <mach/devices.h>
-#include <mach/omap4-silicon.h>
-#include <mach/mcspi.h>
-#include <mach/omap_hsmmc.h>
+#include <mach/omap/devices.h>
+#include <mach/omap/omap4-silicon.h>
+#include <mach/omap/mcspi.h>
+#include <mach/omap/omap_hsmmc.h>
 
 static inline void omap44xx_add_sram0(void)
 {
diff --git a/arch/arm/mach-omap/include/mach/omap4-generic.h b/include/mach/omap/omap4-generic.h
similarity index 88%
rename from arch/arm/mach-omap/include/mach/omap4-generic.h
rename to include/mach/omap/omap4-generic.h
index b6a72cfc55..38fa79a1f8 100644
--- a/arch/arm/mach-omap/include/mach/omap4-generic.h
+++ b/include/mach/omap/omap4-generic.h
@@ -4,8 +4,8 @@
 #define __MACH_OMAP4_GENERIC_H
 
 #include <linux/sizes.h>
-#include <mach/generic.h>
-#include <mach/omap4-silicon.h>
+#include <mach/omap/generic.h>
+#include <mach/omap/omap4-silicon.h>
 
 static inline void omap4_save_bootinfo(uint32_t *info)
 {
diff --git a/arch/arm/mach-omap/include/mach/omap4-mux.h b/include/mach/omap/omap4-mux.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/omap4-mux.h
rename to include/mach/omap/omap4-mux.h
diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/include/mach/omap/omap4-silicon.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/omap4-silicon.h
rename to include/mach/omap/omap4-silicon.h
diff --git a/arch/arm/mach-omap/include/mach/omap4_rom_usb.h b/include/mach/omap/omap4_rom_usb.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/omap4_rom_usb.h
rename to include/mach/omap/omap4_rom_usb.h
diff --git a/arch/arm/mach-omap/include/mach/omap4_twl6030_mmc.h b/include/mach/omap/omap4_twl6030_mmc.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/omap4_twl6030_mmc.h
rename to include/mach/omap/omap4_twl6030_mmc.h
diff --git a/arch/arm/mach-omap/include/mach/omap_hsmmc.h b/include/mach/omap/omap_hsmmc.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/omap_hsmmc.h
rename to include/mach/omap/omap_hsmmc.h
diff --git a/arch/arm/mach-omap/include/mach/sdrc.h b/include/mach/omap/sdrc.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/sdrc.h
rename to include/mach/omap/sdrc.h
diff --git a/arch/arm/mach-omap/include/mach/sys_info.h b/include/mach/omap/sys_info.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/sys_info.h
rename to include/mach/omap/sys_info.h
diff --git a/arch/arm/mach-omap/include/mach/syslib.h b/include/mach/omap/syslib.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/syslib.h
rename to include/mach/omap/syslib.h
diff --git a/arch/arm/mach-omap/include/mach/timers.h b/include/mach/omap/timers.h
similarity index 100%
rename from arch/arm/mach-omap/include/mach/timers.h
rename to include/mach/omap/timers.h
-- 
2.30.2



