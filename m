Delivery-date: Thu, 17 Nov 2022 13:08:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ovdgq-00AEN5-Ee
	for lore@lore.pengutronix.de; Thu, 17 Nov 2022 13:08:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ovdgn-0000nj-Jq
	for lore@pengutronix.de; Thu, 17 Nov 2022 13:08:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EjKB5Hz2Jr+k6bumyuOWflHi6Mmt7cyYRSkCZS8Pc+8=; b=wMp/5KCEHfcwLnE+L0s0Jow640
	a7uAhHtm3/BSDDm8iQ5oPRdaC7r3NlDb19FRsVtd1bhoh3pObBurK14Yy3XBOtIqq/iqkNI9lABhm
	Th+AmYcfLrYweZby/TEaI08slCZc1ue13GEK5y3m7dnEDZekt0htraMv8Zq50QT9M9D6liuro+p/k
	daheVtpVbP+rCP4Dfs55vYOD5U2qPkHd+FSmmY2cyWCaPOuEmFLSU/kM88mYXlG9PP+WSAqUstaEc
	34HcHOT18Nov1zGOgblNT84uvjt52pMhoQ6rihcsRppVOUCRdBYmjSOpJ/flkKTxKXJXmW89jpnSi
	q3jk3L2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovdeq-00DfUx-92; Thu, 17 Nov 2022 12:06:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovdeh-00DfRJ-94
	for barebox@lists.infradead.org; Thu, 17 Nov 2022 12:06:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ovdef-0000Qo-Vj; Thu, 17 Nov 2022 13:06:06 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ovdee-004qDT-En; Thu, 17 Nov 2022 13:06:05 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ovdee-00G73W-O1; Thu, 17 Nov 2022 13:06:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 17 Nov 2022 13:06:04 +0100
Message-Id: <20221117120604.3840211-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_040607_889684_5F009982 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Remove unused struct partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

struct partition from include/partition.h is entirely unused. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/a9m2410/a9m2410.c             |  1 -
 arch/arm/boards/a9m2440/a9m2440.c             |  1 -
 arch/arm/boards/animeo_ip/init.c              |  1 -
 arch/arm/boards/at91rm9200ek/init.c           |  1 -
 arch/arm/boards/at91sam9261ek/init.c          |  1 -
 arch/arm/boards/at91sam9263ek/init.c          |  1 -
 arch/arm/boards/at91sam9m10g45ek/init.c       |  1 -
 arch/arm/boards/at91sam9m10ihd/init.c         |  1 -
 arch/arm/boards/at91sam9n12ek/init.c          |  1 -
 arch/arm/boards/at91sam9x5ek/init.c           |  1 -
 arch/arm/boards/datamodul-edm-qmx6/board.c    |  1 -
 arch/arm/boards/dss11/init.c                  |  1 -
 arch/arm/boards/edb93xx/edb93xx.c             |  1 -
 arch/arm/boards/efika-mx-smartbook/board.c    |  1 -
 arch/arm/boards/element14-warp7/board.c       |  1 -
 arch/arm/boards/embedsky-e9/board.c           |  1 -
 .../boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |  1 -
 .../boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |  1 -
 .../boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |  1 -
 .../boards/eukrea_cpuimx51/eukrea_cpuimx51.c  |  1 -
 arch/arm/boards/freescale-mx21-ads/imx21ads.c |  1 -
 arch/arm/boards/freescale-mx25-3ds/3stack.c   |  1 -
 arch/arm/boards/freescale-mx27-ads/imx27ads.c |  1 -
 arch/arm/boards/freescale-mx35-3ds/3stack.c   |  1 -
 .../arm/boards/freescale-mx51-babbage/board.c |  1 -
 arch/arm/boards/freescale-mx53-qsb/board.c    |  1 -
 arch/arm/boards/freescale-mx53-smd/board.c    |  1 -
 .../boards/freescale-mx6-sabrelite/board.c    |  1 -
 arch/arm/boards/freescale-mx6-sabresd/board.c |  1 -
 .../boards/freescale-mx6sx-sabresdb/board.c   |  1 -
 .../boards/friendlyarm-mini2440/mini2440.c    |  1 -
 arch/arm/boards/guf-cupid/board.c             |  1 -
 arch/arm/boards/guf-neso/board.c              |  1 -
 arch/arm/boards/haba-knx/init.c               |  1 -
 arch/arm/boards/karo-tx25/board.c             |  1 -
 arch/arm/boards/karo-tx53/board.c             |  1 -
 arch/arm/boards/kindle-mx50/board.c           |  1 -
 arch/arm/boards/lubbock/board.c               |  1 -
 arch/arm/boards/mainstone/board.c             |  1 -
 arch/arm/boards/mioa701/board.c               |  1 -
 arch/arm/boards/nhk8815/setup.c               |  1 -
 arch/arm/boards/phytec-phycard-imx27/pca100.c |  1 -
 .../boards/phytec-phycard-omap3/pca-a-l1.c    |  1 -
 .../boards/phytec-phycard-omap4/pca-a-xl2.c   |  1 -
 arch/arm/boards/phytec-phycore-imx31/pcm037.c |  1 -
 arch/arm/boards/phytec-phycore-imx35/pcm043.c |  1 -
 arch/arm/boards/phytec-phycore-imx7/board.c   |  1 -
 .../boards/phytec-phycore-omap4460/board.c    |  1 -
 arch/arm/boards/phytec-phycore-pxa270/board.c |  1 -
 arch/arm/boards/pm9261/init.c                 |  1 -
 arch/arm/boards/pm9263/init.c                 |  1 -
 arch/arm/boards/pm9g45/init.c                 |  1 -
 arch/arm/boards/qil-a926x/init.c              |  1 -
 arch/arm/boards/sama5d3xek/init.c             |  1 -
 .../sama5d4_xplained/sama5d4_xplained.c       |  1 -
 arch/arm/boards/sama5d4ek/sama5d4ek.c         |  1 -
 arch/arm/boards/scb9328/scb9328.c             |  1 -
 arch/arm/boards/tny-a926x/init.c              |  1 -
 arch/arm/boards/tqma6x/board.c                |  1 -
 arch/arm/boards/udoo/board.c                  |  1 -
 arch/arm/boards/usb-a926x/init.c              |  1 -
 arch/arm/boards/variscite-mx6/board.c         |  1 -
 arch/arm/boards/versatile/versatilepb.c       |  1 -
 arch/arm/boards/zylonite/board.c              |  1 -
 arch/arm/mach-omap/xload.c                    |  1 -
 .../boards/freescale-p1010rdb/p1010rdb.c      |  1 -
 .../boards/freescale-p1022ds/p1022ds.c        |  1 -
 .../boards/freescale-p2020rdb/p2020rdb.c      |  1 -
 arch/powerpc/boards/owc-da923rc/da923rc.c     |  1 -
 arch/powerpc/boards/pcm030/pcm030.c           |  1 -
 commands/partition.c                          |  1 -
 drivers/misc/storage-by-uuid.c                |  1 -
 drivers/misc/ubootvar.c                       |  1 -
 drivers/of/barebox.c                          |  1 -
 fs/devfs.c                                    |  1 -
 include/partition.h                           | 21 -------------------
 lib/bootstrap/devfs.c                         |  1 -
 77 files changed, 97 deletions(-)
 delete mode 100644 include/partition.h

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index ef727f664d..25022abde2 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -7,7 +7,6 @@
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <asm/sections.h>
-#include <partition.h>
 #include <nand.h>
 #include <io.h>
 #include <mach/devices-s3c24xx.h>
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index de18ea0120..9a3eaef294 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -7,7 +7,6 @@
 #include <asm/armlinux.h>
 #include <asm/sections.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <nand.h>
 #include <io.h>
 #include <mach/devices-s3c24xx.h>
diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index ed0b9b7f87..127bb31dbb 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -10,7 +10,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 8c61a72e0b..5d5a0ba70b 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -7,7 +7,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <gpio.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 3904cbf9ca..1ae7d94876 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -8,7 +8,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index bf2f1e8f9a..e1eeb78347 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -9,7 +9,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index dcb8f9b17f..cb5cfe6b94 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -11,7 +11,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index e629900d5a..6a6ce9a187 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -11,7 +11,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index edc45819b2..97ab150c14 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -7,7 +7,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index a1c80bf441..8796702a1a 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -7,7 +7,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
index 5a24ca0806..76fb17b4bd 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/board.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
@@ -4,7 +4,6 @@
 #include <generated/mach-types.h>
 #include <environment.h>
 #include <bootsource.h>
-#include <partition.h>
 #include <common.h>
 #include <envfs.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index 6ce986fc39..e24e69f302 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -8,7 +8,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <asm/io.h>
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 4b5db60216..0112866c30 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -6,7 +6,6 @@
 #include <environment.h>
 #include <fs.h>
 #include <init.h>
-#include <partition.h>
 #include <asm/armlinux.h>
 #include <io.h>
 #include <malloc.h>
diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index bf58eff718..0d979876a5 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -3,7 +3,6 @@
 
 #include <environment.h>
 #include <bootsource.h>
-#include <partition.h>
 #include <common.h>
 #include <envfs.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/element14-warp7/board.c b/arch/arm/boards/element14-warp7/board.c
index 9427b467d0..50b628ba58 100644
--- a/arch/arm/boards/element14-warp7/board.c
+++ b/arch/arm/boards/element14-warp7/board.c
@@ -7,7 +7,6 @@
 #include <mach/bbu.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <mach/generic.h>
 #include <linux/sizes.h>
 
diff --git a/arch/arm/boards/embedsky-e9/board.c b/arch/arm/boards/embedsky-e9/board.c
index 0938a6d096..bca714f977 100644
--- a/arch/arm/boards/embedsky-e9/board.c
+++ b/arch/arm/boards/embedsky-e9/board.c
@@ -16,7 +16,6 @@
 #include <mach/imx6-regs.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <linux/phy.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 494b89f53f..ec0063ed9b 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -16,7 +16,6 @@
 #include <led.h>
 #include <envfs.h>
 
-#include <partition.h>
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
 #include <mach/imxfb.h>
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index e8ac0cc8fa..19afadec4d 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -18,7 +18,6 @@
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <nand.h>
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 9835452ddf..2506ae8b06 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -22,7 +22,6 @@
 #include <init.h>
 #include <nand.h>
 #include <net.h>
-#include <partition.h>
 #include <gpio.h>
 #include <envfs.h>
 
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 8d0d4a0e8a..06608c133b 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -11,7 +11,6 @@
 #include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <envfs.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/freescale-mx21-ads/imx21ads.c b/arch/arm/boards/freescale-mx21-ads/imx21ads.c
index 92207b02d3..beedacd7a7 100644
--- a/arch/arm/boards/freescale-mx21-ads/imx21ads.c
+++ b/arch/arm/boards/freescale-mx21-ads/imx21ads.c
@@ -18,7 +18,6 @@
 #include <io.h>
 #include <gpio.h>
 #include <mach/weim.h>
-#include <partition.h>
 #include <fs.h>
 #include <linux/sizes.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/freescale-mx25-3ds/3stack.c b/arch/arm/boards/freescale-mx25-3ds/3stack.c
index 8707e02a64..824e986f74 100644
--- a/arch/arm/boards/freescale-mx25-3ds/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3ds/3stack.c
@@ -12,7 +12,6 @@
 #include <asm/barebox-arm.h>
 #include <io.h>
 #include <envfs.h>
-#include <partition.h>
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
 #include <platform_data/eth-fec.h>
diff --git a/arch/arm/boards/freescale-mx27-ads/imx27ads.c b/arch/arm/boards/freescale-mx27-ads/imx27ads.c
index 670ea2186f..1ea4b39ae3 100644
--- a/arch/arm/boards/freescale-mx27-ads/imx27ads.c
+++ b/arch/arm/boards/freescale-mx27-ads/imx27ads.c
@@ -11,7 +11,6 @@
 #include <platform_data/eth-fec.h>
 #include <gpio.h>
 #include <mach/weim.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/freescale-mx35-3ds/3stack.c b/arch/arm/boards/freescale-mx35-3ds/3stack.c
index 5b91c601f8..f18703fc7f 100644
--- a/arch/arm/boards/freescale-mx35-3ds/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3ds/3stack.c
@@ -22,7 +22,6 @@
 #include <net.h>
 #include <envfs.h>
 #include <linux/sizes.h>
-#include <partition.h>
 #include <gpio.h>
 
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/freescale-mx51-babbage/board.c b/arch/arm/boards/freescale-mx51-babbage/board.c
index 330d8e4f52..c0c3e88039 100644
--- a/arch/arm/boards/freescale-mx51-babbage/board.c
+++ b/arch/arm/boards/freescale-mx51-babbage/board.c
@@ -10,7 +10,6 @@
 #include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <of.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/freescale-mx53-qsb/board.c b/arch/arm/boards/freescale-mx53-qsb/board.c
index f2cb5c56e7..ee2277cfc7 100644
--- a/arch/arm/boards/freescale-mx53-qsb/board.c
+++ b/arch/arm/boards/freescale-mx53-qsb/board.c
@@ -3,7 +3,6 @@
 // SPDX-FileCopyrightText: 2011 Marc Kleine-Budde <mkl@pengutronix.de>
 
 #include <environment.h>
-#include <partition.h>
 #include <common.h>
 #include <linux/sizes.h>
 #include <gpio.h>
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index 98d3048dac..ca3badf490 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -10,7 +10,6 @@
 #include <init.h>
 #include <nand.h>
 #include <net.h>
-#include <partition.h>
 #include <linux/sizes.h>
 #include <gpio.h>
 #include <mci.h>
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index f6eac4c0f3..300a85839b 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -14,7 +14,6 @@
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <of.h>
-#include <partition.h>
 #include <deep-probe.h>
 #include <linux/phy.h>
 #include <asm/io.h>
diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
index 82da8bb1dd..04df051882 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/board.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
@@ -13,7 +13,6 @@
 #include <mach/imx6-regs.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <linux/phy.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/board.c b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
index 3285e1f290..8718e5a752 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
@@ -4,7 +4,6 @@
 #define pr_fmt(fmt) "imx6sx-sdb: " fmt
 
 #include <environment.h>
-#include <partition.h>
 #include <common.h>
 #include <linux/sizes.h>
 #include <gpio.h>
diff --git a/arch/arm/boards/friendlyarm-mini2440/mini2440.c b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
index 413537d247..5933f664b5 100644
--- a/arch/arm/boards/friendlyarm-mini2440/mini2440.c
+++ b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
@@ -10,7 +10,6 @@
 #include <driver.h>
 #include <init.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <platform_data/eth-dm9000.h>
 #include <nand.h>
 #include <mci.h>
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 0c62b573c9..419b3e2464 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -15,7 +15,6 @@
 #include <asm/armlinux.h>
 #include <io.h>
 #include <gpio.h>
-#include <partition.h>
 #include <nand.h>
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 9eb862db64..4662ab0ef8 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -7,7 +7,6 @@
 #include <environment.h>
 #include <platform_data/eth-fec.h>
 #include <notifier.h>
-#include <partition.h>
 #include <gpio.h>
 #include <fs.h>
 #include <envfs.h>
diff --git a/arch/arm/boards/haba-knx/init.c b/arch/arm/boards/haba-knx/init.c
index d55739ee2a..4c7bb3978a 100644
--- a/arch/arm/boards/haba-knx/init.c
+++ b/arch/arm/boards/haba-knx/init.c
@@ -8,7 +8,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 6086da53cc..bbcc32227c 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -14,7 +14,6 @@
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <io.h>
-#include <partition.h>
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
 #include <mach/iomux-mx25.h>
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index 738faf8f18..92a44a893d 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -10,7 +10,6 @@
 #include <init.h>
 #include <nand.h>
 #include <net.h>
-#include <partition.h>
 #include <linux/sizes.h>
 #include <gpio.h>
 #include <mci.h>
diff --git a/arch/arm/boards/kindle-mx50/board.c b/arch/arm/boards/kindle-mx50/board.c
index 4cfd68a258..76472d71bb 100644
--- a/arch/arm/boards/kindle-mx50/board.c
+++ b/arch/arm/boards/kindle-mx50/board.c
@@ -10,7 +10,6 @@
 #include <driver.h>
 #include <param.h>
 #include <magicvar.h>
-#include <partition.h>
 #include <libfile.h>
 #include <globalvar.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/lubbock/board.c b/arch/arm/boards/lubbock/board.c
index 2f3b6ad16b..9383a0c7af 100644
--- a/arch/arm/boards/lubbock/board.c
+++ b/arch/arm/boards/lubbock/board.c
@@ -6,7 +6,6 @@
 #include <environment.h>
 #include <fs.h>
 #include <init.h>
-#include <partition.h>
 #include <led.h>
 #include <gpio.h>
 #include <pwm.h>
diff --git a/arch/arm/boards/mainstone/board.c b/arch/arm/boards/mainstone/board.c
index f95bf057a7..2e4b634e35 100644
--- a/arch/arm/boards/mainstone/board.c
+++ b/arch/arm/boards/mainstone/board.c
@@ -6,7 +6,6 @@
 #include <environment.h>
 #include <fs.h>
 #include <init.h>
-#include <partition.h>
 #include <led.h>
 #include <gpio.h>
 #include <pwm.h>
diff --git a/arch/arm/boards/mioa701/board.c b/arch/arm/boards/mioa701/board.c
index 963fefbf77..5147750a3d 100644
--- a/arch/arm/boards/mioa701/board.c
+++ b/arch/arm/boards/mioa701/board.c
@@ -6,7 +6,6 @@
 #include <environment.h>
 #include <fs.h>
 #include <init.h>
-#include <partition.h>
 #include <led.h>
 #include <gpio.h>
 #include <pwm.h>
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index ed32218ac8..d0ac9a0250 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -5,7 +5,6 @@
 #include <init.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
-#include <partition.h>
 #include <nand.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/phytec-phycard-imx27/pca100.c b/arch/arm/boards/phytec-phycard-imx27/pca100.c
index ed243fa01e..4abac31a8a 100644
--- a/arch/arm/boards/phytec-phycard-imx27/pca100.c
+++ b/arch/arm/boards/phytec-phycard-imx27/pca100.c
@@ -11,7 +11,6 @@
 #include <asm/armlinux.h>
 #include <asm/sections.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <nand.h>
diff --git a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
index e3b148a0ed..0128401e1a 100644
--- a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
+++ b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
@@ -37,7 +37,6 @@
 #include <errno.h>
 #include <init.h>
 #include <nand.h>
-#include <partition.h>
 #include <linux/sizes.h>
 #include <asm/armlinux.h>
 #include <asm/io.h>
diff --git a/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c b/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
index ab5976ff8a..1724bc6dc6 100644
--- a/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
+++ b/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
@@ -16,7 +16,6 @@
 #include <mach/control.h>
 #include <linux/err.h>
 #include <linux/sizes.h>
-#include <partition.h>
 #include <nand.h>
 #include <asm/mmu.h>
 #include <mach/gpmc.h>
diff --git a/arch/arm/boards/phytec-phycore-imx31/pcm037.c b/arch/arm/boards/phytec-phycore-imx31/pcm037.c
index 52b97fe777..a736919daf 100644
--- a/arch/arm/boards/phytec-phycore-imx31/pcm037.c
+++ b/arch/arm/boards/phytec-phycore-imx31/pcm037.c
@@ -18,7 +18,6 @@
 #include <io.h>
 #include <platform_data/eth-smc911x.h>
 #include <asm/mmu.h>
-#include <partition.h>
 #include <generated/mach-types.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx-nand.h>
diff --git a/arch/arm/boards/phytec-phycore-imx35/pcm043.c b/arch/arm/boards/phytec-phycore-imx35/pcm043.c
index 360a607bd5..76615e6c44 100644
--- a/arch/arm/boards/phytec-phycore-imx35/pcm043.c
+++ b/arch/arm/boards/phytec-phycore-imx35/pcm043.c
@@ -15,7 +15,6 @@
 #include <mach/imx35-regs.h>
 #include <asm/armlinux.h>
 #include <io.h>
-#include <partition.h>
 #include <nand.h>
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
diff --git a/arch/arm/boards/phytec-phycore-imx7/board.c b/arch/arm/boards/phytec-phycore-imx7/board.c
index f173ee233f..f603ef3c2e 100644
--- a/arch/arm/boards/phytec-phycore-imx7/board.c
+++ b/arch/arm/boards/phytec-phycore-imx7/board.c
@@ -7,7 +7,6 @@
 #include <mach/bbu.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <mach/generic.h>
 #include <linux/sizes.h>
 #include <asm/psci.h>
diff --git a/arch/arm/boards/phytec-phycore-omap4460/board.c b/arch/arm/boards/phytec-phycore-omap4460/board.c
index e25ff5eb31..6c69fb7e1b 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/board.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/board.c
@@ -20,7 +20,6 @@
 #include <mach/control.h>
 #include <linux/err.h>
 #include <linux/sizes.h>
-#include <partition.h>
 #include <nand.h>
 #include <asm/mmu.h>
 #include <mach/gpmc.h>
diff --git a/arch/arm/boards/phytec-phycore-pxa270/board.c b/arch/arm/boards/phytec-phycore-pxa270/board.c
index 9740a3a7af..5d31617c82 100644
--- a/arch/arm/boards/phytec-phycore-pxa270/board.c
+++ b/arch/arm/boards/phytec-phycore-pxa270/board.c
@@ -7,7 +7,6 @@
 #include <environment.h>
 #include <fs.h>
 #include <init.h>
-#include <partition.h>
 #include <linux/sizes.h>
 
 #include <gpio.h>
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index b316b85d7d..5747a9e995 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -9,7 +9,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index bce612d001..fb9f336afe 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -8,7 +8,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <gpio.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index b347de4157..1630cb2d4e 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -8,7 +8,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <gpio.h>
diff --git a/arch/arm/boards/qil-a926x/init.c b/arch/arm/boards/qil-a926x/init.c
index 63c7089d7d..e0b85f6423 100644
--- a/arch/arm/boards/qil-a926x/init.c
+++ b/arch/arm/boards/qil-a926x/init.c
@@ -11,7 +11,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index 6e8fbea4c8..d364705056 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -7,7 +7,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c b/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
index b7c9c49ded..8dd9edea60 100644
--- a/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
+++ b/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
@@ -12,7 +12,6 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/sama5d4ek/sama5d4ek.c b/arch/arm/boards/sama5d4ek/sama5d4ek.c
index 3673d4816b..350e6c4302 100644
--- a/arch/arm/boards/sama5d4ek/sama5d4ek.c
+++ b/arch/arm/boards/sama5d4ek/sama5d4ek.c
@@ -12,7 +12,6 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 1c78fac441..759fa8afa4 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -10,7 +10,6 @@
 #include <asm/armlinux.h>
 #include <mach/weim.h>
 #include <io.h>
-#include <partition.h>
 #include <fs.h>
 #include <envfs.h>
 #include <mach/iomux-mx1.h>
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 2df8efd448..a8422f14ee 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -7,7 +7,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index 10faadf5a1..7a770bd3c3 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -4,7 +4,6 @@
 #include <generated/mach-types.h>
 #include <environment.h>
 #include <bootsource.h>
-#include <partition.h>
 #include <common.h>
 #include <envfs.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/udoo/board.c b/arch/arm/boards/udoo/board.c
index 36dd58cc98..ae65ba41a5 100644
--- a/arch/arm/boards/udoo/board.c
+++ b/arch/arm/boards/udoo/board.c
@@ -12,7 +12,6 @@
 #include <mach/bbu.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <linux/phy.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index c39992c91b..010e094587 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -7,7 +7,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
diff --git a/arch/arm/boards/variscite-mx6/board.c b/arch/arm/boards/variscite-mx6/board.c
index 99cd15b1c0..6dd89e6f7b 100644
--- a/arch/arm/boards/variscite-mx6/board.c
+++ b/arch/arm/boards/variscite-mx6/board.c
@@ -17,7 +17,6 @@
 #include <environment.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <partition.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index ac6ea9951a..9a9ef0e095 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -17,7 +17,6 @@
 #include <mach/init.h>
 #include <mach/platform.h>
 #include <environment.h>
-#include <partition.h>
 #include <linux/sizes.h>
 #include <platform_data/eth-smc91111.h>
 
diff --git a/arch/arm/boards/zylonite/board.c b/arch/arm/boards/zylonite/board.c
index eb69b37549..d5b717474a 100644
--- a/arch/arm/boards/zylonite/board.c
+++ b/arch/arm/boards/zylonite/board.c
@@ -8,7 +8,6 @@
 #include <fs.h>
 #include <gpio.h>
 #include <init.h>
-#include <partition.h>
 #include <led.h>
 #include <platform_data/eth-smc91111.h>
 #include <platform_data/mtd-nand-mrvl.h>
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 6a02e2b589..5591f01c9c 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -2,7 +2,6 @@
 
 #include <common.h>
 #include <bootsource.h>
-#include <partition.h>
 #include <nand.h>
 #include <init.h>
 #include <driver.h>
diff --git a/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c b/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
index f2f6d00b77..e769933412 100644
--- a/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
+++ b/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
@@ -23,7 +23,6 @@
 #include <i2c/i2c.h>
 #include <gpio.h>
 #include <envfs.h>
-#include <partition.h>
 #include <memory.h>
 #include <asm/cache.h>
 #include <asm/fsl_ddr_sdram.h>
diff --git a/arch/powerpc/boards/freescale-p1022ds/p1022ds.c b/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
index 956b830c5d..fd07b6f89f 100644
--- a/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
+++ b/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
@@ -21,7 +21,6 @@
 #include <net.h>
 #include <types.h>
 #include <i2c/i2c.h>
-#include <partition.h>
 #include <memory.h>
 #include <envfs.h>
 #include <asm/cache.h>
diff --git a/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c b/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c
index cfbcc61e35..2c154db77c 100644
--- a/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c
@@ -20,7 +20,6 @@
 #include <platform_data/serial-ns16550.h>
 #include <types.h>
 #include <i2c/i2c.h>
-#include <partition.h>
 #include <memory.h>
 #include <envfs.h>
 #include <asm/cache.h>
diff --git a/arch/powerpc/boards/owc-da923rc/da923rc.c b/arch/powerpc/boards/owc-da923rc/da923rc.c
index 2665a15091..b9eb2520cf 100644
--- a/arch/powerpc/boards/owc-da923rc/da923rc.c
+++ b/arch/powerpc/boards/owc-da923rc/da923rc.c
@@ -25,7 +25,6 @@
 #include <gpio.h>
 #include <envfs.h>
 #include <platform_data/serial-ns16550.h>
-#include <partition.h>
 #include <environment.h>
 #include <i2c/i2c.h>
 #include <asm/fsl_ddr_sdram.h>
diff --git a/arch/powerpc/boards/pcm030/pcm030.c b/arch/powerpc/boards/pcm030/pcm030.c
index c603643d58..2bdbc6695d 100644
--- a/arch/powerpc/boards/pcm030/pcm030.c
+++ b/arch/powerpc/boards/pcm030/pcm030.c
@@ -25,7 +25,6 @@
 #include <init.h>
 #include <platform_data/eth-fec.h>
 #include <types.h>
-#include <partition.h>
 #include <memory.h>
 #include <linux/sizes.h>
 #include <linux/stat.h>
diff --git a/commands/partition.c b/commands/partition.c
index 44ee0359bf..14f400ccb4 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -16,7 +16,6 @@
 #include <complete.h>
 #include <driver.h>
 #include <malloc.h>
-#include <partition.h>
 #include <errno.h>
 #include <xfuncs.h>
 #include <fs.h>
diff --git a/drivers/misc/storage-by-uuid.c b/drivers/misc/storage-by-uuid.c
index 12a06076a2..c57cbb57d8 100644
--- a/drivers/misc/storage-by-uuid.c
+++ b/drivers/misc/storage-by-uuid.c
@@ -4,7 +4,6 @@
 #include <io.h>
 #include <of.h>
 #include <malloc.h>
-#include <partition.h>
 #include <envfs.h>
 #include <fs.h>
 
diff --git a/drivers/misc/ubootvar.c b/drivers/misc/ubootvar.c
index 723e9e2b54..e5095bb2d2 100644
--- a/drivers/misc/ubootvar.c
+++ b/drivers/misc/ubootvar.c
@@ -11,7 +11,6 @@
 #include <io.h>
 #include <of.h>
 #include <malloc.h>
-#include <partition.h>
 #include <envfs.h>
 #include <fs.h>
 #include <libfile.h>
diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index f6e795e047..d3a5ae04dc 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -10,7 +10,6 @@
 #include <io.h>
 #include <of.h>
 #include <malloc.h>
-#include <partition.h>
 #include <envfs.h>
 #include <fs.h>
 
diff --git a/fs/devfs.c b/fs/devfs.c
index 49cd48f6d8..3e9d68e91e 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -28,7 +28,6 @@
 #include <linux/err.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/mtd-abi.h>
-#include <partition.h>
 #include <block.h>
 
 struct devfs_inode {
diff --git a/include/partition.h b/include/partition.h
deleted file mode 100644
index 373134afad..0000000000
--- a/include/partition.h
+++ /dev/null
@@ -1,21 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-#ifndef __PARTITION_H
-#define __PARTITION_H
-
-#include <driver.h>
-
-struct partition {
-        int num;
-
-	int flags;
-
-        loff_t offset;
-
-        struct device_d *physdev;
-        struct device_d device;
-
-        char name[16];
-	struct cdev cdev;
-};
-
-#endif /* __PARTITION_H */
diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
index 873c4b0170..603e6744f2 100644
--- a/lib/bootstrap/devfs.c
+++ b/lib/bootstrap/devfs.c
@@ -6,7 +6,6 @@
  */
 
 #include <common.h>
-#include <partition.h>
 #include <nand.h>
 #include <driver.h>
 #include <linux/mtd/mtd.h>
-- 
2.30.2



