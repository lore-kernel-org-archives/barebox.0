Delivery-date: Mon, 11 May 2026 14:09:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPSR-000Xq9-1o
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 14:09:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPSL-0007MJ-FL
	for lore@pengutronix.de; Mon, 11 May 2026 14:09:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iGwWANiCZh+hDJJjJZWPdtuDURZg1qZaj5YFsCgdCsE=; b=HRHcVhP+N1O1MFRrkIzK/O8yRc
	56z6KWtruq2hxZwFRZNEYVmZmUSIy3jOD60q2TxM0K4lh7w5nmaThjd6gna4/b9AotC7v9yi/8Sqe
	U3TeQivx1arPkVeJY4nGnj25uS4CjJWksDLZ/5/2nbcLw5svfL3kqRSxoRfkajuDSyC1ZJooTjtZj
	z8SuzMJvAdo5PuZAtFAiq4c0KLnDUmMc9pwjhLQZpe0VFjiR+1koGr3UrYy+yAPc/o8Y6+pB71ruO
	KW4ocbjaPlE0Qfi0/6xaTgxkXKTHTOFG/KnMbW0s7pfsZVFwQpTIpUUWSmJuMDHfOUJsHm5a9ImKL
	yo8mgVPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPQr-0000000DSxi-0Bd8;
	Mon, 11 May 2026 12:08:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPQm-0000000DStf-19hm
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 12:08:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-0006bG-Qf; Mon, 11 May 2026 14:08:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQb-000FTQ-2E;
	Mon, 11 May 2026 14:08:06 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-00000008pO6-1Aaf;
	Mon, 11 May 2026 14:08:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 May 2026 14:08:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-rockchip-emmc-hs400-v1-8-515fb6d20e12@pengutronix.de>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778501286; l=4300;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rPaO/1atdWeId89bMZkpJ183WOk5NuJS0A2elRqksUU=;
 b=Zky44NcmiYlAdy6w3d6FMsZOBLN0cMZbn1lb75SP+uujbmvpt1pYnfZAz5tBuQSsICdzLUcmi
 IRtqDhuYsf/DQTw/2pif/pYzPGzFtioWRKIl0+oJexw1ioln+zJBKgF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_050817_401101_77A2A8BD 
X-CRM114-Status: GOOD (  15.78  )
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
Cc: "Claude Opus 4.7" <noreply@anthropic.com>
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
Subject: [PATCH 08/10] mci: sdhci: rockchip: distinguish IP revision 0
 (rk3568) from 1 (rk3576/rk3588)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The dwcmshc IP comes in two revisions with subtly different DLL needs.
Upstream Linux (sdhci-of-dwcmshc.c) tracks this via a per-SoC
revision field; mirror that here so HS400 works robustly on rk3588
and we can add rk3576 with the right behaviour.

Revision 0 (rk3566, rk3568):
  - DLL_RXCLK source-select needs DLL_RXCLK_NO_INVERTER.
  - HS400 uses the default 0x10 TX clock tap and leaves
    DECMSHC_EMMC_DLL_CMDOUT untouched.

Revision 1 (rk3576, rk3588, ...):
  - DLL_RXCLK source-select must be 0 (inverted), not NO_INVERTER.
  - HS400 needs a 90-degree TX clock tap together with a matching
    CMDOUT tap programmed into DECMSHC_EMMC_DLL_CMDOUT (with
    DLL_CMDOUT_SRC_CLK_NEG | DLL_CMDOUT_EN_SRC_CLK_NEG |
    DWCMSHC_EMMC_DLL_DLYENA | DLL_CMDOUT_TAPNUM_90_DEGREES |
    DLL_CMDOUT_TAPNUM_FROM_SW).

Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 60 +++++++++++++++++++++++++++++++-----
 1 file changed, 52 insertions(+), 8 deletions(-)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index fa2d9964a5..4b2ee03e9a 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -78,10 +78,23 @@ enum {
 	CLK_MAX,
 };
 
+struct rk_sdhci_soc_data {
+	u8 revision;
+};
+
+static const struct rk_sdhci_soc_data rk_sdhci_rk3568_data = {
+	.revision = 0,
+};
+
+static const struct rk_sdhci_soc_data rk_sdhci_rk35xx_data = {
+	.revision = 1,
+};
+
 struct rk_sdhci_host {
 	struct mci_host		mci;
 	struct sdhci		sdhci;
 	struct clk_bulk_data	clks[CLK_MAX];
+	const struct rk_sdhci_soc_data *soc;
 };
 
 
@@ -132,9 +145,14 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 
 	host->mci.ios.clock = 0;
 
-	/* DO NOT TOUCH THIS SETTING */
-	extra = DWCMSHC_EMMC_DLL_DLYENA |
-		DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL;
+	/*
+	 * Revision 0 IPs (rk3568) need DLL_RXCLK_NO_INVERTER; revision 1
+	 * (rk3576, rk3588 and later) must leave the source-select field at
+	 * 0 (inverted).
+	 */
+	extra = DWCMSHC_EMMC_DLL_DLYENA;
+	if (host->soc->revision == 0)
+		extra |= DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL;
 	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_RXCLK, extra);
 
 	if (clock == 0)
@@ -210,6 +228,23 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 		0x3 << 19;  /* post-change delay */
 	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_ATCTRL, extra);
 
+	/*
+	 * On revision 1 IPs, HS400 needs a 90-degree TX clock tap together
+	 * with a matching CMDOUT-tap programmed via DECMSHC_EMMC_DLL_CMDOUT.
+	 * Revision 0 keeps the default 0x10 TX tap and leaves CMDOUT alone.
+	 */
+	if (host->soc->revision == 1 &&
+	    host->mci.ios.timing == MMC_TIMING_MMC_HS400) {
+		txclk_tapnum = DLL_TXCLK_TAPNUM_90_DEGREES;
+
+		extra = DLL_CMDOUT_SRC_CLK_NEG |
+			DLL_CMDOUT_EN_SRC_CLK_NEG |
+			DWCMSHC_EMMC_DLL_DLYENA |
+			DLL_CMDOUT_TAPNUM_90_DEGREES |
+			DLL_CMDOUT_TAPNUM_FROM_SW;
+		sdhci_write32(&host->sdhci, DECMSHC_EMMC_DLL_CMDOUT, extra);
+	}
+
 	extra = DWCMSHC_EMMC_DLL_DLYENA |
 		DLL_TXCLK_TAPNUM_FROM_SW |
 		DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL |
@@ -327,6 +362,10 @@ static int rk_sdhci_probe(struct device *dev)
 
 	mci = &host->mci;
 
+	host->soc = device_get_match_data(dev);
+	if (!host->soc)
+		return -ENODEV;
+
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
@@ -374,12 +413,17 @@ static int rk_sdhci_probe(struct device *dev)
 
 static __maybe_unused struct of_device_id rk_sdhci_compatible[] = {
 	{
-		.compatible = "rockchip,rk3562-dwcmshc"
-	},
-	{
-		.compatible = "rockchip,rk3568-dwcmshc"
+		.compatible = "rockchip,rk3562-dwcmshc",
+		.data = &rk_sdhci_rk3568_data,
+	}, {
+		.compatible = "rockchip,rk3568-dwcmshc",
+		.data = &rk_sdhci_rk3568_data,
+	}, {
+		.compatible = "rockchip,rk3576-dwcmshc",
+		.data = &rk_sdhci_rk35xx_data,
 	}, {
-		.compatible = "rockchip,rk3588-dwcmshc"
+		.compatible = "rockchip,rk3588-dwcmshc",
+		.data = &rk_sdhci_rk35xx_data,
 	}, {
 		/* sentinel */
 	}

-- 
2.47.3



