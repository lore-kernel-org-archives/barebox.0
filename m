Delivery-date: Fri, 01 Mar 2024 11:22:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg01w-001WxN-38
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 11:22:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg01w-0006L8-AA
	for lore@pengutronix.de; Fri, 01 Mar 2024 11:22:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ek38nPskmVjcKsiuclo0FynEh+51/BlhgrSLh/YsANw=; b=QAgFq5o7yisbBmnU62kcHXnWMJ
	HNGsASHnfv21xTx5po1QKPSkdTD26sC5v3PF24eFdlHJBbpuQjc7kBt6q+ad874wGkk2PCwnaJmg8
	YKAxtBjU59v4r0g+Uqetnb65KgzoukMZd5FE/vPx0nQGLPeYRtzWdPih06xI3UcovR0jvynKTf/XF
	jlNJOMueO+agHnIgYzFsp80FIJlvMCjCwwTx5ROhExUqBHX3anwuUbAJOB124vHcrOiohNjQaIP1H
	zqCpV2RpUDpgjhNHW3fELXcGmzlX+qU6mVEEn2wauI294WTnrjuhY1+EaJloZfvOU3UcKpUawUelK
	bbgFaT8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg01K-0000000HL5L-09ev;
	Fri, 01 Mar 2024 10:21:38 +0000
Received: from smtpout35.security-mail.net ([85.31.212.35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg01G-0000000HL4N-3TBT
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 10:21:36 +0000
Received: from localhost (fx305.security-mail.net [127.0.0.1])
	by fx305.security-mail.net (Postfix) with ESMTP id 0B2CB30E971
	for <barebox@lists.infradead.org>; Fri,  1 Mar 2024 11:21:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1709288491;
	bh=MU8O8Za3lj/x11Zuorv/u0FTn5M4fPhnsWjHF/seA5I=;
	h=From:To:Cc:Subject:Date;
	b=O3bAOsbbZvBHHDuKJhMnt7dmIY8dI0ZZOK6IYNKIf/NFJSB6eNemMQbFRi07BMhoj
	 bOWCla8gb0JxXqnUgSECWiX72xX8dMXhCm3nm2TtGlb+koIHtIm263Vv7vGhS5ecjU
	 Hnv2GEQr4VeOia16CjDxzrLrdpd56rDjQHX8VBzE=
Received: from fx305 (fx305.security-mail.net [127.0.0.1]) by
 fx305.security-mail.net (Postfix) with ESMTP id CB85530E936; Fri,  1 Mar
 2024 11:21:30 +0100 (CET)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx305.security-mail.net (Postfix) with ESMTPS id 44D2630E95A; Fri,  1 Mar
 2024 11:21:30 +0100 (CET)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPSA id 160AC4035C; Fri,  1 Mar
 2024 11:21:30 +0100 (CET)
X-Quarantine-ID: <qQB2oUgqgaW5>
X-Virus-Scanned: E-securemail
Secumail-id: <2ee3.65e1ac2a.42898.0>
From: Yann Sionneau <ysionneau@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: Jonathan Borne <jborne@kalrayinc.com>, Julian Vetter
 <jvetter@kalrayinc.com>, Jules Maselbas <jmaselbas@zdiv.net>, Yann Sionneau
 <ysionneau@kalrayinc.com>
Date: Fri,  1 Mar 2024 11:21:19 +0100
Message-ID: <20240301102119.17914-1-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_022135_037881_13A94207 
X-CRM114-Status: GOOD (  14.14  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] mci: dwcmshc-sdhci: add support for Kalray Coolidge v2
 SoC eMMC controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Kalray Coolidge v2 SoC eMMC controller needs static tx delay tuning even
for basic standard or high speed modes.

Add vendor specific callback mechanism for init and implement it for
Coolidge v2 SoC.

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---

Notes:

V1 -> V2:
 - Fixed comment style
 - Removed unused set_ios callback
 - rephrased commit message

 drivers/mci/dwcmshc-sdhci.c | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
index d9c51752db..b3432d500b 100644
--- a/drivers/mci/dwcmshc-sdhci.c
+++ b/drivers/mci/dwcmshc-sdhci.c
@@ -9,11 +9,16 @@
 #include <dma.h>
 #include <malloc.h>
 #include <mci.h>
+#include <of_device.h>
 #include <linux/err.h>
 #include <linux/clk.h>
 
 #include "sdhci.h"
 
+#define tx_delay_static_cfg(delay)      (delay << 5)
+#define tx_tuning_clk_sel(delay)        (delay)
+
+#define DWCMSHC_GPIO_OUT  0x34 /* offset from vendor specific area */
 #define CARD_STATUS_MASK (0x1e00)
 #define CARD_STATUS_TRAN (4 << 9)
 
@@ -22,6 +27,12 @@ static int do_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_dat
 struct dwcmshc_host {
 	struct mci_host mci;
 	struct sdhci sdhci;
+	int vendor_specific_area;
+	const struct dwcmshc_callbacks *cb;
+};
+
+struct dwcmshc_callbacks {
+	void (*init)(struct mci_host *mci, struct device *dev);
 };
 
 static inline struct dwcmshc_host *priv_from_mci_host(struct mci_host *h)
@@ -253,6 +264,9 @@ static int dwcmshc_mci_init(struct mci_host *mci, struct device *dev)
 	dev_dbg(host->mci.hw_dev, "host version4: %s\n",
 		ctrl2 & SDHCI_CTRL_V4_MODE ? "enabled" : "disabled");
 
+	if (host->cb && host->cb->init)
+		host->cb->init(mci, dev);
+
 	return 0;
 }
 
@@ -284,6 +298,8 @@ static void dwcmshc_set_dma_mask(struct device *dev)
 
 static int dwcmshc_probe(struct device *dev)
 {
+	const struct dwcmshc_callbacks *dwcmshc_cb =
+			of_device_get_match_data(dev);
 	struct dwcmshc_host *host;
 	struct resource *iores;
 	struct mci_host *mci;
@@ -309,6 +325,7 @@ static int dwcmshc_probe(struct device *dev)
 	host->sdhci.base = IOMEM(iores->start);
 	host->sdhci.mci = mci;
 	host->sdhci.max_clk = clk_get_rate(clk);
+	host->cb = dwcmshc_cb;
 
 	mci->hw_dev = dev;
 	mci->init = dwcmshc_mci_init;
@@ -337,6 +354,10 @@ static int dwcmshc_probe(struct device *dev)
 	dev_dbg(host->mci.hw_dev, "host controller version: %u\n",
 		host->sdhci.version);
 
+	host->vendor_specific_area = sdhci_read32(&host->sdhci,
+						   SDHCI_P_VENDOR_SPEC_AREA);
+	host->vendor_specific_area &= SDHCI_P_VENDOR_SPEC_AREA_MASK;
+
 	ret = mci_register(&host->mci);
 	if (ret)
 		goto err_register;
@@ -354,8 +375,23 @@ static int dwcmshc_probe(struct device *dev)
 	return ret;
 }
 
+static void dwcmshc_coolidgev2_init(struct mci_host *mci, struct device *dev)
+{
+	struct dwcmshc_host *host = priv_from_mci_host(mci);
+
+	/* configure TX delay to set correct setup/hold for Coolidge V2 */
+	sdhci_write32(&host->sdhci,
+		      host->vendor_specific_area + DWCMSHC_GPIO_OUT,
+		      tx_delay_static_cfg(0xf) | tx_tuning_clk_sel(4));
+}
+
+struct dwcmshc_callbacks kalray_coolidgev2_callbacks = {
+	.init = dwcmshc_coolidgev2_init,
+};
+
 static struct of_device_id dwcmshc_dt_ids[] = {
 	{ .compatible = "snps,dwcmshc-sdhci", },
+	{ .compatible = "kalray,coolidge-v2-dwcmshc-sdhci", .data = &kalray_coolidgev2_callbacks },
 	{ }
 };
 
-- 
2.43.0







