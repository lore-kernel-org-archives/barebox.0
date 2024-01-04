Delivery-date: Thu, 04 Jan 2024 15:19:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOZ2-003cW4-2B
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOZ1-0005Ko-BH
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aFD/AQwgohFG+VXLgVcG/szJMdPFn0y9lheEc1e4Cmw=; b=iClz8RkGkKes2ZAulcrJiEJORF
	QF4L+ggIh34LKfdg/wEzgYrAdWQENb2bOsSCq7cpk/7aWU13mxBm6crVvNPWz26TD+3QilgffhLoW
	s62msixse4QE7Rcb9dKQ8bkzA9oGk7PWr1AwULiDUfR6ql9dOit9M2tX/gh3WzesKr3Ho2P7yh+KR
	1u9kg9DPmY7KacpXJS3Xy9L1Cp0FcW4REJwIZnesTQW/uL5f9zNROXJ67YcfgvCg768ugMLieRUdN
	XwZR/qxdCNXV9CwJAGLPNIkpmbwYNxTmHRF/q1MKIq0KzgJu4KLdT7PUNrQGJ1axNrLtNmSw6uIfI
	MBrKcpRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXq-00EJ7K-19;
	Thu, 04 Jan 2024 14:18:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXf-00EIzE-2N
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:17:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004Hs-L6; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000Myg-TQ; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017zp-2c;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:44 +0100
Message-Id: <20240104141746.165014-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104141746.165014-1-s.hauer@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_061751_845244_49B56DBF 
X-CRM114-Status: GOOD (  15.35  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 17/19] mci: imx-esdhc-pbl: factor out common function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Factor out some code that can be re-used by upcoming ls1028a support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 66 ++++++++++++++++++++++---------------
 1 file changed, 39 insertions(+), 27 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 892329de51..c13830d726 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -17,7 +17,7 @@
 #include <mach/imx/imx8mm-regs.h>
 #include <mach/imx/imx-header.h>
 #endif
-#ifdef CONFIG_ARCH_LS1046
+#ifdef CONFIG_ARCH_LAYERSCAPE
 #include <mach/layerscape/xload.h>
 #endif
 #include "sdhci.h"
@@ -298,7 +298,39 @@ int imx8mn_esdhc_load_image(int instance, bool start)
 	__alias(imx8mp_esdhc_load_image);
 #endif
 
-#ifdef CONFIG_ARCH_LS1046
+#ifdef CONFIG_ARCH_LAYERSCAPE
+
+static int layerscape_esdhc_load_image(struct fsl_esdhc_host *host, void *adr, unsigned long size,
+				       uint32_t div_val)
+{
+	uint32_t val;
+	int ret;
+
+	esdhc_populate_sdhci(host);
+	sdhci_write32(&host->sdhci, IMX_SDHCI_WML, 0);
+
+	/*
+	 * The ROM leaves us here with a clock frequency of around 400kHz. Speed
+	 * this up a bit. FIXME: The resulting frequency has not yet been verified
+	 * to work on all cards.
+	 */
+	val = sdhci_read32(&host->sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
+	val &= ~0x0000fff0;
+	val |= div_val;
+	sdhci_write32(&host->sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET, val);
+
+	sdhci_write32(&host->sdhci, ESDHC_DMA_SYSCTL, ESDHC_SYSCTL_DMA_SNOOP);
+
+	ret = esdhc_read_blocks(host, adr, size);
+	if (ret) {
+		pr_err("%s: reading blocks failed with: %d\n", __func__, ret);
+		return ret;
+	}
+
+	sync_caches_for_execution();
+
+	return 0;
+}
 
 /*
  * The image on the SD card starts at 0x1000. We reserved 128KiB for the PBL,
@@ -319,7 +351,6 @@ int imx8mn_esdhc_load_image(int instance, bool start)
 int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long r2)
 {
 	int ret;
-	uint32_t val;
 	struct esdhc_soc_data data = {
 		.flags = ESDHC_FLAG_MULTIBLK_NO_INT | ESDHC_FLAG_BIGENDIAN,
 	};
@@ -327,33 +358,14 @@ int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long
 		.sdhci.base = IOMEM(0x01560000),
 		.socdata = &data,
 	};
-	unsigned long sdram = 0x80000000;
+	void *sdram = (void *)0x80000000;
+	unsigned long size = ALIGN(barebox_image_size + LS1046A_SD_IMAGE_OFFSET, 512);
 	void (*barebox)(unsigned long, unsigned long, unsigned long) =
-		(void *)(sdram + LS1046A_SD_IMAGE_OFFSET);
+		(sdram + LS1046A_SD_IMAGE_OFFSET);
 
-	esdhc_populate_sdhci(&host);
-	sdhci_write32(&host.sdhci, IMX_SDHCI_WML, 0);
-
-	/*
-	 * The ROM leaves us here with a clock frequency of around 400kHz. Speed
-	 * this up a bit. FIXME: The resulting frequency has not yet been verified
-	 * to work on all cards.
-	 */
-	val = sdhci_read32(&host.sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
-	val &= ~0x0000fff0;
-	val |= (8 << 8) | (3 << 4);
-	sdhci_write32(&host.sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET, val);
-
-	sdhci_write32(&host.sdhci, ESDHC_DMA_SYSCTL, ESDHC_SYSCTL_DMA_SNOOP);
-
-	ret = esdhc_read_blocks(&host, (void *)sdram,
-			ALIGN(barebox_image_size + LS1046A_SD_IMAGE_OFFSET, 512));
-	if (ret) {
-		pr_err("%s: reading blocks failed with: %d\n", __func__, ret);
+	ret = layerscape_esdhc_load_image(&host, sdram, size, (8 << 8) | (3 << 4));
+	if (ret)
 		return ret;
-	}
-
-	sync_caches_for_execution();
 
 	printf("Starting barebox\n");
 
-- 
2.39.2



