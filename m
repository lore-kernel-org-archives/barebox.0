Delivery-date: Sun, 16 Aug 2026 19:58:00 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvf7P-003pdc-2B
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 19:58:00 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E434F200444
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 19:57:59 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ql7t7RHq;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SAKIweKMtF0TVEv2BP0+OWzj47vCr+KdQXxzf1zRsGo=; b=ql7t7RHqcceNAtwYWe3SV9U5hf
	gTx9veCMzlTojJCgSFwu3pzBnCt6cCndJvNHl4rCYoBAGMaCxjlwdRcnWvFxrFGRP3cGiEJU+1Tm6
	Sps2D3t5agfRxW6Ncrb0Io7YKAIFd+wq+U2X0UeoMQRUlk/Tlla1Gt8KcY6CAYwTrHJZnz5Iyf2z6
	xA1akFCazK6E+zTAMQd0HaAEDw22YusthWQdT7297VaL1/kckmDZKBy7e86ICH/9CeeZIRSy2D/iD
	SeWzKWfE8tIOfLQ5WkVSEMIDnwoLATy6JgOuNeKPsgiDjYkn5zUrwzOthtbi5xgQVv2udmN60LKPd
	sc1x1/CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf63-00000004weJ-46Ix;
	Sun, 16 Aug 2026 17:56:35 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf5z-00000004wbo-2UXG
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 17:56:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 85349201B02;
	Sun, 16 Aug 2026 19:56:26 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-001oeR-19;
	Sun, 16 Aug 2026 19:56:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-0xRP;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:24 +0200
Subject: [PATCH 04/27] mci: pxamci: get the clock from the clk API
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-4-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=3417;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=WshHgLlxHpR6sxkBvrNx/TZJU/Fmg8KYjAEE6cUODsQ=;
 b=DGkpAxQi1OhWCR+79G4CLlETK/CSDkohl9XeMgzWCpqSy+R/mV3+MEChplavZ/oYJlauC7EVC
 hXByen/nuIgAvcnpcD7NWCEjvCn01oVG9ZZR1Irzi31Tt+DSiAXg+J5
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_105631_791087_B0B414B5 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The driver enabled its clock by poking CKEN directly and asked
    pxa_get_mmcclk() for the rate. Use the clk api to handle the clocks. A clk
    driver for PXA is not yet present in the tree, but PXA has no board support
    currently, so we can safely break bisectability here. 
 
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
X-Stat-Signature: rnnnfjxai8kxok61xoj5z7wcpn7gn41o
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
X-Rspamd-Queue-Id: E434F200444

The driver enabled its clock by poking CKEN directly and asked
pxa_get_mmcclk() for the rate. Use the clk api to handle the clocks.

A clk driver for PXA is not yet present in the tree, but PXA has
no board support currently, so we can safely break bisectability
here.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/Kconfig  |  4 ++--
 drivers/mci/pxamci.c | 25 +++++++++++++++----------
 drivers/mci/pxamci.h |  1 +
 3 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 55e63aad92..2c3365e723 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -192,10 +192,10 @@ config MCI_OMAP_HSMMC
 
 config MCI_PXA
 	bool "PXA"
-	depends on ARCH_PXA2XX
+	depends on ARCH_PXA
 	help
 	  Enable this entry to add support to read and write SD cards on a
-	  XScale PXA25x / PXA27x based system.
+	  XScale PXA3xx based system.
 
 config MCI_ATMEL
 	bool "ATMEL (AT91)"
diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index 1f2aaf2031..5e26022729 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -14,8 +14,8 @@
 #include <init.h>
 #include <mci.h>
 #include <linux/err.h>
+#include <linux/clk.h>
 
-#include <mach/pxa/clock.h>
 #include <mach/pxa/mci_pxa2xx.h>
 #include <mach/pxa/pxa-regs.h>
 #include "pxamci.h"
@@ -26,11 +26,6 @@
 #define TX_TIMEOUT (250 * MSECOND)
 #define CMD_TIMEOUT (100 * MSECOND)
 
-static void mmc_clk_enable(void)
-{
-	CKEN |= CKEN_MMC;
-}
-
 static int pxamci_set_power(struct pxamci_host *host, int on)
 {
 	mci_dbg("on=%d\n", on);
@@ -272,7 +267,7 @@ static int pxamci_request(struct mci_host *mci, struct mci_cmd *cmd)
 static void pxamci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct pxamci_host *host = to_pxamci(mci);
-	unsigned int clk_in = pxa_get_mmcclk();
+	unsigned int clk_in = clk_get_rate(host->clk);
 	int fact;
 
 	mci_dbg("bus_width=%d, clock=%u\n", ios->bus_width, ios->clock);
@@ -326,15 +321,24 @@ static int pxamci_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct pxamci_host *host;
+	unsigned long rate;
 	int gpio_power = -1;
+	int ret;
 
-	mmc_clk_enable();
 	host = xzalloc(sizeof(*host));
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 	host->base = IOMEM(iores->start);
 
+	host->clk = clk_get(dev, NULL);
+	if (IS_ERR(host->clk))
+		return PTR_ERR(host->clk);
+
+	ret = clk_enable(host->clk);
+	if (ret)
+		return ret;
+
 	host->mci.ops = pxamci_ops;
 	host->mci.host_caps = MMC_CAP_4_BIT_DATA;
 	host->mci.hw_dev = dev;
@@ -343,8 +347,9 @@ static int pxamci_probe(struct device *dev)
 	/*
 	 * Calculate minimum clock rate, rounding up.
 	 */
-	host->mci.f_min = pxa_get_mmcclk() >> 6;
-	host->mci.f_max = pxa_get_mmcclk();
+	rate = clk_get_rate(host->clk);
+	host->mci.f_min = rate >> 6;
+	host->mci.f_max = rate;
 
 	/*
 	 * Ensure that the host controller is shut down, and setup
diff --git a/drivers/mci/pxamci.h b/drivers/mci/pxamci.h
index 3dd93cb267..30119a5607 100644
--- a/drivers/mci/pxamci.h
+++ b/drivers/mci/pxamci.h
@@ -78,6 +78,7 @@ struct pxamci_host {
 	struct mci_host			mci;
 	void __iomem			*base;
 	struct pxamci_platform_data	*pdata;
+	struct clk			*clk;
 
 	unsigned int			cmdat;
 	int				clkrt;

-- 
2.47.3



