Delivery-date: Tue, 12 Dec 2023 13:11:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rD1c7-001Fl8-1E
	for lore@lore.pengutronix.de;
	Tue, 12 Dec 2023 13:11:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rD1c4-0001rn-Rt
	for lore@pengutronix.de; Tue, 12 Dec 2023 13:11:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V3BILcYnCVZjpUhbb31wkRD+/RQy59FL/dkid2Huah0=; b=kyOUrkX3vOo2xjXoXXFwFWHGJU
	b9adbS2vyTzQboXpIoSS4XYtgGyKb06fWlp5L5DghH3kO/aPPBxZqfKa2BCPD/EG31MXIJ617liej
	K9ENrmnQyWQUbTfUVKRAK99AHLpU0NLirvBPO14H5q0SX6b7t73PLwABS8LyBq/hU4mEdj4mIgco8
	3XeetUvrX1hvW9AF/HjMkRGldfA2vZOwuNVe/zwtne9LeawB+0SLEPP7Tli5eHdeEZFGk3etKFfDa
	n33rBEkwzjsKq21Ug8BWAYLwN4zMdQpW/FcHxK91KG5arQj/VhPX0aUrVpGNhgXHOWJ4BUrJgz4JA
	nbBtlQSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD1aN-00BcJM-05;
	Tue, 12 Dec 2023 12:10:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rD1aF-00BcIE-11
	for barebox@lists.infradead.org;
	Tue, 12 Dec 2023 12:10:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rD1aC-0001YS-K0; Tue, 12 Dec 2023 13:09:52 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rD1aC-00FKot-7c; Tue, 12 Dec 2023 13:09:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rD1aC-00EWoz-0N;
	Tue, 12 Dec 2023 13:09:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 12 Dec 2023 13:09:49 +0100
Message-Id: <20231212120949.3459707-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231212120949.3459707-1-a.fatoum@pengutronix.de>
References: <20231212120949.3459707-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_040955_825599_350C67A5 
X-CRM114-Status: GOOD (  13.66  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: mach-types: don't generate header at buildtime
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have removed 4642 machine types unused by barebox, we are
just left with 65 boards.

Let's just include the generated header in the source tree and stop
generating the header anew at build time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Makefile                             |   8 +-
 arch/arm/boards/animeo_ip/init.c              |   2 +-
 arch/arm/boards/archosg9/board.c              |   2 +-
 arch/arm/boards/at91rm9200ek/init.c           |   2 +-
 arch/arm/boards/at91sam9260ek/init.c          |   2 +-
 arch/arm/boards/at91sam9261ek/init.c          |   2 +-
 arch/arm/boards/at91sam9263ek/init.c          |   2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c       |   2 +-
 arch/arm/boards/at91sam9m10ihd/init.c         |   2 +-
 arch/arm/boards/at91sam9n12ek/init.c          |   2 +-
 arch/arm/boards/at91sam9x5ek/init.c           |   2 +-
 arch/arm/boards/avnet-zedboard/board.c        |   2 +-
 arch/arm/boards/beagle/board.c                |   2 +-
 arch/arm/boards/beagle/lowlevel.c             |   2 +-
 arch/arm/boards/beaglebone/board.c            |   2 +-
 arch/arm/boards/ccxmx53/board.c               |   2 +-
 .../arm/boards/chumby_falconwing/falconwing.c |   2 +-
 arch/arm/boards/chumby_falconwing/lowlevel.c  |   2 +-
 .../boards/crystalfontz-cfa10036/cfa10036.c   |   2 +-
 .../boards/crystalfontz-cfa10036/lowlevel.c   |   2 +-
 arch/arm/boards/datamodul-edm-qmx6/board.c    |   2 +-
 arch/arm/boards/dfi-fs700-m60/board.c         |   2 +-
 arch/arm/boards/dss11/init.c                  |   2 +-
 arch/arm/boards/edb93xx/edb93xx.c             |   2 +-
 arch/arm/boards/element14-warp7/board.c       |   2 +-
 arch/arm/boards/embedsky-e9/board.c           |   2 +-
 arch/arm/boards/freescale-mx23-evk/lowlevel.c |   2 +-
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c |   2 +-
 .../arm/boards/freescale-mx51-babbage/board.c |   2 +-
 arch/arm/boards/freescale-mx53-qsb/board.c    |   2 +-
 arch/arm/boards/freescale-mx53-vmx53/board.c  |   2 +-
 .../boards/freescale-mx6-sabrelite/board.c    |   2 +-
 arch/arm/boards/freescale-mx6-sabresd/board.c |   2 +-
 .../boards/freescale-mx6sx-sabresdb/board.c   |   2 +-
 arch/arm/boards/haba-knx/init.c               |   2 +-
 .../boards/imx233-olinuxino/imx23-olinuxino.c |   2 +-
 arch/arm/boards/imx233-olinuxino/lowlevel.c   |   2 +-
 arch/arm/boards/karo-tx25/board.c             |   2 +-
 arch/arm/boards/karo-tx28/lowlevel.c          |   2 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c         |   2 +-
 arch/arm/boards/karo-tx28/tx28.c              |   2 +-
 arch/arm/boards/karo-tx53/board.c             |   2 +-
 arch/arm/boards/kindle-mx50/board.c           |   2 +-
 arch/arm/boards/lubbock/board.c               |   2 +-
 arch/arm/boards/mainstone/board.c             |   2 +-
 arch/arm/boards/mioa701/board.c               |   2 +-
 arch/arm/boards/netgear-rn2120/board.c        |   2 +-
 arch/arm/boards/nhk8815/setup.c               |   2 +-
 arch/arm/boards/omap3evm/board.c              |   2 +-
 arch/arm/boards/panda/board.c                 |   2 +-
 arch/arm/boards/phytec-phycard-imx27/pca100.c |   2 +-
 .../boards/phytec-phycard-omap3/pca-a-l1.c    |   2 +-
 .../boards/phytec-phycard-omap4/pca-a-xl2.c   |   2 +-
 arch/arm/boards/phytec-phycore-imx7/board.c   |   2 +-
 .../boards/phytec-phycore-omap4460/board.c    |   2 +-
 arch/arm/boards/phytec-phycore-pxa270/board.c |   2 +-
 arch/arm/boards/phytec-som-am335x/board.c     |   2 +-
 arch/arm/boards/pm9261/init.c                 |   2 +-
 arch/arm/boards/pm9263/init.c                 |   2 +-
 arch/arm/boards/pm9g45/init.c                 |   2 +-
 arch/arm/boards/qil-a926x/init.c              |   2 +-
 arch/arm/boards/raspberry-pi/rpi-common.c     |   2 +-
 arch/arm/boards/sama5d3xek/init.c             |   2 +-
 arch/arm/boards/scb9328/scb9328.c             |   2 +-
 arch/arm/boards/stm32mp13xx-dk/board.c        |   3 +
 arch/arm/boards/tny-a926x/init.c              |   2 +-
 arch/arm/boards/tqma53/board.c                |   2 +-
 arch/arm/boards/tqma6x/board.c                |   2 +-
 arch/arm/boards/udoo/board.c                  |   2 +-
 arch/arm/boards/usb-a926x/init.c              |   2 +-
 arch/arm/boards/variscite-mx6/board.c         |   2 +-
 arch/arm/boards/versatile/versatilepb.c       |   2 +-
 arch/arm/boards/vexpress/init.c               |   2 +-
 arch/arm/boards/vscom-baltos/board.c          |   2 +-
 arch/arm/boards/zylonite/board.c              |   2 +-
 arch/arm/include/asm/mach-types.h             | 868 ++++++++++++++++++
 arch/arm/mach-nomadik/8815.c                  |   2 +-
 arch/arm/tools/Makefile                       |  12 -
 arch/arm/tools/gen-mach-types                 |  74 --
 arch/arm/tools/mach-types                     |  83 --
 drivers/net/at91_ether.c                      |   2 +-
 81 files changed, 947 insertions(+), 251 deletions(-)
 create mode 100644 arch/arm/include/asm/mach-types.h
 delete mode 100644 arch/arm/tools/Makefile
 delete mode 100644 arch/arm/tools/gen-mach-types
 delete mode 100644 arch/arm/tools/mach-types

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 17c9b4068a7d..ecc74838f6c9 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -175,12 +175,6 @@ dts := arch/arm/dts
 
 KBUILD_IMAGE ?= $(KBUILD_BINARY)
 
-archprepare: maketools
-maketools:
-	$(Q)$(MAKE) $(build)=arch/arm/tools include/generated/mach-types.h
-
-PHONY += maketools
-
 ifneq ($(machine-y),)
 MACH := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 else
@@ -207,6 +201,6 @@ endif
 
 common- += $(patsubst %,arch/arm/boards/%/,$(board-))
 
-CLEAN_FILES += include/generated/mach-types.h barebox-flash-image
+CLEAN_FILES += barebox-flash-image
 CLEAN_FILES += arch/arm/lib64/barebox.lds
 CLEAN_FILES += arch/arm/lib32/barebox.lds
diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index d8cb0531b160..452e005046ee 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -9,7 +9,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
index 547d21d6cabd..fbf05a4408c1 100644
--- a/arch/arm/boards/archosg9/board.c
+++ b/arch/arm/boards/archosg9/board.c
@@ -4,7 +4,7 @@
 #include <clock.h>
 #include <init.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/omap/devices.h>
 #include <mach/omap/omap4-silicon.h>
 #include <mach/omap/omap4-devices.h>
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 1db1c0be467a..49a227805a6e 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -6,7 +6,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <gpio.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 7258dc22559c..eab364988392 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -6,7 +6,7 @@
 #include <envfs.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 7a620c0ecd52..da305fe9ed41 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -7,7 +7,7 @@
 #include <envfs.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index e6e09f739f06..6b618e9d006a 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -8,7 +8,7 @@
 #include <envfs.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index f820213cddf0..821228c2e13a 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -10,7 +10,7 @@
 #include <envfs.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index 6800e669f96e..763dffb6ce24 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -10,7 +10,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index b148e18912a1..4503e96af99a 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -6,7 +6,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 48bbebae8cc0..c3d0f2ce8999 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -6,7 +6,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/avnet-zedboard/board.c b/arch/arm/boards/avnet-zedboard/board.c
index 2a6b1ab701f8..15332189ca09 100644
--- a/arch/arm/boards/avnet-zedboard/board.c
+++ b/arch/arm/boards/avnet-zedboard/board.c
@@ -4,7 +4,7 @@
 #include <asm/armlinux.h>
 #include <common.h>
 #include <environment.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <init.h>
 #include <mach/zynq/zynq7000-regs.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index c8788f81282b..f9d7f742889d 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -11,7 +11,7 @@
 #include <filetype.h>
 #include <envfs.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/omap/gpmc.h>
 #include <mach/omap/gpmc_nand.h>
 #include <mach/omap/ehci.h>
diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index e53086cef048..e4610722f6c8 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -15,7 +15,7 @@
 #include <mach/omap/sdrc.h>
 #include <mach/omap/syslib.h>
 #include <mach/omap/sys_info.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 
 /**
  * @brief Do the pin muxing required for Board operation.
diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index f42ff368b48c..43e2d81f3813 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -17,7 +17,7 @@
 #include <net.h>
 #include <bootsource.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/omap/am33xx-silicon.h>
 #include <mach/omap/sys_info.h>
 #include <mach/omap/syslib.h>
diff --git a/arch/arm/boards/ccxmx53/board.c b/arch/arm/boards/ccxmx53/board.c
index 06fc3d715f2d..26654193ad95 100644
--- a/arch/arm/boards/ccxmx53/board.c
+++ b/arch/arm/boards/ccxmx53/board.c
@@ -9,7 +9,7 @@
 #include <i2c/i2c.h>
 #include <gpio.h>
 
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/imx/imx5.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/imx53-regs.h>
diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 840fd22ac14a..922159045540 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -14,7 +14,7 @@
 #include <asm/barebox-arm.h>
 #include <io.h>
 #include <asm/mmu.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/mxs/imx-regs.h>
 #include <mach/mxs/mci.h>
 #include <mach/mxs/fb.h>
diff --git a/arch/arm/boards/chumby_falconwing/lowlevel.c b/arch/arm/boards/chumby_falconwing/lowlevel.c
index f68b17bd8aab..fdda6ba5f291 100644
--- a/arch/arm/boards/chumby_falconwing/lowlevel.c
+++ b/arch/arm/boards/chumby_falconwing/lowlevel.c
@@ -5,7 +5,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/mxs/imx23-regs.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 
 static noinline void continue_imx_entry(size_t size)
 {
diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index c653b2b0e9e1..dd6d62b1653c 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -29,7 +29,7 @@
 
 #include <mach/mxs/fb.h>
 
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 
 #include "hwdetect.h"
 
diff --git a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
index 44be83c823f7..447ef0dc666d 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
@@ -5,7 +5,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/mxs/imx28-regs.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 
 static noinline void continue_imx_entry(size_t size)
 {
diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
index 3ef28ac2da30..8680485de233 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/board.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 // SPDX-FileCopyrightText: 2012 Steffen Trumtrar, Pengutronix
 
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <environment.h>
 #include <bootsource.h>
 #include <common.h>
diff --git a/arch/arm/boards/dfi-fs700-m60/board.c b/arch/arm/boards/dfi-fs700-m60/board.c
index 6d8494d0863f..a0cdc5b93a52 100644
--- a/arch/arm/boards/dfi-fs700-m60/board.c
+++ b/arch/arm/boards/dfi-fs700-m60/board.c
@@ -3,7 +3,7 @@
 
 #define pr_fmt(fmt)  "dfi-fs700-m60: " fmt
 
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <environment.h>
 #include <bootsource.h>
 #include <globalvar.h>
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index 7fd566e4be7f..41c2b109721e 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -7,7 +7,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <asm/io.h>
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 8f7b5ede123f..a3fb14822a35 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -9,7 +9,7 @@
 #include <asm/armlinux.h>
 #include <io.h>
 #include <malloc.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/ep93xx/ep93xx-regs.h>
 #include <platform_data/eth-ep93xx.h>
 #include "edb93xx.h"
diff --git a/arch/arm/boards/element14-warp7/board.c b/arch/arm/boards/element14-warp7/board.c
index ec967d1c4cf3..0013421df0b0 100644
--- a/arch/arm/boards/element14-warp7/board.c
+++ b/arch/arm/boards/element14-warp7/board.c
@@ -6,7 +6,7 @@
 #include <environment.h>
 #include <mach/imx/bbu.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/imx/generic.h>
 #include <linux/sizes.h>
 
diff --git a/arch/arm/boards/embedsky-e9/board.c b/arch/arm/boards/embedsky-e9/board.c
index f7a3f1bdb823..afc9e3d27ea6 100644
--- a/arch/arm/boards/embedsky-e9/board.c
+++ b/arch/arm/boards/embedsky-e9/board.c
@@ -15,7 +15,7 @@
 #include <environment.h>
 #include <mach/imx/imx6-regs.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <linux/phy.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/freescale-mx23-evk/lowlevel.c b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
index b0c8518fbdfd..195ade3a7fed 100644
--- a/arch/arm/boards/freescale-mx23-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
@@ -2,7 +2,7 @@
 
 #include <common.h>
 #include <linux/sizes.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/mxs/imx23-regs.h>
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index d831bffbd9d8..d4de99eafb38 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -9,7 +9,7 @@
 #include <mci.h>
 #include <linux/err.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <asm/barebox-arm.h>
 #include <mach/mxs/imx-regs.h>
 #include <mach/mxs/mci.h>
diff --git a/arch/arm/boards/freescale-mx51-babbage/board.c b/arch/arm/boards/freescale-mx51-babbage/board.c
index be313c2b69d4..76bdc78b0272 100644
--- a/arch/arm/boards/freescale-mx51-babbage/board.c
+++ b/arch/arm/boards/freescale-mx51-babbage/board.c
@@ -9,7 +9,7 @@
 #include <mach/imx/imx51-regs.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <of.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/freescale-mx53-qsb/board.c b/arch/arm/boards/freescale-mx53-qsb/board.c
index 92dd164d3c6f..a8558eafce31 100644
--- a/arch/arm/boards/freescale-mx53-qsb/board.c
+++ b/arch/arm/boards/freescale-mx53-qsb/board.c
@@ -17,7 +17,7 @@
 #include <asm/armlinux.h>
 #include <asm/mmu.h>
 
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 
 #include <mach/imx/imx53-regs.h>
 #include <mach/imx/revision.h>
diff --git a/arch/arm/boards/freescale-mx53-vmx53/board.c b/arch/arm/boards/freescale-mx53-vmx53/board.c
index 785776b5cc96..496ce2c11235 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/board.c
+++ b/arch/arm/boards/freescale-mx53-vmx53/board.c
@@ -10,7 +10,7 @@
 #include <init.h>
 #include <linux/sizes.h>
 
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/imx/imx5.h>
 #include <asm/armlinux.h>
 #include <mach/imx/bbu.h>
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 1595bf1c86a7..0f5306cde8aa 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -12,7 +12,7 @@
 #include <gpio.h>
 #include <mach/imx/bbu.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <of.h>
 #include <deep-probe.h>
 #include <linux/phy.h>
diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
index 97300ebbe0ac..06e356a40e8f 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/board.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
@@ -12,7 +12,7 @@
 #include <environment.h>
 #include <mach/imx/imx6-regs.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <linux/phy.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/board.c b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
index 9ae1ab666101..474998126559 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
@@ -10,7 +10,7 @@
 #include <init.h>
 #include <io.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <i2c/i2c.h>
 
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/haba-knx/init.c b/arch/arm/boards/haba-knx/init.c
index e04d8df95594..d86e84e71a3b 100644
--- a/arch/arm/boards/haba-knx/init.c
+++ b/arch/arm/boards/haba-knx/init.c
@@ -7,7 +7,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index 3a7e5354fcbf..cf92e2bb6388 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -20,7 +20,7 @@
 #include <asm/barebox-arm.h>
 #include <linux/usb/ehci.h>
 #include <mach/mxs/usb.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/mxs/imx-regs.h>
 #include <mach/mxs/mci.h>
 #include <mach/mxs/iomux.h>
diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
index f78daa1d8cde..91c1ba3dbafc 100644
--- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
+++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
@@ -9,7 +9,7 @@
 #include <io.h>
 #include <debug_ll.h>
 #include <mach/mxs/iomux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 
 static noinline void continue_imx_entry(size_t size)
 {
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 0ed2a6868f52..f58767a7a3b2 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -14,7 +14,7 @@
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <io.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/imx/imx-nand.h>
 #include <mach/imx/iomux-mx25.h>
 #include <mach/imx/generic.h>
diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
index 668355f9e699..3be5f521e112 100644
--- a/arch/arm/boards/karo-tx28/lowlevel.c
+++ b/arch/arm/boards/karo-tx28/lowlevel.c
@@ -13,7 +13,7 @@
 #include <debug_ll.h>
 #include <mach/mxs/iomux.h>
 #include <stmp-device.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 
 static noinline void continue_imx_entry(size_t size)
 {
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index 32dcd31ccdfc..d1fd526c0022 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -19,7 +19,7 @@
 #include <mach/mxs/fb.h>
 #include <mach/mxs/ocotp.h>
 #include <mach/mxs/iomux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 
 #include "tx28.h"
 
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index 009ba75961bb..ef3c42b5f6bc 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -9,7 +9,7 @@
 #include <asm/armlinux.h>
 #include <asm/barebox-arm.h>
 #include <io.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/mxs/imx-regs.h>
 #include <mach/mxs/devices.h>
 #include <mach/mxs/iomux.h>
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index 57e891acd3f0..f5450def4cd6 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -14,7 +14,7 @@
 #include <gpio.h>
 #include <mci.h>
 
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 
 #include <mach/imx/imx53-regs.h>
 #include <mach/imx/iomux-mx53.h>
diff --git a/arch/arm/boards/kindle-mx50/board.c b/arch/arm/boards/kindle-mx50/board.c
index 4abd77727cd4..a5c81ac8e7be 100644
--- a/arch/arm/boards/kindle-mx50/board.c
+++ b/arch/arm/boards/kindle-mx50/board.c
@@ -13,7 +13,7 @@
 #include <libfile.h>
 #include <globalvar.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <linux/sizes.h>
 #include <linux/usb/fsl_usb2.h>
 #include <mach/imx/generic.h>
diff --git a/arch/arm/boards/lubbock/board.c b/arch/arm/boards/lubbock/board.c
index dfbee7ab8ba7..af046e110ae3 100644
--- a/arch/arm/boards/lubbock/board.c
+++ b/arch/arm/boards/lubbock/board.c
@@ -22,7 +22,7 @@
 #include <asm/io.h>
 #include <asm/mmu.h>
 
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 
 #define ECOR            0x8000
 #define ECOR_RESET      0x80
diff --git a/arch/arm/boards/mainstone/board.c b/arch/arm/boards/mainstone/board.c
index fb39965c4e45..979a4f360913 100644
--- a/arch/arm/boards/mainstone/board.c
+++ b/arch/arm/boards/mainstone/board.c
@@ -22,7 +22,7 @@
 #include <asm/io.h>
 #include <asm/mmu.h>
 
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 
 static struct smc91c111_pdata smsc91x_pdata = {
 	.word_aligned_short_writes = true,
diff --git a/arch/arm/boards/mioa701/board.c b/arch/arm/boards/mioa701/board.c
index 9f28f7b94b19..685c78611bb0 100644
--- a/arch/arm/boards/mioa701/board.c
+++ b/arch/arm/boards/mioa701/board.c
@@ -18,7 +18,7 @@
 
 #include <asm/armlinux.h>
 #include <asm/io.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <asm/mmu.h>
 
 #include "mioa701.h"
diff --git a/arch/arm/boards/netgear-rn2120/board.c b/arch/arm/boards/netgear-rn2120/board.c
index 8b44b9225796..8689202ba66f 100644
--- a/arch/arm/boards/netgear-rn2120/board.c
+++ b/arch/arm/boards/netgear-rn2120/board.c
@@ -7,7 +7,7 @@
 #include <linux/printk.h>
 #include <linux/kernel.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 
 static int rn2120_init(void)
 {
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index 42165c06c060..c7a2afdbfe32 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -7,7 +7,7 @@
 #include <linux/mtd/nand.h>
 #include <nand.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <io.h>
 #include <envfs.h>
 
diff --git a/arch/arm/boards/omap3evm/board.c b/arch/arm/boards/omap3evm/board.c
index 4099c97d31b6..37dbc0044ecb 100644
--- a/arch/arm/boards/omap3evm/board.c
+++ b/arch/arm/boards/omap3evm/board.c
@@ -36,7 +36,7 @@
 #include <mach/omap/omap3-mux.h>
 #include <mach/omap/gpmc.h>
 #include <errno.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/omap/omap3-devices.h>
 
 /**
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index f182b149876d..55836d23314b 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -7,7 +7,7 @@
 #include <io.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/omap/omap4-silicon.h>
 #include <mach/omap/omap4-devices.h>
 #include <mach/omap/sdrc.h>
diff --git a/arch/arm/boards/phytec-phycard-imx27/pca100.c b/arch/arm/boards/phytec-phycard-imx27/pca100.c
index 924598d9c776..2d0ae7cf8029 100644
--- a/arch/arm/boards/phytec-phycard-imx27/pca100.c
+++ b/arch/arm/boards/phytec-phycard-imx27/pca100.c
@@ -10,7 +10,7 @@
 #include <linux/sizes.h>
 #include <asm/armlinux.h>
 #include <asm/sections.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <nand.h>
diff --git a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
index ef22d807a8bf..d878dba0823a 100644
--- a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
+++ b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
@@ -40,7 +40,7 @@
 #include <linux/sizes.h>
 #include <asm/armlinux.h>
 #include <asm/io.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <linux/err.h>
 #include <mach/omap/gpmc.h>
 #include <mach/omap/gpmc_nand.h>
diff --git a/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c b/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
index da2a21d616af..f18f11c33108 100644
--- a/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
+++ b/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
@@ -8,7 +8,7 @@
 #include <io.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/omap/omap4-silicon.h>
 #include <mach/omap/sdrc.h>
 #include <mach/omap/sys_info.h>
diff --git a/arch/arm/boards/phytec-phycore-imx7/board.c b/arch/arm/boards/phytec-phycore-imx7/board.c
index f400e07e862f..4d8b938f174b 100644
--- a/arch/arm/boards/phytec-phycore-imx7/board.c
+++ b/arch/arm/boards/phytec-phycore-imx7/board.c
@@ -6,7 +6,7 @@
 #include <environment.h>
 #include <mach/imx/bbu.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/imx/generic.h>
 #include <linux/sizes.h>
 #include <asm/psci.h>
diff --git a/arch/arm/boards/phytec-phycore-omap4460/board.c b/arch/arm/boards/phytec-phycore-omap4460/board.c
index 0b1ffe77a661..2a176f156e07 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/board.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/board.c
@@ -9,7 +9,7 @@
 #include <io.h>
 #include <envfs.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/omap/devices.h>
 #include <mach/omap/omap4-silicon.h>
 #include <mach/omap/omap4-devices.h>
diff --git a/arch/arm/boards/phytec-phycore-pxa270/board.c b/arch/arm/boards/phytec-phycore-pxa270/board.c
index 0862ef3a403b..0283659a4e60 100644
--- a/arch/arm/boards/phytec-phycore-pxa270/board.c
+++ b/arch/arm/boards/phytec-phycore-pxa270/board.c
@@ -17,7 +17,7 @@
 
 #include <asm/armlinux.h>
 #include <asm/io.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <asm/mmu.h>
 
 #define PCM990_CTRL_PHYS	(void *)PXA_CS1_PHYS
diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/phytec-som-am335x/board.c
index 5e726b56fcdc..f3caa5d50aa5 100644
--- a/arch/arm/boards/phytec-som-am335x/board.c
+++ b/arch/arm/boards/phytec-som-am335x/board.c
@@ -18,7 +18,7 @@
 #include <envfs.h>
 #include <state.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <linux/phy.h>
 #include <linux/micrel_phy.h>
 #include <mach/omap/am33xx-generic.h>
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index d6e3df924773..e87c8ad27b84 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -8,7 +8,7 @@
 #include <gpio.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 37432afddf68..026a8bfe8dd8 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -7,7 +7,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <gpio.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 693ad457c947..ee60cf8f00a3 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -7,7 +7,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <gpio.h>
diff --git a/arch/arm/boards/qil-a926x/init.c b/arch/arm/boards/qil-a926x/init.c
index 819e48e17ba9..988657b3547b 100644
--- a/arch/arm/boards/qil-a926x/init.c
+++ b/arch/arm/boards/qil-a926x/init.c
@@ -10,7 +10,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 713fad78c99c..f3a28e87c6f0 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -19,7 +19,7 @@
 #include <led.h>
 #include <asm/armlinux.h>
 #include <asm/barebox-arm.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <linux/sizes.h>
 #include <globalvar.h>
 #include <asm/system_info.h>
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index 13e77c16ef85..b75856198efc 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -6,7 +6,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 2f5e73e662b7..4c57f47996c7 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -5,7 +5,7 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/imx/imx1-regs.h>
 #include <asm/armlinux.h>
 #include <mach/imx/weim.h>
diff --git a/arch/arm/boards/stm32mp13xx-dk/board.c b/arch/arm/boards/stm32mp13xx-dk/board.c
index 24104328f0db..a13d934a27d2 100644
--- a/arch/arm/boards/stm32mp13xx-dk/board.c
+++ b/arch/arm/boards/stm32mp13xx-dk/board.c
@@ -4,9 +4,12 @@
 #include <init.h>
 #include <mach/stm32mp/bbu.h>
 #include <deep-probe.h>
+#include <asm/mach-types.h>
 
 static int stm32mp13xx_dk_probe(struct device *dev)
 {
+	if (machine_is_pcaaxs1())
+		return 1;
 	stm32mp_bbu_mmc_fip_register("sd", "/dev/mmc0", BBU_HANDLER_FLAG_DEFAULT);
 	return 0;
 }
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index d9d97e1760b9..0a448aa82286 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -6,7 +6,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 54e661c39581..7d81594df808 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -7,7 +7,7 @@
 #include <init.h>
 
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/imx/bbu.h>
 
 static int tqma53_devices_init(void)
diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index d8d6204f0a0a..1c1ccdf888ea 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 // SPDX-FileCopyrightText: 2013 Sascha Hauer, Pengutronix
 
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <environment.h>
 #include <bootsource.h>
 #include <common.h>
diff --git a/arch/arm/boards/udoo/board.c b/arch/arm/boards/udoo/board.c
index 2705b48e4687..b7ab90842790 100644
--- a/arch/arm/boards/udoo/board.c
+++ b/arch/arm/boards/udoo/board.c
@@ -11,7 +11,7 @@
 #include <gpio.h>
 #include <mach/imx/bbu.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <linux/phy.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index f91a6b1454b1..1297b4fe7f6f 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -6,7 +6,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/variscite-mx6/board.c b/arch/arm/boards/variscite-mx6/board.c
index a0c1dde84e16..53a453dfa08b 100644
--- a/arch/arm/boards/variscite-mx6/board.c
+++ b/arch/arm/boards/variscite-mx6/board.c
@@ -16,7 +16,7 @@
 
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
 #include <mach/imx/generic.h>
diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index 3eae1e4f78e3..610aa909829a 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -13,7 +13,7 @@
 #include <init.h>
 #include <asm/armlinux.h>
 #include <asm/system_info.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/versatile/platform.h>
 #include <environment.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
index b3d6ebd72501..f2a1307e451c 100644
--- a/arch/arm/boards/vexpress/init.c
+++ b/arch/arm/boards/vexpress/init.c
@@ -8,7 +8,7 @@
 #include <init.h>
 #include <asm/armlinux.h>
 #include <asm/system_info.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/vexpress/devices.h>
 #include <environment.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/vscom-baltos/board.c b/arch/arm/boards/vscom-baltos/board.c
index 20f990c4048d..85cf241574ef 100644
--- a/arch/arm/boards/vscom-baltos/board.c
+++ b/arch/arm/boards/vscom-baltos/board.c
@@ -17,7 +17,7 @@
 #include <net.h>
 #include <bootsource.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <mach/omap/am33xx-generic.h>
 #include <mach/omap/am33xx-silicon.h>
 #include <mach/omap/sys_info.h>
diff --git a/arch/arm/boards/zylonite/board.c b/arch/arm/boards/zylonite/board.c
index 99719b738cbd..04cb34754cfa 100644
--- a/arch/arm/boards/zylonite/board.c
+++ b/arch/arm/boards/zylonite/board.c
@@ -23,7 +23,7 @@
 #include <asm/armlinux.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 
 static struct smc91c111_pdata smsc91x_pdata;
 static struct mrvl_nand_platform_data nand_pdata = {
diff --git a/arch/arm/include/asm/mach-types.h b/arch/arm/include/asm/mach-types.h
new file mode 100644
index 000000000000..f16aeb88db37
--- /dev/null
+++ b/arch/arm/include/asm/mach-types.h
@@ -0,0 +1,868 @@
+/*
+ * Machine type definitions for legacy platforms.
+ */
+
+#ifndef __ASM_ARM_MACH_TYPE_H
+#define __ASM_ARM_MACH_TYPE_H
+
+#ifndef __ASSEMBLY__
+/* The type of machine we're running on */
+extern unsigned int __machine_arch_type;
+#endif
+
+/* see arch/arm/kernel/arch.c for a description of these */
+#define MACH_TYPE_LUBBOCK              89
+#define MACH_TYPE_VERSATILE_PB         387
+#define MACH_TYPE_CSB337               399
+#define MACH_TYPE_MAINSTONE            406
+#define MACH_TYPE_NOMADIK              420
+#define MACH_TYPE_EDB9312              451
+#define MACH_TYPE_EDB9301              462
+#define MACH_TYPE_EDB9315              463
+#define MACH_TYPE_SCB9328              508
+#define MACH_TYPE_EDB9302              538
+#define MACH_TYPE_EDB9307              607
+#define MACH_TYPE_AT91RM9200EK         705
+#define MACH_TYPE_PCM027               732
+#define MACH_TYPE_EDB9315A             772
+#define MACH_TYPE_AT91SAM9261EK        848
+#define MACH_TYPE_AT91SAM9260EK        1099
+#define MACH_TYPE_EDB9302A             1127
+#define MACH_TYPE_EDB9307A             1128
+#define MACH_TYPE_PM9261               1187
+#define MACH_TYPE_AT91SAM9263EK        1202
+#define MACH_TYPE_ZYLONITE             1233
+#define MACH_TYPE_MIOA701              1257
+#define MACH_TYPE_PM9263               1475
+#define MACH_TYPE_OMAP3EVM             1535
+#define MACH_TYPE_OMAP3_BEAGLE         1546
+#define MACH_TYPE_AT91SAM9G20EK        1624
+#define MACH_TYPE_USB_A9260            1709
+#define MACH_TYPE_USB_A9263            1710
+#define MACH_TYPE_QIL_A9260            1711
+#define MACH_TYPE_PICOCOM1             1751
+#define MACH_TYPE_AT91SAM9M10G45EK     1830
+#define MACH_TYPE_USB_A9G20            1841
+#define MACH_TYPE_QIL_A9G20            1844
+#define MACH_TYPE_CHUMBY               1937
+#define MACH_TYPE_TNY_A9260            2058
+#define MACH_TYPE_TNY_A9G20            2059
+#define MACH_TYPE_MX51_BABBAGE         2125
+#define MACH_TYPE_TNY_A9263            2140
+#define MACH_TYPE_AT91SAM9G10EK        2159
+#define MACH_TYPE_TX25                 2177
+#define MACH_TYPE_MX23EVK              2629
+#define MACH_TYPE_PM9G45               2672
+#define MACH_TYPE_OMAP4_PANDA          2791
+#define MACH_TYPE_PCAAL1               2843
+#define MACH_TYPE_ARMADA_XP_DB         3036
+#define MACH_TYPE_TX28                 3043
+#define MACH_TYPE_BCM2708              3138
+#define MACH_TYPE_MX53_LOCO            3273
+#define MACH_TYPE_TX53                 3279
+#define MACH_TYPE_CCMX53               3346
+#define MACH_TYPE_CCWMX53              3348
+#define MACH_TYPE_VMX53                3359
+#define MACH_TYPE_PCM049               3364
+#define MACH_TYPE_DSS11                3787
+#define MACH_TYPE_BEAGLEBONE           3808
+#define MACH_TYPE_PCAAXL2              3912
+#define MACH_TYPE_MX6Q_SABRESD         3980
+#define MACH_TYPE_TQMA53               4004
+#define MACH_TYPE_IMX233_OLINUXINO     4105
+#define MACH_TYPE_CFA10036             4142
+#define MACH_TYPE_PCM051               4144
+#define MACH_TYPE_HABA_KNX_LITE        4310
+#define MACH_TYPE_VAR_SOM_MX6          4419
+#define MACH_TYPE_PCAAXS1              4526
+#define MACH_TYPE_PFLA03               4575
+
+#ifdef CONFIG_ARCH_LUBBOCK
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_LUBBOCK
+# endif
+# define machine_is_lubbock()	(machine_arch_type == MACH_TYPE_LUBBOCK)
+#else
+# define machine_is_lubbock()	(0)
+#endif
+
+#ifdef CONFIG_ARCH_VERSATILE_PB
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_VERSATILE_PB
+# endif
+# define machine_is_versatile_pb()	(machine_arch_type == MACH_TYPE_VERSATILE_PB)
+#else
+# define machine_is_versatile_pb()	(0)
+#endif
+
+#ifdef CONFIG_MACH_CSB337
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_CSB337
+# endif
+# define machine_is_csb337()	(machine_arch_type == MACH_TYPE_CSB337)
+#else
+# define machine_is_csb337()	(0)
+#endif
+
+#ifdef CONFIG_MACH_MAINSTONE
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_MAINSTONE
+# endif
+# define machine_is_mainstone()	(machine_arch_type == MACH_TYPE_MAINSTONE)
+#else
+# define machine_is_mainstone()	(0)
+#endif
+
+#ifdef CONFIG_MACH_NOMADIK
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_NOMADIK
+# endif
+# define machine_is_nomadik()	(machine_arch_type == MACH_TYPE_NOMADIK)
+#else
+# define machine_is_nomadik()	(0)
+#endif
+
+#ifdef CONFIG_MACH_EDB9312
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_EDB9312
+# endif
+# define machine_is_edb9312()	(machine_arch_type == MACH_TYPE_EDB9312)
+#else
+# define machine_is_edb9312()	(0)
+#endif
+
+#ifdef CONFIG_MACH_EDB9301
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_EDB9301
+# endif
+# define machine_is_edb9301()	(machine_arch_type == MACH_TYPE_EDB9301)
+#else
+# define machine_is_edb9301()	(0)
+#endif
+
+#ifdef CONFIG_MACH_EDB9315
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_EDB9315
+# endif
+# define machine_is_edb9315()	(machine_arch_type == MACH_TYPE_EDB9315)
+#else
+# define machine_is_edb9315()	(0)
+#endif
+
+#ifdef CONFIG_MACH_SCB9328
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_SCB9328
+# endif
+# define machine_is_scb9328()	(machine_arch_type == MACH_TYPE_SCB9328)
+#else
+# define machine_is_scb9328()	(0)
+#endif
+
+#ifdef CONFIG_MACH_EDB9302
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_EDB9302
+# endif
+# define machine_is_edb9302()	(machine_arch_type == MACH_TYPE_EDB9302)
+#else
+# define machine_is_edb9302()	(0)
+#endif
+
+#ifdef CONFIG_MACH_EDB9307
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_EDB9307
+# endif
+# define machine_is_edb9307()	(machine_arch_type == MACH_TYPE_EDB9307)
+#else
+# define machine_is_edb9307()	(0)
+#endif
+
+#ifdef CONFIG_MACH_AT91RM9200EK
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_AT91RM9200EK
+# endif
+# define machine_is_at91rm9200ek()	(machine_arch_type == MACH_TYPE_AT91RM9200EK)
+#else
+# define machine_is_at91rm9200ek()	(0)
+#endif
+
+#ifdef CONFIG_MACH_PCM027
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_PCM027
+# endif
+# define machine_is_pcm027()	(machine_arch_type == MACH_TYPE_PCM027)
+#else
+# define machine_is_pcm027()	(0)
+#endif
+
+#ifdef CONFIG_MACH_EDB9315A
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_EDB9315A
+# endif
+# define machine_is_edb9315a()	(machine_arch_type == MACH_TYPE_EDB9315A)
+#else
+# define machine_is_edb9315a()	(0)
+#endif
+
+#ifdef CONFIG_MACH_AT91SAM9261EK
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_AT91SAM9261EK
+# endif
+# define machine_is_at91sam9261ek()	(machine_arch_type == MACH_TYPE_AT91SAM9261EK)
+#else
+# define machine_is_at91sam9261ek()	(0)
+#endif
+
+#ifdef CONFIG_MACH_AT91SAM9260EK
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_AT91SAM9260EK
+# endif
+# define machine_is_at91sam9260ek()	(machine_arch_type == MACH_TYPE_AT91SAM9260EK)
+#else
+# define machine_is_at91sam9260ek()	(0)
+#endif
+
+#ifdef CONFIG_MACH_EDB9302A
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_EDB9302A
+# endif
+# define machine_is_edb9302a()	(machine_arch_type == MACH_TYPE_EDB9302A)
+#else
+# define machine_is_edb9302a()	(0)
+#endif
+
+#ifdef CONFIG_MACH_EDB9307A
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_EDB9307A
+# endif
+# define machine_is_edb9307a()	(machine_arch_type == MACH_TYPE_EDB9307A)
+#else
+# define machine_is_edb9307a()	(0)
+#endif
+
+#ifdef CONFIG_MACH_PM9261
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_PM9261
+# endif
+# define machine_is_pm9261()	(machine_arch_type == MACH_TYPE_PM9261)
+#else
+# define machine_is_pm9261()	(0)
+#endif
+
+#ifdef CONFIG_MACH_AT91SAM9263EK
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_AT91SAM9263EK
+# endif
+# define machine_is_at91sam9263ek()	(machine_arch_type == MACH_TYPE_AT91SAM9263EK)
+#else
+# define machine_is_at91sam9263ek()	(0)
+#endif
+
+#ifdef CONFIG_MACH_ZYLONITE
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_ZYLONITE
+# endif
+# define machine_is_zylonite()	(machine_arch_type == MACH_TYPE_ZYLONITE)
+#else
+# define machine_is_zylonite()	(0)
+#endif
+
+#ifdef CONFIG_MACH_MIOA701
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_MIOA701
+# endif
+# define machine_is_mioa701()	(machine_arch_type == MACH_TYPE_MIOA701)
+#else
+# define machine_is_mioa701()	(0)
+#endif
+
+#ifdef CONFIG_MACH_PM9263
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_PM9263
+# endif
+# define machine_is_pm9263()	(machine_arch_type == MACH_TYPE_PM9263)
+#else
+# define machine_is_pm9263()	(0)
+#endif
+
+#ifdef CONFIG_MACH_OMAP3EVM
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_OMAP3EVM
+# endif
+# define machine_is_omap3evm()	(machine_arch_type == MACH_TYPE_OMAP3EVM)
+#else
+# define machine_is_omap3evm()	(0)
+#endif
+
+#ifdef CONFIG_MACH_OMAP3_BEAGLE
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_OMAP3_BEAGLE
+# endif
+# define machine_is_omap3_beagle()	(machine_arch_type == MACH_TYPE_OMAP3_BEAGLE)
+#else
+# define machine_is_omap3_beagle()	(0)
+#endif
+
+#ifdef CONFIG_MACH_AT91SAM9G20EK
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_AT91SAM9G20EK
+# endif
+# define machine_is_at91sam9g20ek()	(machine_arch_type == MACH_TYPE_AT91SAM9G20EK)
+#else
+# define machine_is_at91sam9g20ek()	(0)
+#endif
+
+#ifdef CONFIG_MACH_USB_A9260
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_USB_A9260
+# endif
+# define machine_is_usb_a9260()	(machine_arch_type == MACH_TYPE_USB_A9260)
+#else
+# define machine_is_usb_a9260()	(0)
+#endif
+
+#ifdef CONFIG_MACH_USB_A9263
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_USB_A9263
+# endif
+# define machine_is_usb_a9263()	(machine_arch_type == MACH_TYPE_USB_A9263)
+#else
+# define machine_is_usb_a9263()	(0)
+#endif
+
+#ifdef CONFIG_MACH_QIL_A9260
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_QIL_A9260
+# endif
+# define machine_is_qil_a9260()	(machine_arch_type == MACH_TYPE_QIL_A9260)
+#else
+# define machine_is_qil_a9260()	(0)
+#endif
+
+#ifdef CONFIG_MACH_PICOCOM1
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_PICOCOM1
+# endif
+# define machine_is_picocom1()	(machine_arch_type == MACH_TYPE_PICOCOM1)
+#else
+# define machine_is_picocom1()	(0)
+#endif
+
+#ifdef CONFIG_MACH_AT91SAM9M10G45EK
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_AT91SAM9M10G45EK
+# endif
+# define machine_is_at91sam9m10g45ek()	(machine_arch_type == MACH_TYPE_AT91SAM9M10G45EK)
+#else
+# define machine_is_at91sam9m10g45ek()	(0)
+#endif
+
+#ifdef CONFIG_MACH_USB_A9G20
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_USB_A9G20
+# endif
+# define machine_is_usb_a9g20()	(machine_arch_type == MACH_TYPE_USB_A9G20)
+#else
+# define machine_is_usb_a9g20()	(0)
+#endif
+
+#ifdef CONFIG_MACH_QIL_A9G20
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_QIL_A9G20
+# endif
+# define machine_is_qil_a9g20()	(machine_arch_type == MACH_TYPE_QIL_A9G20)
+#else
+# define machine_is_qil_a9g20()	(0)
+#endif
+
+#ifdef CONFIG_MACH_CHUMBY
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_CHUMBY
+# endif
+# define machine_is_chumby()	(machine_arch_type == MACH_TYPE_CHUMBY)
+#else
+# define machine_is_chumby()	(0)
+#endif
+
+#ifdef CONFIG_MACH_TNY_A9260
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_TNY_A9260
+# endif
+# define machine_is_tny_a9260()	(machine_arch_type == MACH_TYPE_TNY_A9260)
+#else
+# define machine_is_tny_a9260()	(0)
+#endif
+
+#ifdef CONFIG_MACH_TNY_A9G20
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_TNY_A9G20
+# endif
+# define machine_is_tny_a9g20()	(machine_arch_type == MACH_TYPE_TNY_A9G20)
+#else
+# define machine_is_tny_a9g20()	(0)
+#endif
+
+#ifdef CONFIG_MACH_MX51_BABBAGE
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_MX51_BABBAGE
+# endif
+# define machine_is_mx51_babbage()	(machine_arch_type == MACH_TYPE_MX51_BABBAGE)
+#else
+# define machine_is_mx51_babbage()	(0)
+#endif
+
+#ifdef CONFIG_MACH_TNY_A9263
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_TNY_A9263
+# endif
+# define machine_is_tny_a9263()	(machine_arch_type == MACH_TYPE_TNY_A9263)
+#else
+# define machine_is_tny_a9263()	(0)
+#endif
+
+#ifdef CONFIG_MACH_AT91SAM9G10EK
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_AT91SAM9G10EK
+# endif
+# define machine_is_at91sam9g10ek()	(machine_arch_type == MACH_TYPE_AT91SAM9G10EK)
+#else
+# define machine_is_at91sam9g10ek()	(0)
+#endif
+
+#ifdef CONFIG_MACH_TX25
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_TX25
+# endif
+# define machine_is_tx25()	(machine_arch_type == MACH_TYPE_TX25)
+#else
+# define machine_is_tx25()	(0)
+#endif
+
+#ifdef CONFIG_MACH_MX23EVK
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_MX23EVK
+# endif
+# define machine_is_mx23evk()	(machine_arch_type == MACH_TYPE_MX23EVK)
+#else
+# define machine_is_mx23evk()	(0)
+#endif
+
+#ifdef CONFIG_MACH_PM9G45
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_PM9G45
+# endif
+# define machine_is_pm9g45()	(machine_arch_type == MACH_TYPE_PM9G45)
+#else
+# define machine_is_pm9g45()	(0)
+#endif
+
+#ifdef CONFIG_MACH_OMAP4_PANDA
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_OMAP4_PANDA
+# endif
+# define machine_is_omap4_panda()	(machine_arch_type == MACH_TYPE_OMAP4_PANDA)
+#else
+# define machine_is_omap4_panda()	(0)
+#endif
+
+#ifdef CONFIG_MACH_PCAAL1
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_PCAAL1
+# endif
+# define machine_is_pcaal1()	(machine_arch_type == MACH_TYPE_PCAAL1)
+#else
+# define machine_is_pcaal1()	(0)
+#endif
+
+#ifdef CONFIG_MACH_ARMADA_XP_DB
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_ARMADA_XP_DB
+# endif
+# define machine_is_armada_xp_db()	(machine_arch_type == MACH_TYPE_ARMADA_XP_DB)
+#else
+# define machine_is_armada_xp_db()	(0)
+#endif
+
+#ifdef CONFIG_MACH_TX28
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_TX28
+# endif
+# define machine_is_tx28()	(machine_arch_type == MACH_TYPE_TX28)
+#else
+# define machine_is_tx28()	(0)
+#endif
+
+#ifdef CONFIG_MACH_BCM2708
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_BCM2708
+# endif
+# define machine_is_bcm2708()	(machine_arch_type == MACH_TYPE_BCM2708)
+#else
+# define machine_is_bcm2708()	(0)
+#endif
+
+#ifdef CONFIG_MACH_MX53_LOCO
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_MX53_LOCO
+# endif
+# define machine_is_mx53_loco()	(machine_arch_type == MACH_TYPE_MX53_LOCO)
+#else
+# define machine_is_mx53_loco()	(0)
+#endif
+
+#ifdef CONFIG_MACH_TX53
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_TX53
+# endif
+# define machine_is_tx53()	(machine_arch_type == MACH_TYPE_TX53)
+#else
+# define machine_is_tx53()	(0)
+#endif
+
+#ifdef CONFIG_MACH_CCMX53
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_CCMX53
+# endif
+# define machine_is_ccmx53()	(machine_arch_type == MACH_TYPE_CCMX53)
+#else
+# define machine_is_ccmx53()	(0)
+#endif
+
+#ifdef CONFIG_MACH_CCWMX53
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_CCWMX53
+# endif
+# define machine_is_ccwmx53()	(machine_arch_type == MACH_TYPE_CCWMX53)
+#else
+# define machine_is_ccwmx53()	(0)
+#endif
+
+#ifdef CONFIG_MACH_VMX53
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_VMX53
+# endif
+# define machine_is_vmx53()	(machine_arch_type == MACH_TYPE_VMX53)
+#else
+# define machine_is_vmx53()	(0)
+#endif
+
+#ifdef CONFIG_MACH_PCM049
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_PCM049
+# endif
+# define machine_is_pcm049()	(machine_arch_type == MACH_TYPE_PCM049)
+#else
+# define machine_is_pcm049()	(0)
+#endif
+
+#ifdef CONFIG_MACH_DSS11
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_DSS11
+# endif
+# define machine_is_dss11()	(machine_arch_type == MACH_TYPE_DSS11)
+#else
+# define machine_is_dss11()	(0)
+#endif
+
+#ifdef CONFIG_MACH_BEAGLEBONE
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_BEAGLEBONE
+# endif
+# define machine_is_beaglebone()	(machine_arch_type == MACH_TYPE_BEAGLEBONE)
+#else
+# define machine_is_beaglebone()	(0)
+#endif
+
+#ifdef CONFIG_MACH_PCAAXL2
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_PCAAXL2
+# endif
+# define machine_is_pcaaxl2()	(machine_arch_type == MACH_TYPE_PCAAXL2)
+#else
+# define machine_is_pcaaxl2()	(0)
+#endif
+
+#ifdef CONFIG_MACH_MX6Q_SABRESD
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_MX6Q_SABRESD
+# endif
+# define machine_is_mx6q_sabresd()	(machine_arch_type == MACH_TYPE_MX6Q_SABRESD)
+#else
+# define machine_is_mx6q_sabresd()	(0)
+#endif
+
+#ifdef CONFIG_MACH_TQMA53
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_TQMA53
+# endif
+# define machine_is_tqma53()	(machine_arch_type == MACH_TYPE_TQMA53)
+#else
+# define machine_is_tqma53()	(0)
+#endif
+
+#ifdef CONFIG_MACH_IMX233_OLINUXINO
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_IMX233_OLINUXINO
+# endif
+# define machine_is_imx233_olinuxino()	(machine_arch_type == MACH_TYPE_IMX233_OLINUXINO)
+#else
+# define machine_is_imx233_olinuxino()	(0)
+#endif
+
+#ifdef CONFIG_MACH_CFA10036
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_CFA10036
+# endif
+# define machine_is_cfa10036()	(machine_arch_type == MACH_TYPE_CFA10036)
+#else
+# define machine_is_cfa10036()	(0)
+#endif
+
+#ifdef CONFIG_MACH_PCM051
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_PCM051
+# endif
+# define machine_is_pcm051()	(machine_arch_type == MACH_TYPE_PCM051)
+#else
+# define machine_is_pcm051()	(0)
+#endif
+
+#ifdef CONFIG_MACH_HABA_KNX_LITE
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_HABA_KNX_LITE
+# endif
+# define machine_is_haba_knx_lite()	(machine_arch_type == MACH_TYPE_HABA_KNX_LITE)
+#else
+# define machine_is_haba_knx_lite()	(0)
+#endif
+
+#ifdef CONFIG_MACH_VAR_SOM_MX6
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_VAR_SOM_MX6
+# endif
+# define machine_is_var_som_mx6()	(machine_arch_type == MACH_TYPE_VAR_SOM_MX6)
+#else
+# define machine_is_var_som_mx6()	(0)
+#endif
+
+#ifdef CONFIG_MACH_PCAAXS1
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_PCAAXS1
+# endif
+# define machine_is_pcaaxs1()	(machine_arch_type == MACH_TYPE_PCAAXS1)
+#else
+# define machine_is_pcaaxs1()	(0)
+#endif
+
+#ifdef CONFIG_MACH_PFLA03
+# ifdef machine_arch_type
+#  undef machine_arch_type
+#  define machine_arch_type	__machine_arch_type
+# else
+#  define machine_arch_type	MACH_TYPE_PFLA03
+# endif
+# define machine_is_pfla03()	(machine_arch_type == MACH_TYPE_PFLA03)
+#else
+# define machine_is_pfla03()	(0)
+#endif
+
+/*
+ * These have not yet been registered
+ */
+
+#ifndef machine_arch_type
+#define machine_arch_type	__machine_arch_type
+#endif
+
+#endif
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index d911de38c41b..78b4ed8d5eea 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -20,7 +20,7 @@
 #include <mach/nomadik/hardware.h>
 #include <mach/nomadik/board.h>
 #include <asm/armlinux.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <linux/amba/bus.h>
 
 #include "clock.h"
diff --git a/arch/arm/tools/Makefile b/arch/arm/tools/Makefile
deleted file mode 100644
index 298a7f90e627..000000000000
--- a/arch/arm/tools/Makefile
+++ /dev/null
@@ -1,12 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-#
-# linux/arch/arm/tools/Makefile
-#
-# Copyright (C) 2001 Russell King
-#
-
-include/generated/mach-types.h: $(src)/gen-mach-types $(src)/mach-types
-	$(Q)$(kecho) '  Generating $@'
-	$(Q)mkdir -p $(dir $@)
-	$(Q)$(AWK) -f $^ > $@
diff --git a/arch/arm/tools/gen-mach-types b/arch/arm/tools/gen-mach-types
deleted file mode 100644
index fcfc0ed192e1..000000000000
--- a/arch/arm/tools/gen-mach-types
+++ /dev/null
@@ -1,74 +0,0 @@
-#!/bin/awk
-#
-# SPDX-License-Identifier: GPL-2.0-only
-#
-# Awk script to generate include/generated/mach-types.h
-#
-BEGIN	{ nr = 0 }
-/^#/	{ next }
-/^[ 	]*$/ { next }
-
-NF == 4 {
-	  machine_is[nr] = "machine_is_"$1;
-	  config[nr] = "CONFIG_"$2;
-	  mach_type[nr] = "MACH_TYPE_"$3;
-	  num[nr] = $4; nr++
-	}
-
-NF == 3 {
-	  machine_is[nr] = "machine_is_"$1;
-	  config[nr] = "CONFIG_"$2;
-	  mach_type[nr] = "MACH_TYPE_"$3;
-	  num[nr] = ""; nr++
-	}
-
-
-END	{
-	  printf("/*\n");
-	  printf(" * This was automagically generated from %s!\n", FILENAME);
-	  printf(" * Do NOT edit\n");
-	  printf(" */\n\n");
-	  printf("#ifndef __ASM_ARM_MACH_TYPE_H\n");
-	  printf("#define __ASM_ARM_MACH_TYPE_H\n\n");
-	  printf("#ifndef __ASSEMBLY__\n");
-	  printf("/* The type of machine we're running on */\n");
-	  printf("extern unsigned int __machine_arch_type;\n");
-	  printf("#endif\n\n");
-
-	  printf("/* see arch/arm/kernel/arch.c for a description of these */\n");
-	  for (i = 0; i < nr; i++)
-	    if (num[i] ~ /..*/)
-	      printf("#define %-30s %d\n", mach_type[i], num[i]);
-
-	  printf("\n");
-
-	  for (i = 0; i < nr; i++)
-	    if (num[i] ~ /..*/) {
-	      printf("#ifdef %s\n", config[i]);
-	      printf("# ifdef machine_arch_type\n");
-	      printf("#  undef machine_arch_type\n");
-	      printf("#  define machine_arch_type\t__machine_arch_type\n");
-	      printf("# else\n");
-	      printf("#  define machine_arch_type\t%s\n", mach_type[i]);
-	      printf("# endif\n");
-	      printf("# define %s()\t(machine_arch_type == %s)\n", machine_is[i], mach_type[i]);
-	      printf("#else\n");
-	      printf("# define %s()\t(0)\n", machine_is[i]);
-	      printf("#endif\n\n");
-	    }
-
-	  printf("/*\n * These have not yet been registered\n */\n");
-	  for (i = 0; i < nr; i++)
-	    if (num[i] !~ /..*/)
-	      printf("/* #define %-30s <<not registered>> */\n", mach_type[i]);
-
-	  for (i = 0; i < nr; i++)
-	    if (num[i] !~ /..*/) {
-	      printf("#define %s()\t(0)\n", machine_is[i]);
-	    }
-
-	  printf("\n#ifndef machine_arch_type\n");
-	  printf("#define machine_arch_type\t__machine_arch_type\n");
-	  printf("#endif\n\n");
-	  printf("#endif\n");
-	}
diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types
deleted file mode 100644
index 5c8ee1e91e97..000000000000
--- a/arch/arm/tools/mach-types
+++ /dev/null
@@ -1,83 +0,0 @@
-# Database of machine macros and numbers
-#
-# This file is linux/arch/arm/tools/mach-types
-#
-# Up to date versions of this file can be obtained from:
-#
-#   http://www.arm.linux.org.uk/developer/machines/download.php
-#
-# Please do not send patches to this file; it is automatically generated!
-# To add an entry into this database, please see Documentation/arm/README,
-# or visit:
-#
-#   http://www.arm.linux.org.uk/developer/machines/?action=new
-#
-# Last update: Wed Sep 25 08:48:26 2013
-#
-# machine_is_xxx	CONFIG_xxxx		MACH_TYPE_xxx		number
-#
-lubbock			ARCH_LUBBOCK		LUBBOCK			89
-versatile_pb		ARCH_VERSATILE_PB	VERSATILE_PB		387
-csb337			MACH_CSB337		CSB337			399
-mainstone		MACH_MAINSTONE		MAINSTONE		406
-nomadik			MACH_NOMADIK		NOMADIK			420
-edb9312			MACH_EDB9312		EDB9312			451
-edb9301			MACH_EDB9301		EDB9301			462
-edb9315			MACH_EDB9315		EDB9315			463
-scb9328			MACH_SCB9328		SCB9328			508
-edb9302			MACH_EDB9302		EDB9302			538
-edb9307			MACH_EDB9307		EDB9307			607
-at91rm9200ek		MACH_AT91RM9200EK	AT91RM9200EK		705
-pcm027			MACH_PCM027		PCM027			732
-edb9315a		MACH_EDB9315A		EDB9315A		772
-at91sam9261ek		MACH_AT91SAM9261EK	AT91SAM9261EK		848
-at91sam9260ek		MACH_AT91SAM9260EK	AT91SAM9260EK		1099
-edb9302a		MACH_EDB9302A		EDB9302A		1127
-edb9307a		MACH_EDB9307A		EDB9307A		1128
-pm9261			MACH_PM9261		PM9261			1187
-at91sam9263ek		MACH_AT91SAM9263EK	AT91SAM9263EK		1202
-zylonite		MACH_ZYLONITE		ZYLONITE		1233
-mioa701			MACH_MIOA701		MIOA701			1257
-pm9263			MACH_PM9263		PM9263			1475
-omap3evm		MACH_OMAP3EVM		OMAP3EVM		1535
-omap3_beagle		MACH_OMAP3_BEAGLE	OMAP3_BEAGLE		1546
-at91sam9g20ek		MACH_AT91SAM9G20EK	AT91SAM9G20EK		1624
-usb_a9260		MACH_USB_A9260		USB_A9260		1709
-usb_a9263		MACH_USB_A9263		USB_A9263		1710
-qil_a9260		MACH_QIL_A9260		QIL_A9260		1711
-picocom1		MACH_PICOCOM1		PICOCOM1		1751
-at91sam9m10g45ek	MACH_AT91SAM9M10G45EK	AT91SAM9M10G45EK	1830
-usb_a9g20		MACH_USB_A9G20		USB_A9G20		1841
-qil_a9g20		MACH_QIL_A9G20		QIL_A9G20		1844
-chumby			MACH_CHUMBY		CHUMBY			1937
-tny_a9260		MACH_TNY_A9260		TNY_A9260		2058
-tny_a9g20		MACH_TNY_A9G20		TNY_A9G20		2059
-mx51_babbage		MACH_MX51_BABBAGE	MX51_BABBAGE		2125
-tny_a9263		MACH_TNY_A9263		TNY_A9263		2140
-at91sam9g10ek		MACH_AT91SAM9G10EK	AT91SAM9G10EK		2159
-tx25			MACH_TX25		TX25			2177
-mx23evk			MACH_MX23EVK		MX23EVK			2629
-pm9g45			MACH_PM9G45		PM9G45			2672
-omap4_panda		MACH_OMAP4_PANDA	OMAP4_PANDA		2791
-pcaal1			MACH_PCAAL1		PCAAL1			2843
-armada_xp_db		MACH_ARMADA_XP_DB	ARMADA_XP_DB		3036
-tx28			MACH_TX28		TX28			3043
-bcm2708			MACH_BCM2708		BCM2708			3138
-mx53_loco		MACH_MX53_LOCO		MX53_LOCO		3273
-tx53			MACH_TX53		TX53			3279
-ccmx53			MACH_CCMX53		CCMX53			3346
-ccwmx53			MACH_CCWMX53		CCWMX53			3348
-vmx53			MACH_VMX53		VMX53			3359
-pcm049			MACH_PCM049		PCM049			3364
-dss11			MACH_DSS11		DSS11			3787
-beaglebone		MACH_BEAGLEBONE		BEAGLEBONE		3808
-pcaaxl2			MACH_PCAAXL2		PCAAXL2			3912
-mx6q_sabresd		MACH_MX6Q_SABRESD	MX6Q_SABRESD		3980
-tqma53			MACH_TQMA53		TQMA53			4004
-imx233_olinuxino	MACH_IMX233_OLINUXINO	IMX233_OLINUXINO	4105
-cfa10036		MACH_CFA10036		CFA10036		4142
-pcm051			MACH_PCM051		PCM051			4144
-haba_knx_lite		MACH_HABA_KNX_LITE	HABA_KNX_LITE		4310
-var_som_mx6		MACH_VAR_SOM_MX6	VAR_SOM_MX6		4419
-pcaaxs1			MACH_PCAAXS1		PCAAXS1			4526
-pfla03			MACH_PFLA03		PFLA03			4575
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 29a8e3be955b..0959a3c503e4 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -18,7 +18,7 @@
 #include <mach/at91/hardware.h>
 #include <mach/at91/at91rm9200_emac.h>
 #include <mach/at91/board.h>
-#include <generated/mach-types.h>
+#include <asm/mach-types.h>
 #include <linux/clk.h>
 #include <linux/mii.h>
 #include <errno.h>
-- 
2.39.2



