Delivery-date: Tue, 28 Feb 2023 15:32:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11N-004kvm-TI
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 15:32:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11N-0004fH-Ju
	for lore@pengutronix.de; Tue, 28 Feb 2023 15:32:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O4Z867TGyg2Je78TBnM1mPnvHDOsn/4o3RVKzxmtl/c=; b=Qao3s8/O025DlMPB7b2CGaAqOa
	MIcdk4Ek3o2+2YPOal4kG3ChlQeHfoY7b/zMVO7up+2V1MVWOm4wkdeEM6PUQhfPyTlgX4VK7N8f/
	c80ftmHHvEc+Glcy0NBD+/fYYJtQuJbYH0GjCWIj0q7T+r7zpRxJ9MiNn0TAbsrra0UMKRspLGgxf
	mGnxmIwPQ08NJT7TvzPV+gsRjrXO3H3R91hazYmAadAat2m84IbuGd8qIiZ74wGreAG/KyOvh85Se
	dnKR5tzO9kJFuWnQ9cUkaVWdS5lGMAaj3IK3OD4RhNQqSme/x/ImCsftI3PJ1Y1JbY0y6jHSfsGls
	T7JeIKxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX10E-00DSlQ-5a; Tue, 28 Feb 2023 14:30:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX100-00DSgP-Lu
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 14:30:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zz-00047V-5e; Tue, 28 Feb 2023 15:30:35 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zy-000t92-G8; Tue, 28 Feb 2023 15:30:34 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zw-007LWk-Tf; Tue, 28 Feb 2023 15:30:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Feb 2023 15:30:26 +0100
Message-Id: <20230228143031.1718565-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230228143031.1718565-1-s.hauer@pengutronix.de>
References: <20230228143031.1718565-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_063036_762539_BC25F301 
X-CRM114-Status: GOOD (  11.19  )
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
Subject: [PATCH 4/9] ARM: i.MX: Move imxfb.h to include/platform_data/
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mach/imxfb.h only contains the platform_data for the framebuffer driver.
This is better suited in include/platform_data/, so move it there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c               | 2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c               | 2 +-
 arch/arm/boards/freescale-mx21-ads/imx21ads.c                   | 2 +-
 arch/arm/boards/guf-neso/board.c                                | 2 +-
 arch/arm/boards/phytec-phycard-imx27/pca100.c                   | 2 +-
 arch/arm/boards/phytec-phycore-imx27/pcm038.c                   | 2 +-
 arch/arm/mach-imx/include/mach/devices.h                        | 2 +-
 drivers/video/imx-ipu-fb.c                                      | 2 +-
 drivers/video/imx.c                                             | 2 +-
 .../arm/mach-imx/include/mach => include/platform_data}/imxfb.h | 0
 10 files changed, 9 insertions(+), 9 deletions(-)
 rename {arch/arm/mach-imx/include/mach => include/platform_data}/imxfb.h (100%)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index ec0063ed9b..b24d85b8bc 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -18,7 +18,7 @@
 
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
-#include <mach/imxfb.h>
+#include <platform_data/imxfb.h>
 #include <mach/iim.h>
 #include <platform_data/eth-fec.h>
 #include <nand.h>
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 19afadec4d..bb5ef52793 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -26,7 +26,7 @@
 #include <mach/imx-nand.h>
 #include <mach/imx-pll.h>
 #include <mach/weim.h>
-#include <mach/imxfb.h>
+#include <platform_data/imxfb.h>
 #include <platform_data/serial-ns16550.h>
 #include <asm/mmu.h>
 #include <i2c/i2c.h>
diff --git a/arch/arm/boards/freescale-mx21-ads/imx21ads.c b/arch/arm/boards/freescale-mx21-ads/imx21ads.c
index beedacd7a7..0f596b21b9 100644
--- a/arch/arm/boards/freescale-mx21-ads/imx21ads.c
+++ b/arch/arm/boards/freescale-mx21-ads/imx21ads.c
@@ -23,7 +23,7 @@
 #include <fcntl.h>
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
-#include <mach/imxfb.h>
+#include <platform_data/imxfb.h>
 #include <mach/iomux-mx21.h>
 #include <mach/devices-imx21.h>
 
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 4662ab0ef8..4a98592107 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -26,7 +26,7 @@
 #include <mach/iomux-mx27.h>
 #include <mach/imx-nand.h>
 #include <mach/imx-pll.h>
-#include <mach/imxfb.h>
+#include <platform_data/imxfb.h>
 #include <mach/devices-imx27.h>
 
 /* two pins are controlling the CS signals to the USB phys */
diff --git a/arch/arm/boards/phytec-phycard-imx27/pca100.c b/arch/arm/boards/phytec-phycard-imx27/pca100.c
index 4abac31a8a..fa285f3d16 100644
--- a/arch/arm/boards/phytec-phycard-imx27/pca100.c
+++ b/arch/arm/boards/phytec-phycard-imx27/pca100.c
@@ -18,7 +18,7 @@
 #include <io.h>
 #include <mach/imx-nand.h>
 #include <mach/imx-pll.h>
-#include <mach/imxfb.h>
+#include <platform_data/imxfb.h>
 #include <asm/mmu.h>
 #include <usb/ulpi.h>
 #include <mach/bbu.h>
diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm038.c b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
index 90ce579684..183b64094b 100644
--- a/arch/arm/boards/phytec-phycore-imx27/pcm038.c
+++ b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
@@ -14,7 +14,7 @@
 #include <mach/devices-imx27.h>
 #include <mach/imx-pll.h>
 #include <mach/imx27-regs.h>
-#include <mach/imxfb.h>
+#include <platform_data/imxfb.h>
 #include <mach/iomux-mx27.h>
 #include <mfd/mc13xxx.h>
 #include <mach/bbu.h>
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index 3f785548ff..0e68125f26 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -5,7 +5,7 @@
 #include <i2c/i2c.h>
 #include <mach/spi.h>
 #include <mach/imx-nand.h>
-#include <mach/imxfb.h>
+#include <platform_data/imxfb.h>
 #include <mach/imx-ipu-fb.h>
 #include <platform_data/mmc-esdhc-imx.h>
 #include <usb/chipidea-imx.h>
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index cca11dcd84..77c0ba2c9c 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -10,7 +10,7 @@
 #include <io.h>
 #include <mach/imx35-regs.h>
 #include <fb.h>
-#include <mach/imxfb.h>
+#include <platform_data/imxfb.h>
 #include <malloc.h>
 #include <errno.h>
 #include <linux/math64.h>
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 5bf5345619..cb1c11b4cb 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -14,7 +14,7 @@
 #include <common.h>
 #include <fb.h>
 #include <io.h>
-#include <mach/imxfb.h>
+#include <platform_data/imxfb.h>
 #include <driver.h>
 #include <malloc.h>
 #include <errno.h>
diff --git a/arch/arm/mach-imx/include/mach/imxfb.h b/include/platform_data/imxfb.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imxfb.h
rename to include/platform_data/imxfb.h
-- 
2.30.2



