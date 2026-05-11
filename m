Delivery-date: Mon, 11 May 2026 14:33:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPpX-000YMQ-2v
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 14:33:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPpV-0004wU-F3
	for lore@pengutronix.de; Mon, 11 May 2026 14:33:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W0NLmv9Yvk77B52Ay8QbD5Ntcyz2ZXvmolQerW+iae0=; b=OPT7e3Hr9QpzxvAOtKV3Ml1+C0
	VYGmNY9crj6NmbhLagDbxeENB74Bln9jQLutaCu6SUaVQ6Au+iald+xqsQWxqujszeIXnh2axpuZL
	XwvxxbaKEVZEL75/YCGAsYTeHO1GQMUUiwQeP1i8KtaFCSRny9hauqzFkm9pDHTb+qEjWghO9FNTH
	tvgxSRG4b2prXLC7p7M/vexq+nILJFU0gbTZircIUVfkatCKULAULO9lydU057gh72jmlydg6maqD
	OYHzfY27PvyjgJtHEu+sFZmmO1Az/tWRwAfeFCrdGuCftjtEyCsZabGepM0UOsFfewQj59uVf7gze
	YiS4zAWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPo7-0000000DXvY-30pX;
	Mon, 11 May 2026 12:32:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPo5-0000000DXth-0znh
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 12:32:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPo3-0004Z7-IL; Mon, 11 May 2026 14:32:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPo2-000Fhs-1Q;
	Mon, 11 May 2026 14:32:19 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-00000008pO6-1BwW;
	Mon, 11 May 2026 14:08:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 May 2026 14:08:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-rockchip-emmc-hs400-v1-10-515fb6d20e12@pengutronix.de>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778501286; l=1785;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=AqG3QVTJuhM9fMI5PpVufXpm0oMnyL8gOSwmfKJd+70=;
 b=zhtN5YGbxartlYnCHODUmbYIuQLYyRjSZ1QpmbkYUXKV9qt1NXajVEMSYT8N8BGnaMD2SG4+K
 Ri6Q0/lcfnbAkjLKqHrYSZ7sUVnbntAPfayAEwokf13T54exYZ78Fs0
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_053221_280859_515653DD 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 10/10] mci: sdhci: rockchip: support HS400 Enhanced Strobe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Implement the hs400_enhanced_strobe op so the dwcmshc controller
samples on the eMMC strobe instead of the source clock when in
HS400ES. The bit lives at EMMC_CONTROL[8] (DWCMSHC_ENHANCED_STROBE)
in the same vendor area register that already holds CARD_IS_EMMC.

Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 3aa3f12930..89bc4781b4 100644
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



