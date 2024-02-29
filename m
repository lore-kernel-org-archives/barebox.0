Delivery-date: Thu, 29 Feb 2024 16:58:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfinV-00GBBv-0G
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 16:58:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfinU-0003Wi-BL
	for lore@pengutronix.de; Thu, 29 Feb 2024 16:58:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=erGmmNovrMAofKNsJAmGxjNr3Xzh5mcN3TTE1YKAvGQ=; b=EjxS1ur0r0KTq7MQyHZViXISiD
	EpahfjsToZKXDG9DLDt6mXD+87fJ97MTjBdDuhcL46v/cD+90xQArUZ8KYj83v5+kvmrYIwoMDLyi
	aMw1Zlwhb9PGp4/Tz59GnPpuiPX0ssQkcyHcoVFTyry8i7qRVNcUb+cqPwyHTfBJInkkqxgCj/LnW
	ishlIYWh+L00q99bKuz4a7siL6sw38a5JvPvqP2k8Xwe7dCEt/QkIkApQC+klk9pG9Oor0xw6TD2l
	O4SflVnNy1kh9HqOPldCNZR548lJUjYsdlMml+WPvt1O7nkhm67knfI8VMVtY+H0h8XCIlomSlOGW
	avsQA7aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfims-0000000EAIS-23Zn;
	Thu, 29 Feb 2024 15:57:34 +0000
Received: from smtpout42.security-mail.net ([85.31.212.42])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfimk-0000000EAD6-31T5
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 15:57:29 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx302.security-mail.net (Postfix) with ESMTP id 34E15A9EEC
	for <barebox@lists.infradead.org>; Thu, 29 Feb 2024 16:57:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1709222242;
	bh=pIm+DfX68y4FbrLSLWVD+24idjha3ZCe8HAig+olHFk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=LaI6TFZ5hhH/BAutOhRSkZhLY+969WNkGg1aBe/lUfgX1mVgWYfUsJfNw8L0AxztG
	 F6qicmRhb484wHgXT3Z9ti5TauN5GbHOKTjBs5AqqfoCJ/H4CTc58KCiH1LaBsbpCm
	 v/djT22WW+3PFQL8l3EM9V9QxfBSIDqqtNGnaFf0=
Received: from fx302 (localhost [127.0.0.1]) by fx302.security-mail.net
 (Postfix) with ESMTP id 18636AA81B; Thu, 29 Feb 2024 16:57:22 +0100 (CET)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx302.security-mail.net (Postfix) with ESMTPS id A9094AA4F8; Thu, 29 Feb
 2024 16:57:21 +0100 (CET)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPSA id 7D5A640365; Thu, 29 Feb
 2024 16:57:21 +0100 (CET)
X-Quarantine-ID: <utDniYsEtm2Y>
X-Virus-Scanned: E-securemail
Secumail-id: <1181b.65e0a961.a717e.0>
From: Yann Sionneau <ysionneau@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: Jonathan Borne <jborne@kalrayinc.com>, Julian Vetter
 <jvetter@kalrayinc.com>, Jules Maselbas <jmaselbas@zdiv.net>, Yann Sionneau
 <ysionneau@kalrayinc.com>
Date: Thu, 29 Feb 2024 16:57:00 +0100
Message-ID: <20240229155700.17443-4-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240229155700.17443-1-ysionneau@kalrayinc.com>
References: <20240229155700.17443-1-ysionneau@kalrayinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_075726_930981_E7491B3E 
X-CRM114-Status: GOOD (  16.30  )
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
Subject: [PATCH 4/4] mci: dwcmshc-sdhci: add support for Kalray Coolidge v2
 SoC eMMC controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Kalray Coolidge v2 SoC eMMC controller needs static tx delay tuning even
for basic standard or high speed modes.

This patch also adds possibility to do some vendor specific tuning
in set_ios().
This will be needed for Coolidge v2 for >50 MHz speeds and HS200/HS400
modes.

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---
 drivers/mci/dwcmshc-sdhci.c | 40 +++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
index d9c51752db..5017a1f56e 100644
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
 
@@ -22,6 +27,13 @@ static int do_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_dat
 struct dwcmshc_host {
 	struct mci_host mci;
 	struct sdhci sdhci;
+	int vendor_specific_area;
+	const struct dwcmshc_callbacks *cb;
+};
+
+struct dwcmshc_callbacks {
+	void (*init)(struct mci_host *mci, struct device *dev);
+	void (*set_ios)(struct mci_host *mci, struct mci_ios *ios);
 };
 
 static inline struct dwcmshc_host *priv_from_mci_host(struct mci_host *h)
@@ -222,6 +234,9 @@ static void dwcmshc_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 		return;
 	}
 
+	if (host->cb && host->cb->set_ios)
+		host->cb->set_ios(mci, ios);
+
 	/* enable bus clock */
 	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, val | SDHCI_CLOCK_CARD_EN);
 }
@@ -253,6 +268,9 @@ static int dwcmshc_mci_init(struct mci_host *mci, struct device *dev)
 	dev_dbg(host->mci.hw_dev, "host version4: %s\n",
 		ctrl2 & SDHCI_CTRL_V4_MODE ? "enabled" : "disabled");
 
+	if (host->cb && host->cb->init)
+		host->cb->init(mci, dev);
+
 	return 0;
 }
 
@@ -284,6 +302,8 @@ static void dwcmshc_set_dma_mask(struct device *dev)
 
 static int dwcmshc_probe(struct device *dev)
 {
+	const struct dwcmshc_callbacks *dwcmshc_cb =
+			of_device_get_match_data(dev);
 	struct dwcmshc_host *host;
 	struct resource *iores;
 	struct mci_host *mci;
@@ -309,6 +329,7 @@ static int dwcmshc_probe(struct device *dev)
 	host->sdhci.base = IOMEM(iores->start);
 	host->sdhci.mci = mci;
 	host->sdhci.max_clk = clk_get_rate(clk);
+	host->cb = dwcmshc_cb;
 
 	mci->hw_dev = dev;
 	mci->init = dwcmshc_mci_init;
@@ -337,6 +358,10 @@ static int dwcmshc_probe(struct device *dev)
 	dev_dbg(host->mci.hw_dev, "host controller version: %u\n",
 		host->sdhci.version);
 
+	host->vendor_specific_area = sdhci_read32(&host->sdhci,
+						   SDHCI_P_VENDOR_SPEC_AREA);
+	host->vendor_specific_area &= SDHCI_P_VENDOR_SPEC_AREA_MASK;
+
 	ret = mci_register(&host->mci);
 	if (ret)
 		goto err_register;
@@ -354,8 +379,23 @@ static int dwcmshc_probe(struct device *dev)
 	return ret;
 }
 
+static void dwcmshc_coolidgev2_init(struct mci_host *mci, struct device *dev)
+{
+	struct dwcmshc_host *host = priv_from_mci_host(mci);
+
+	// configure TX delay to set correct setup/hold for Coolidge V2
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







