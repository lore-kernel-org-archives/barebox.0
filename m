Delivery-date: Mon, 11 May 2026 15:17:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQVO-000Z6P-2o
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 15:17:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQVK-0006lF-05
	for lore@pengutronix.de; Mon, 11 May 2026 15:17:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9Xp8TdnCyEB+eOdIKFzAPrhQx5gzqoMcuhTq4QXA/Ek=; b=d4Unv/HMFVNPS2K2MpXuSlT5T9
	VvTWQAVyB5hhhod8m9HDbmd8gCGP5TfQpfK/I+iaEF5unlXj7gVimmw9YPNlwM4tmw2xpGw7OWELQ
	qd2guRuOLn6plPKe6Qnq9o/rOduLUeog7/924QGbcbAW0a75sHS5FHS6bEZEmsi6hJ30O7gZnTc4m
	9ajnm7LL+8ZnuepFZf6UOAQpxOml9noapLG4md7OBAFP5bUmKu1EvIrZMZu+/kAawBWM3zIk85OL1
	1kiZNQiOyGrxv0EzakmumEPI/V9WPFY8tDGZXo7C81pnE9QEX6rk3Hm0oFfPgnirWrSFD/PIseFTX
	fJHNQlEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPQw-0000000DT3Q-2jae;
	Mon, 11 May 2026 12:08:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPQu-0000000DSzx-1cR5
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 12:08:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-0006bA-Rw; Mon, 11 May 2026 14:08:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQb-000FTR-2D;
	Mon, 11 May 2026 14:08:06 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-00000008pO6-1BED;
	Mon, 11 May 2026 14:08:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 May 2026 14:08:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-rockchip-emmc-hs400-v1-9-515fb6d20e12@pengutronix.de>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778501286; l=2504;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=jvMaTUwB/mTWjjgP/NMlkFa18OIEdMlCWzUGzpdyox4=;
 b=YOkjHNAX01Q5hwR3vSVCGihB04Iu/fQ7kEPbx91jDOJ6Pe7ps3GBKCoL6E3Z5g/NsE9dy5u5E
 3M0jeWEnODgByEyiVFAHjebGxZiY1DHK94wqv8waiktkpKAy+PK+ViH
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_050824_443945_7C5B91F1 
X-CRM114-Status: GOOD (  11.79  )
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
Subject: [PATCH 09/10] mci: sdhci: rockchip: support HS400
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

After sdhci_set_clock() runs sdhci_set_uhs_signaling() (which writes
the standard SDHCI_CTRL_HS400 = 0x5 to HOST_CONTROL2's UHS field) and
the SDCLK is gated for the high-speed DLL config, fix up two things
that the dwcmshc controller needs in HS400:

- HOST_CONTROL2's UHS field needs DWCMSHC_CTRL_HS400 (0x7) instead of
  the standard SDHCI_CTRL_HS400 (0x5).
- EMMC_CONTROL.CARD_IS_EMMC (BIT 0 at offset 0x52c) must be set to
  enable the data-strobe sampling path that HS400 uses.

The high-speed DLL branch (>52 MHz) already programs DLL_TXCLK,
DLL_STRBIN and locks the DLL the same way HS200 does, which is what
HS400 needs as well. Together with the core HS200 -> HS -> HS400
transition, this lets HS400 run on rk3568 / rk3588.

Tested on a K3588 Radxa Rock5T board.

Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 4b2ee03e9a..3aa3f12930 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -18,6 +18,7 @@
 #define DWCMSHC_VER_TYPE		0x504
 #define DWCMSHC_HOST_CTRL3		0x508
 #define DWCMSHC_EMMC_CONTROL		0x52c
+#define  DWCMSHC_CARD_IS_EMMC		BIT(0)
 #define DWCMSHC_EMMC_ATCTRL		0x540
 
 /* Rockchip specific Registers */
@@ -183,6 +184,25 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 	/* Disable clock while config DLL */
 	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
 
+	/*
+	 * HS400 needs the dwcmshc-specific value (0x7) in HOST_CONTROL2's UHS
+	 * field rather than the standard SDHCI_CTRL_HS400 (0x5) the generic
+	 * sdhci_set_uhs_signaling() wrote. It also requires CARD_IS_EMMC in
+	 * EMMC_CONTROL to enable the data strobe sampling path.
+	 */
+	if (host->mci.ios.timing == MMC_TIMING_MMC_HS400) {
+		u16 ctrl_2;
+
+		ctrl_2 = sdhci_read16(&host->sdhci, SDHCI_HOST_CONTROL2);
+		ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
+		ctrl_2 |= DWCMSHC_CTRL_HS400;
+		sdhci_write16(&host->sdhci, SDHCI_HOST_CONTROL2, ctrl_2);
+
+		extra = sdhci_read32(&host->sdhci, DWCMSHC_EMMC_CONTROL);
+		extra |= DWCMSHC_CARD_IS_EMMC;
+		sdhci_write32(&host->sdhci, DWCMSHC_EMMC_CONTROL, extra);
+	}
+
 	if (clock <= 52000000) {
 		/*
 		 * Disable DLL and reset both of sample and drive clock.

-- 
2.47.3



