Delivery-date: Tue, 01 Oct 2024 12:49:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svaRn-004w7t-0Z
	for lore@lore.pengutronix.de;
	Tue, 01 Oct 2024 12:49:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svaRn-0007S5-K6
	for lore@pengutronix.de; Tue, 01 Oct 2024 12:49:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iIqGLmF5ypdj/kd0Vq6oOBU6NuRIb9sUj+j56MR9AXg=; b=byzRRqKxobVqJb
	HwwgDoopOUCh/DL3fSxPBHcvWyn0KHToDMlI+lrurPnsO/HMfLdFtd/tEVPd88eRhSysnjuhIKTFM
	CywGsBlRR09VdLR5dIj2SXwAEa5bQkL2P0heSuJG+mPT/LuoKrCUW2FqNziLZDvSed1I50uO5Dhep
	1LuoXOEP4EYsoVxMg1yGFWpiWT5FBnZR1589PaDjzRlUwntd2ou6Ow3dMj9Gb2eSnpOZaI/z4f+ta
	guF+Qr3oEJJJjPwkiLkzmup3RC44fJQanLLblU7yEWtlVDFx+WL+WAee1l5rOYYFRcf9nJG47t/4D
	SCvwQ/RccBP0wrxXP2Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svaRL-00000002P8e-02aB;
	Tue, 01 Oct 2024 10:49:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svaQ2-00000002P00-1aH6
	for barebox@lists.infradead.org;
	Tue, 01 Oct 2024 10:47:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaQ1-0006Tl-6S; Tue, 01 Oct 2024 12:47:49 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaQ0-002r5Y-PT; Tue, 01 Oct 2024 12:47:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svaQ0-004U9y-2D;
	Tue, 01 Oct 2024 12:47:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Oct 2024 12:47:38 +0200
Message-Id: <20241001104738.1069237-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241001104738.1069237-1-s.hauer@pengutronix.de>
References: <20241001104738.1069237-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_034750_434312_BCFF7F97 
X-CRM114-Status: GOOD (  18.16  )
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
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: Wolfvision PF5: add display overlay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Wolfvision PF5 can have a display connected to it. The presence of
the display can be checked for using an analog input. Include the
corresponding device tree overlay when the display is connected.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/wolfvision-pf5/board.c            | 15 +++++++++++++++
 arch/arm/dts/Makefile                             |  4 ++--
 .../arm/dts/rk3568-wolfvision-pf5-display-vz.dtso | 11 +++++++++++
 3 files changed, 28 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/dts/rk3568-wolfvision-pf5-display-vz.dtso

diff --git a/arch/arm/boards/wolfvision-pf5/board.c b/arch/arm/boards/wolfvision-pf5/board.c
index 5a2f4201ba..c2a6963c0f 100644
--- a/arch/arm/boards/wolfvision-pf5/board.c
+++ b/arch/arm/boards/wolfvision-pf5/board.c
@@ -15,15 +15,19 @@
 #include <boards/wolfvision/common.h>
 #include <mach/rockchip/bbu.h>
 
+#define PF5_DISPLAY_VZ_FILENAME "rk3568-wolfvision-pf5-display-vz.dtbo"
+#define PF5_DISPLAY_VZ_DATA __dtbo_rk3568_wolfvision_pf5_display_vz_start
 #define PF5_IO_EXPANDER_FILENAME "rk3568-wolfvision-pf5-io-expander.dtbo"
 #define PF5_IO_EXPANDER_DATA __dtbo_rk3568_wolfvision_pf5_io_expander_start
 
 enum {
 	PF5_HWID_CHANNEL_MAINBOARD = 1,
 	PF5_HWID_CHANNEL_MODULE = 2,
+	PF5_HWID_CHANNEL_DISPLAY = 3,
 };
 
 extern char PF5_IO_EXPANDER_DATA[];
+extern char PF5_DISPLAY_VZ_DATA[];
 
 static const struct wv_rk3568_extension pf5_extensions[] = {
 	{
@@ -45,6 +49,17 @@ static const struct wv_rk3568_extension pf5_extensions[] = {
 			[16] = { .name = "no", },
 		},
 	},
+	{
+		.adc_chan = PF5_HWID_CHANNEL_DISPLAY,
+		.name = "display",
+		.overlays = {
+			[0] = { .name = "Visualizer",
+				.filename = PF5_DISPLAY_VZ_FILENAME,
+				.data = PF5_DISPLAY_VZ_DATA,
+			},
+			[16] = { .name = "no" },
+		},
+	},
 };
 
 static int pf5_probe(struct device *dev)
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 654d221fa3..fe32b812f6 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -231,6 +231,6 @@ lwl-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += imx8mp-var-dart-dt8mcusto
 lwl-$(CONFIG_MACH_TQMA93XX) += imx93-tqma9352-mba93xxca.dtb.o \
 			       imx93-tqma9352-mba93xxla.dtb.o
 
-obj-$(CONFIG_MACH_WOLFVISION_PF5) += rk3568-wolfvision-pf5-io-expander.dtbo.o
-
+obj-$(CONFIG_MACH_WOLFVISION_PF5) += rk3568-wolfvision-pf5-io-expander.dtbo.o \
+				     rk3568-wolfvision-pf5-display-vz.dtbo.o
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/arch/arm/dts/rk3568-wolfvision-pf5-display-vz.dtso b/arch/arm/dts/rk3568-wolfvision-pf5-display-vz.dtso
new file mode 100644
index 0000000000..0e57a6660e
--- /dev/null
+++ b/arch/arm/dts/rk3568-wolfvision-pf5-display-vz.dtso
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Device tree overlay for the WolfVision PF5 Visualizer display.
+ *
+ * Copyright (C) 2024 WolfVision GmbH.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <arm64/rockchip/rk3568-wolfvision-pf5-display-vz.dtso>
-- 
2.39.5



