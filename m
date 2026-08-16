Delivery-date: Sun, 16 Aug 2026 20:02:32 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfBn-003pjJ-1v
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:02:32 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D5BD4201CD3
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:02:31 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NVISU9tz;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MBgWTOkpefe63lgbJL40VOVdZxezHdzHHxJnwtexeK4=; b=NVISU9tzjZbv8jjXjNUOyKx2ap
	thTn4ilVdW91gXw+hoHXsHVlNtPdPb3EZriO7r/9k9ZVmrC4kyZbrSOHVL457EtXKxNVRUIq75CK0
	cFx7arMtj1r/v8np/tjXVKWgf+oxnHSMr6pbwNkccVe4B1aOxJCRcumV+IG5I3d4+xlpPOSZRqpIn
	W9Y0K3Ytne9doAgg3V5cXB7Ri+87aYjwS+w+PpXsFWHehXjFmCCTGbBnblRc8oom0iP/MH8JTJD01
	TVFTle6M8NWLvTXvT34N/3RRvj40KHxB2VuiF3RXLDSQWLYjOwlc5DqR+6GQXBBDp105MW0qpye2U
	Pi2rItlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBO-00000004xR7-3CtK;
	Sun, 16 Aug 2026 18:02:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBI-00000004xLX-1ceg
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 18:02:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C84A4201CD8;
	Sun, 16 Aug 2026 20:01:58 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvfBG-001orX-2N;
	Sun, 16 Aug 2026 20:01:58 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-151I;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:32 +0200
Subject: [PATCH 12/27] mci: pxamci: probe from the device tree
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-12-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=4604;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9PgKvk8u3B7i7EXsdlvJs0LJ9pe/kyixJUeNnnHKSs0=;
 b=SeUGFFC3N5qUWFGa2xIuuX/ihp1GD2BHOvEsUMKGblKBVmwMbapGE6Jivw3rVOP3CakXo2n/v
 yKIyka6el6pCW1jLyzVSdU8oe9kOHZFGPkJWp8/+5ahjIABTV0epS6G
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_110200_740613_4B2ABD72 
X-CRM114-Status: GOOD (  20.99  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The driver was probed by name only and took its configuration
    from platform data. Nothing in tree ever registered that platform data, so
    the gpio_power / setpower / init hooks were dead code, and the [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: g5694g3kdfa8beca45ekbcit5pjawyg5
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: D5BD4201CD3

The driver was probed by name only and took its configuration from
platform data. Nothing in tree ever registered that platform data, so the
gpio_power / setpower / init hooks were dead code, and the driver could
not be used from a device tree at all.

Match "marvell,pxa-mmc" and let mci_of_parse() pick up bus-width and the
other generic properties. The power switching goes away with the platform
data: the MCI core already gets a "vmmc" regulator from the device tree,
which is how the supply is described upstream.

mci_ops.init() stays, now as a stub: mci_card_probe() calls it without
checking it for NULL.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/pxamci.c          | 47 +++++++++++++++++--------------------------
 drivers/mci/pxamci.h          |  1 -
 include/mach/pxa/mci_pxa2xx.h | 12 -----------
 3 files changed, 18 insertions(+), 42 deletions(-)

diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index 5e26022729..236d4d97b4 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -13,10 +13,10 @@
 #include <clock.h>
 #include <init.h>
 #include <mci.h>
+#include <of.h>
 #include <linux/err.h>
 #include <linux/clk.h>
 
-#include <mach/pxa/mci_pxa2xx.h>
 #include <mach/pxa/pxa-regs.h>
 #include "pxamci.h"
 
@@ -26,18 +26,6 @@
 #define TX_TIMEOUT (250 * MSECOND)
 #define CMD_TIMEOUT (100 * MSECOND)
 
-static int pxamci_set_power(struct pxamci_host *host, int on)
-{
-	mci_dbg("on=%d\n", on);
-	if (host->pdata && host->pdata->gpio_power > 0)
-		gpio_set_value(host->pdata->gpio_power,
-			       !!on ^ host->pdata->gpio_power_invert);
-	else if (host->pdata && host->pdata->setpower)
-		host->pdata->setpower(&host->mci, on);
-	mdelay(250);
-	return 0;
-}
-
 static void pxamci_start_clock(struct pxamci_host *host)
 {
 	mmc_writel(START_CLOCK, MMC_STRPCL);
@@ -297,17 +285,16 @@ static void pxamci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 
 	host->cmdat |= CMDAT_INIT;
 
-	pxamci_set_power(host, 1);
 	pxamci_stop_clock(host);
 	mmc_writel(host->clkrt, MMC_CLKRT);
 }
 
+/*
+ * The MCI core calls this unconditionally, so it has to exist even though
+ * there is nothing left to do here since the platform data went away.
+ */
 static int pxamci_init(struct mci_host *mci, struct device *dev)
 {
-	struct pxamci_host *host = to_pxamci(mci);
-
-	if (host->pdata && host->pdata->init)
-		return host->pdata->init(mci, dev);
 	return 0;
 }
 
@@ -322,7 +309,6 @@ static int pxamci_probe(struct device *dev)
 	struct resource *iores;
 	struct pxamci_host *host;
 	unsigned long rate;
-	int gpio_power = -1;
 	int ret;
 
 	host = xzalloc(sizeof(*host));
@@ -344,6 +330,8 @@ static int pxamci_probe(struct device *dev)
 	host->mci.hw_dev = dev;
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
+	mci_of_parse(&host->mci);
+
 	/*
 	 * Calculate minimum clock rate, rounding up.
 	 */
@@ -360,20 +348,21 @@ static int pxamci_probe(struct device *dev)
 	mmc_writel(64, MMC_RESTO);
 	mmc_writel(0, MMC_I_MASK);
 
-	host->pdata = dev->platform_data;
-	if (host->pdata)
-		gpio_power = host->pdata->gpio_power;
-
-	if (gpio_power > 0)
-		gpio_direction_output(gpio_power,
-				      host->pdata->gpio_power_invert);
-
-	mci_register(&host->mci);
-	return 0;
+	return mci_register(&host->mci);
 }
 
+static __maybe_unused struct of_device_id pxamci_dt_ids[] = {
+	{
+		.compatible = "marvell,pxa-mmc",
+	}, {
+		/* sentinel */
+	}
+};
+MODULE_DEVICE_TABLE(of, pxamci_dt_ids);
+
 static struct driver pxamci_driver = {
 	.name  = DRIVER_NAME,
 	.probe = pxamci_probe,
+	.of_compatible = DRV_OF_COMPAT(pxamci_dt_ids),
 };
 device_platform_driver(pxamci_driver);
diff --git a/drivers/mci/pxamci.h b/drivers/mci/pxamci.h
index 30119a5607..1879d9603b 100644
--- a/drivers/mci/pxamci.h
+++ b/drivers/mci/pxamci.h
@@ -77,7 +77,6 @@
 struct pxamci_host {
 	struct mci_host			mci;
 	void __iomem			*base;
-	struct pxamci_platform_data	*pdata;
 	struct clk			*clk;
 
 	unsigned int			cmdat;
diff --git a/include/mach/pxa/mci_pxa2xx.h b/include/mach/pxa/mci_pxa2xx.h
deleted file mode 100644
index 299e543479..0000000000
--- a/include/mach/pxa/mci_pxa2xx.h
+++ /dev/null
@@ -1,12 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-
-struct mci_host;
-struct device;
-
-struct pxamci_platform_data {
-	int gpio_power;
-	int gpio_power_invert;
-	int (*init)(struct mci_host*, struct device*);
-	int (*setpower)(struct mci_host*, int on);
-};

-- 
2.47.3



