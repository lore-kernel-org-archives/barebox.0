Delivery-date: Thu, 28 May 2026 14:30:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSZsX-004jnZ-0i
	for lore@lore.pengutronix.de;
	Thu, 28 May 2026 14:30:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSZsW-000598-JP
	for lore@pengutronix.de; Thu, 28 May 2026 14:30:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NB0x1vHvE6R/Inqh9h7j34ctOle9Pt+DVM4jst7d7gU=; b=Q3XbYUazM4UPDX
	jW+vfszdmFB1r/a14L2+E1NkOQ8FZVZCTHh2cHG/hlgoQDsBOTR7tdllswMJ5KD84fsn1uGzUpyr4
	G5hXemU4UIVsfi0S3aD2P941FxNVcQe06diTBoJB0PN28ehwfVcGWYH28rzy7dhsy4kY8T/fZfBap
	C4w7qzplxOAKb2yU/cbPUrGDg1LhCYe56BYbESr6625sAxxYsMQ/SjfaE+nEQutK4lofmYbfyDRv+
	p6CD7ayL4hK3c+DVQARX6vFZvuFPiWdmnYE0PMgA0vcZWgse57/dM3uN3l1LCTYgJ94GoClrKhrlT
	wiCteaxt/CNelbbdI5Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSZrI-00000005iTC-0QiV;
	Thu, 28 May 2026 12:29:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSZrF-00000005iSi-0LTX
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 12:29:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSZrD-0004yk-G8; Thu, 28 May 2026 14:29:03 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSZrC-002Gqy-2X;
	Thu, 28 May 2026 14:29:03 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSZrD-0000000EmoJ-0t87;
	Thu, 28 May 2026 14:29:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 28 May 2026 14:29:02 +0200
Message-ID: <20260528122902.3523883-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_052905_143326_4FE06C78 
X-CRM114-Status: GOOD (  11.98  )
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
Cc: Lucas Sinn <lucas.sinn@wolfvision.net>
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
Subject: [PATCH] drivers: mci: rockchip: fix HS400 DLL strobe and clock gate config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Lucas Sinn <lucas.sinn@wolfvision.net>

Align two register writes with the Linux kernel (sdhci-of-dwcmshc.c):

- DLL_STRBIN_TAPNUM_DEFAULT: 0x8 -> 0x4
  The strobe tap number was twice the value used by Linux, placing the
  DS sampling point at the wrong phase at 200 MHz and causing DMA
  timeouts in HS400/HS400-ES mode.

- DWCMSHC_HOST_CTRL3: also disable the internal clock gate (BIT(4))
  Linux clears both the cmd-conflict-check bit (BIT(0)) and the
  internal-clock-gate bit (BIT(4)). Without disabling the clock gate
  the DLL could stall during high-speed operation.

Assisted-by: Claude Sonnet 4.6
Signed-off-by: Lucas Sinn <lucas.sinn@wolfvision.net>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 0be5d9ff63..8e828a1f1b 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -40,7 +40,7 @@
 #define DLL_TXCLK_TAPNUM_DEFAULT	0x10
 #define DLL_TXCLK_TAPNUM_90_DEGREES	0xA
 #define DLL_TXCLK_TAPNUM_FROM_SW	BIT(24)
-#define DLL_STRBIN_TAPNUM_DEFAULT	0x8
+#define DLL_STRBIN_TAPNUM_DEFAULT	0x4
 #define DLL_STRBIN_TAPNUM_FROM_SW	BIT(24)
 #define DLL_STRBIN_DELAY_NUM_SEL	BIT(26)
 #define DLL_STRBIN_DELAY_NUM_OFFSET	16
@@ -177,9 +177,10 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 
 	sdhci_set_clock(&host->sdhci, clock, clk_get_rate(host->clks[CLK_CORE].clk));
 
-	/* Disable cmd conflict check */
+	/* Disable cmd conflict check and internal clock gate */
 	extra = sdhci_read32(&host->sdhci, DWCMSHC_HOST_CTRL3);
 	extra &= ~BIT(0);
+	extra |= BIT(4);
 	sdhci_write32(&host->sdhci, DWCMSHC_HOST_CTRL3, extra);
 
 	/* Disable clock while config DLL */
-- 
2.47.3



