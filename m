Delivery-date: Wed, 06 Oct 2021 10:45:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY2YE-0003C6-Ay
	for lore@lore.pengutronix.de; Wed, 06 Oct 2021 10:45:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY2YC-0000k3-9H
	for lore@pengutronix.de; Wed, 06 Oct 2021 10:45:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfoBPtZlFDxQlL4d9KJ9URt6fEbYRXxfm3EyFVj9y7c=; b=P28huIqfOW1Zhs
	BOW0pdfIp/uWztDIyrcLG000MYjohvtnVr/ljW1o+bNuH9D+R7He2yeCRKFFjQiGGfMnui9JU8GsQ
	9+h33l//oSNI8bY4xGtKsc1s9kqQYd/lzUY2JDWLiDEpR1Vlac/ckEMIvVrV/z0mr++rPRITBP2yn
	VDMRJAmoVqHK2jMKQ3HCg5oLtFxoir3/zXAp1mc2RZXTkAEqpYmoEORRKt86TBhgngYB0LXSMOw47
	E3i45rEy6ikoaTv7V0qfyJDJ0/itywaMc/ecal7eIbk+OYwcLWykW1K9STZIen8VCEWZ57EISdYf5
	cmOYI1Od/mHpUDBedmnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY2Wr-00DW15-4N; Wed, 06 Oct 2021 08:43:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY2WO-00DVpa-UA
 for barebox@lists.infradead.org; Wed, 06 Oct 2021 08:43:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mY2WL-0000BR-3d; Wed, 06 Oct 2021 10:43:25 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mY2WK-0003ft-Jo; Wed, 06 Oct 2021 10:43:24 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  6 Oct 2021 10:43:23 +0200
Message-Id: <20211006084323.14051-9-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211006084323.14051-1-o.rempel@pengutronix.de>
References: <20211006084323.14051-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_014329_083842_5BD2EF1D 
X-CRM114-Status: GOOD (  15.63  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 8/8] ARM: boards: skov-imx6: use separate DTS for the iMX6
 Solo variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

iMX6 Solo boards do not have HDMI so remove it to avoid time spending on
probing.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx6/lowlevel.c |  6 +++++-
 arch/arm/dts/Makefile                |  2 +-
 arch/arm/dts/imx6s-skov-imx6.dts     | 22 ++++++++++++++++++++++
 3 files changed, 28 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/dts/imx6s-skov-imx6.dts

diff --git a/arch/arm/boards/skov-imx6/lowlevel.c b/arch/arm/boards/skov-imx6/lowlevel.c
index eab797faa1..ea6de36a36 100644
--- a/arch/arm/boards/skov-imx6/lowlevel.c
+++ b/arch/arm/boards/skov-imx6/lowlevel.c
@@ -618,6 +618,7 @@ static void skov_imx6_init(int cpu_type, unsigned board_variant)
 
 extern char __dtb_z_imx6q_skov_imx6_start[];
 extern char __dtb_z_imx6dl_skov_imx6_start[];
+extern char __dtb_z_imx6s_skov_imx6_start[];
 
 /* called twice: once for SDRAM setup only, second for devicetree setup */
 static noinline void skov_imx6_start(void)
@@ -640,8 +641,11 @@ static noinline void skov_imx6_start(void)
 	/* boot this platform (second call) */
 	switch (cpu_type) {
 	case IMX6_CPUTYPE_IMX6S:
+		pr_debug("Startup i.MX6S based system...\n");
+		imx6q_barebox_entry(__dtb_z_imx6s_skov_imx6_start);
+		break;
 	case IMX6_CPUTYPE_IMX6DL:
-		pr_debug("Startup i.MX6S/DL based system...\n");
+		pr_debug("Startup i.MX6DL based system...\n");
 		imx6q_barebox_entry(__dtb_z_imx6dl_skov_imx6_start);
 		break;
 	case IMX6_CPUTYPE_IMX6D:
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index ffa9fe88c1..23b668dcdd 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -114,7 +114,7 @@ lwl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
 lwl-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o \
 				imx6dl-hummingboard2.dtb.o imx6q-hummingboard2.dtb.o \
 				imx6q-h100.dtb.o
-lwl-$(CONFIG_MACH_SKOV_IMX6) += imx6dl-skov-imx6.dtb.o imx6q-skov-imx6.dtb.o
+lwl-$(CONFIG_MACH_SKOV_IMX6) += imx6s-skov-imx6.dtb.o imx6dl-skov-imx6.dtb.o imx6q-skov-imx6.dtb.o
 lwl-$(CONFIG_MACH_SKOV_ARM9CPU) += at91-skov-arm9cpu.dtb.o
 lwl-$(CONFIG_MACH_SEEED_ODYSSEY) += stm32mp157c-odyssey.dtb.o
 lwl-$(CONFIG_MACH_STM32MP15XX_DKX) += stm32mp157c-dk2.dtb.o stm32mp157a-dk1.dtb.o
diff --git a/arch/arm/dts/imx6s-skov-imx6.dts b/arch/arm/dts/imx6s-skov-imx6.dts
new file mode 100644
index 0000000000..9061563e45
--- /dev/null
+++ b/arch/arm/dts/imx6s-skov-imx6.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2015 Juergen Borleis, Pengutronix <kernel@pengutronix.de>
+ */
+
+/dts-v1/;
+#include <arm/imx6dl.dtsi>
+#include "imx6dl.dtsi"
+#include "imx6qdl-skov-imx6.dtsi"
+
+/ {
+	model = "Skov IMX6";
+	compatible = "skov,imx6", "fsl,imx6dl";
+
+	chosen {
+		stdout-path = &uart2;
+	};
+};
+
+&hdmi {
+	status = "disabled";
+};
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

