Delivery-date: Mon, 18 May 2026 16:55:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOzNS-001AXO-2x
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 16:55:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOzNS-00073U-Ak
	for lore@pengutronix.de; Mon, 18 May 2026 16:55:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LM4pjpmw0yNfTApn5ysCVvOqhi4PkWqXeaJt4YmDQrA=; b=tj1q20a9mCX+LAJ4xHXYQ4OdGU
	9DcvDlOeTs91yNAex6k3ZdVguJreiICrIkjubq6DDeEToExXoZuNOmhnNbRgn6pXnsVQ/21G7PSp/
	ipxuAzuKAMjGwkwoREQ1e90AHBHLXv379XLuinS6IMQJuerADvLl8HJHJhcUATTt1ES4rB2fPjTzb
	WrjGSvT5087V5JDJ9yLDUQlxuejt+TzQP8jkF7UhoFUcbfPq4X5Y3riprI8lumunKZBZuQ4rQo8Qs
	gnhFmrhCLg7XX/Cjl9w0k0tor0tKroMh8xG8N1cNeOo2qXMrK+vbHqyaMcPNyjgz9h18BG98uDZeo
	xBr75QuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOy5Z-0000000FpFr-33OS;
	Mon, 18 May 2026 13:32:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOy5X-0000000FpF5-1H36
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 13:32:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOy5V-00059N-8E; Mon, 18 May 2026 15:32:53 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOy5U-000bSk-23;
	Mon, 18 May 2026 15:32:53 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOxmr-000000000ZS-46uW;
	Mon, 18 May 2026 15:13:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 May 2026 15:13:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260518-rockchip-emmc-hs400-v2-10-789ce495f70b@pengutronix.de>
References: <20260518-rockchip-emmc-hs400-v2-0-789ce495f70b@pengutronix.de>
In-Reply-To: <20260518-rockchip-emmc-hs400-v2-0-789ce495f70b@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779110017; l=1761;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=4iXc9qwscSqh9FXc6atMyxr+/dkTO3qK+Ju1vq08D1U=;
 b=bDuWm3/Yjz78uhzt4/ML3f7iwNmTPsyDc6kGMrN3/oip2Qaerjmv7vq9tUG3+dNcfYgU23OnB
 EDPoZMp344kBH79vyoDgITHzxjsfslo2U50AU2OtdqXLoHuMGBB7gfV
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_063255_356913_B54BE2B0 
X-CRM114-Status: GOOD (  10.15  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/10] mci: sdhci: rockchip: support HS400 Enhanced
 Strobe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Implement the hs400_enhanced_strobe op so the dwcmshc controller
samples on the eMMC strobe instead of the source clock when in
HS400ES. The bit lives at EMMC_CONTROL[8] (DWCMSHC_ENHANCED_STROBE)
in the same vendor area register that already holds CARD_IS_EMMC.

Assisted-by: Claude Opus 4.7
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 2b55456f05..408b1e544a 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -19,6 +19,7 @@
 #define DWCMSHC_HOST_CTRL3		0x508
 #define DWCMSHC_EMMC_CONTROL		0x52c
 #define  DWCMSHC_CARD_IS_EMMC		BIT(0)
+#define  DWCMSHC_ENHANCED_STROBE	BIT(8)
 #define DWCMSHC_EMMC_ATCTRL		0x540
 
 /* Rockchip specific Registers */
@@ -363,12 +364,24 @@ static int rk_sdhci_execute_tuning(struct mci_host *mci, u32 opcode)
 	return sdhci_execute_tuning(&host->sdhci, opcode);
 }
 
+static void rk_sdhci_hs400_enhanced_strobe(struct mci_host *mci,
+					   struct mci_ios *ios)
+{
+	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
+	u32 val;
+
+	val = sdhci_read32(&host->sdhci, DWCMSHC_EMMC_CONTROL);
+	val |= DWCMSHC_ENHANCED_STROBE;
+	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_CONTROL, val);
+}
+
 static const struct mci_ops rk_sdhci_ops = {
 	.send_cmd = rk_sdhci_send_cmd,
 	.set_ios = rk_sdhci_set_ios,
 	.init = rk_sdhci_init,
 	.card_present = rk_sdhci_card_present,
 	.execute_tuning = rk_sdhci_execute_tuning,
+	.hs400_enhanced_strobe = rk_sdhci_hs400_enhanced_strobe,
 };
 
 static int rk_sdhci_probe(struct device *dev)

-- 
2.47.3



