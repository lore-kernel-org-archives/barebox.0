Delivery-date: Tue, 30 May 2023 13:20:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOY-002jzq-P6
	for lore@lore.pengutronix.de; Tue, 30 May 2023 13:20:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOW-0001ZK-4T
	for lore@pengutronix.de; Tue, 30 May 2023 13:20:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yBcd5Ytk5PB8JxAVfdQrad1l3N6wR00q4T1/+V+Ou80=; b=cFeZ3YRDK5fKydq9R+sJkmpMmg
	APnAINsJ2FYQQMDZEkvsKRxnnR8BYCxTpTJnWsACC0l9txIrjZhzxI5iTae7QcLVpLMx5sI33Kqql
	ejFslm+qyUxMG7EE5P0BopocXr43QC0FXP7h5CqISVUQPNfOuuTiuPJqdYoUxtntqlq0vID80Tn5f
	ZOECt7dVyLq/9ofnUn1zihH6+z8T81iclD5up7lIEKADwvA/4rNTR463IYxavwutZCkBk4DsNUytw
	syGgPpMVCMYaOEx6hK8j1s5lHVd6EC93ls9zjuxLVyvjF2b8JXCiuViSnFOx/A7OdHqUnf5mMH3Vm
	HicMue8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNH-00Dbnv-1e;
	Tue, 30 May 2023 11:18:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNA-00Dbir-1f
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 11:18:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN6-00014Z-Jp; Tue, 30 May 2023 13:18:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN5-003rOe-St; Tue, 30 May 2023 13:18:35 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN3-0082bC-O5; Tue, 30 May 2023 13:18:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 May 2023 13:18:29 +0200
Message-Id: <20230530111832.1916542-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230530111832.1916542-1-s.hauer@pengutronix.de>
References: <20230530111832.1916542-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_041840_618771_B5BE62A4 
X-CRM114-Status: GOOD (  16.38  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/10] mci: rockchip-dwcmshc-sdhci: enable DLL only for clock >= 52MHz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

According to the Kernel the DLL should only be enabled for clock
frequencies higher than 52MHz. Do likewise in barebox. Without this
we get

ERROR: rk3568-dwcmshc-sdhci fe2e0000.mmc@fe2e0000.of: DLL lock timeout!

On a RK3588.

The patch is bigger than it actually needs to be. We are updating
register defines with it and move the "Disable cmd conflict check"
block further up to bring the code closer to the corresponding kernel
code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 52 ++++++++++++++++++++++------
 1 file changed, 41 insertions(+), 11 deletions(-)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index a935e921b1..c44f5731ca 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -25,21 +25,32 @@
 #define DWCMSHC_EMMC_DLL_RXCLK		0x804
 #define DWCMSHC_EMMC_DLL_TXCLK		0x808
 #define DWCMSHC_EMMC_DLL_STRBIN		0x80c
+#define DECMSHC_EMMC_DLL_CMDOUT		0x810
 #define DWCMSHC_EMMC_DLL_STATUS0	0x840
 #define DWCMSHC_EMMC_DLL_START		BIT(0)
+#define DWCMSHC_EMMC_DLL_LOCKED		BIT(8)
+#define DWCMSHC_EMMC_DLL_TIMEOUT	BIT(9)
 #define DWCMSHC_EMMC_DLL_RXCLK_SRCSEL	29
 #define DWCMSHC_EMMC_DLL_START_POINT	16
 #define DWCMSHC_EMMC_DLL_INC		8
+#define DWCMSHC_EMMC_DLL_BYPASS		BIT(24)
 #define DWCMSHC_EMMC_DLL_DLYENA		BIT(27)
-#define DLL_TXCLK_TAPNUM_DEFAULT	0x8
-#define DLL_STRBIN_TAPNUM_DEFAULT	0x8
+#define DLL_TXCLK_TAPNUM_DEFAULT	0x10
+#define DLL_TXCLK_TAPNUM_90_DEGREES	0xA
 #define DLL_TXCLK_TAPNUM_FROM_SW	BIT(24)
+#define DLL_STRBIN_TAPNUM_DEFAULT	0x8
 #define DLL_STRBIN_TAPNUM_FROM_SW	BIT(24)
-#define DWCMSHC_EMMC_DLL_LOCKED		BIT(8)
-#define DWCMSHC_EMMC_DLL_TIMEOUT	BIT(9)
+#define DLL_STRBIN_DELAY_NUM_SEL	BIT(26)
+#define DLL_STRBIN_DELAY_NUM_OFFSET	16
+#define DLL_STRBIN_DELAY_NUM_DEFAULT	0x16
 #define DLL_RXCLK_NO_INVERTER		1
 #define DLL_RXCLK_INVERTER		0
-#define DWCMSHC_ENHANCED_STROBE		BIT(8)
+#define DLL_CMDOUT_TAPNUM_90_DEGREES	0x8
+#define DLL_RXCLK_ORI_GATE		BIT(31)
+#define DLL_CMDOUT_TAPNUM_FROM_SW	BIT(24)
+#define DLL_CMDOUT_SRC_CLK_NEG		BIT(28)
+#define DLL_CMDOUT_EN_SRC_CLK_NEG	BIT(29)
+
 #define DLL_LOCK_WO_TMOUT(x) \
 	((((x) & DWCMSHC_EMMC_DLL_LOCKED) == DWCMSHC_EMMC_DLL_LOCKED) && \
 	(((x) & DWCMSHC_EMMC_DLL_TIMEOUT) == 0))
@@ -137,8 +148,32 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 
 	sdhci_set_clock(&host->sdhci, clock, clk_get_rate(host->clks[CLK_CORE].clk));
 
-	if (clock <= 400000)
+	/* Disable cmd conflict check */
+	extra = sdhci_read32(&host->sdhci, DWCMSHC_HOST_CTRL3);
+	extra &= ~BIT(0);
+	sdhci_write32(&host->sdhci, DWCMSHC_HOST_CTRL3, extra);
+
+	if (clock <= 52000000) {
+		/*
+		 * Disable DLL and reset both of sample and drive clock.
+		 * The bypass bit and start bit need to be set if DLL is not locked.
+		 */
+		sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_CTRL,
+			      DWCMSHC_EMMC_DLL_BYPASS | DWCMSHC_EMMC_DLL_START);
+		sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_RXCLK, DLL_RXCLK_ORI_GATE);
+		sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_TXCLK, 0);
+		sdhci_write32(&host->sdhci, DECMSHC_EMMC_DLL_CMDOUT, 0);
+		/*
+		 * Before switching to hs400es mode, the driver will enable
+		 * enhanced strobe first. PHY needs to configure the parameters
+		 * of enhanced strobe first.
+		 */
+		extra = DWCMSHC_EMMC_DLL_DLYENA |
+			DLL_STRBIN_DELAY_NUM_SEL |
+			DLL_STRBIN_DELAY_NUM_DEFAULT << DLL_STRBIN_DELAY_NUM_OFFSET;
+		sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_STRBIN, extra);
 		return;
+        }
 
 	/* Reset DLL */
 	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_CTRL, BIT(1));
@@ -158,11 +193,6 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 		return;
 	}
 
-	/* Disable cmd conflict check */
-	extra = sdhci_read32(&host->sdhci, DWCMSHC_HOST_CTRL3);
-	extra &= ~BIT(0);
-	sdhci_write32(&host->sdhci, DWCMSHC_HOST_CTRL3, extra);
-
 	extra = 0x1 << 16 | /* tune clock stop en */
 		0x2 << 17 | /* pre-change delay */
 		0x3 << 19;  /* post-change delay */
-- 
2.39.2



