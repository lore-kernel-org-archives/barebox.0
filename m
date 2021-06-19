Delivery-date: Sat, 19 Jun 2021 06:57:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT2h-0004fa-QO
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:57:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT2g-0002LV-Rf
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:57:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TVxLhQJe+N13BwPgx8nEv0Xbmrblz/hYxhv/YakLOQ=; b=gY1DAW77REQIhR
	5kDrfgMmRiN1GZZARt87oII0aIjvZrgzQcrCbZNq25tygaLJNuJLRSUmDbXFPES2QsisxTPsMrUJE
	aP8k5QXGEQ31Gr9adFBs5cEv1iV2MLkkdCRaXoAS7rTm1XoCSNuTtjNQxe03t/CLgh031GN3jajCa
	TOJa37U6c086UxB2mnLJf1cOJ1+1Lf6hcfcegXzkcMDKeDycHQ+V5CPP1LvUINBIaIJXnBVu2KfkS
	TLenSAyZ8loqd6fA9T8dcoATXKYULOk0zdplqKiw0MMXhg98GIUmrAHOQ4swbGjkPTbIsLhnAHH6T
	/bMb03J9qyT3YtBaFOHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luT1F-00GKVA-BO; Sat, 19 Jun 2021 04:55:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSx6-00GHuC-U3
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008MH-Dd; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001LP-UA; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:46 +0200
Message-Id: <20210619045055.779-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215129_041103_7FC7C3B4 
X-CRM114-Status: GOOD (  13.32  )
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
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 20/29] mci: dw_mmc: add optional reset line
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The bindings describe a reset line for the MMC controller and we have
boards with device tree that contain a reset line that barebox has so
far never acted upon. For the StarFive, we need the reset, so have the
driver toggle it optionally if specified. This change wasn't tested
on existing users of the driver, like the SoCFPGA or the Rockchip
rk2928 and rk3288.

Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/dw_mmc.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 930b538adc15..ad1d2a06b914 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -17,6 +17,7 @@
 #include <io.h>
 #include <platform_data/dw_mmc.h>
 #include <linux/bitops.h>
+#include <linux/reset.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <errno.h>
@@ -548,6 +549,7 @@ static int dwmci_init(struct mci_host *mci, struct device_d *dev)
 
 static int dw_mmc_probe(struct device_d *dev)
 {
+	struct reset_control	*rst;
 	struct resource *iores;
 	struct dwmci_host *host;
 	struct dw_mmc_platform_data *pdata = dev->platform_data;
@@ -568,6 +570,15 @@ static int dw_mmc_probe(struct device_d *dev)
 	clk_enable(host->clk_biu);
 	clk_enable(host->clk_ciu);
 
+	rst = reset_control_get(dev, "reset");
+	if (IS_ERR(rst)) {
+		dev_warn(dev, "error claiming reset: %pe\n", rst);
+	} else if (rst) {
+		reset_control_assert(rst);
+		udelay(10);
+		reset_control_deassert(rst);
+	}
+
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

