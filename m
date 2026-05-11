Delivery-date: Mon, 11 May 2026 14:09:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPSE-000Xon-2O
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 14:09:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMPSD-0007Hl-32
	for lore@pengutronix.de; Mon, 11 May 2026 14:09:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gIaMBHoLZY7wNOf+EORtc9y9FKwr3YpaJAvB6UW2PxE=; b=oXDn76NsdGDPP3Ls7rOgT3GCgw
	+2CnMPvm8E0Z9JI74dYiH9A7GS2NF++UYngXmTceR4+qgHSwQMnMRCgwfov8o5WFsnznBLYlpi9vP
	YG+QdjqYbdF9BpqTyUlBvYZZGOD96i/akd0N4Y7yg0tSuMT192Ud+1e46AYdz4Gg56vhKLxVjwsE7
	2KSb91kZUb2r7fWfRhIMVXOnpdzMeDTnYTusnePDm0KfMgvvbr9tgfZqSQFcJ5glMZoKGr3oD6+FD
	SMLa+6VWVb7WgA6P0oal9hYeaPxkPPFoIwkT+O1Y6yLAspJLmh/gsocQOJqWv2Hma8xSd4ARpZfi9
	ES4MZZjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPQw-0000000DT3G-1u71;
	Mon, 11 May 2026 12:08:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMPQu-0000000DSzw-1c79
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 12:08:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-0006b9-Qi; Mon, 11 May 2026 14:08:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQb-000FTP-2E;
	Mon, 11 May 2026 14:08:06 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMPQc-00000008pO6-18VY;
	Mon, 11 May 2026 14:08:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 May 2026 14:08:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-rockchip-emmc-hs400-v1-7-515fb6d20e12@pengutronix.de>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778501286; l=1780;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=5dabKFEd6ClRbdVCrUTzpGI3tG85bOCZJyU4P2LL2+E=;
 b=BvsQGqG+0P7LlvN7dlm6h0+aItg4ZEJB7pbKV7RKJd84FJhP4PU6v9CDZ3QSm4IFtvfARMQKH
 AACHHIuR7AKB70Oz6gBJWFDTcL0FpKv/K9BOHVL+IRkekO9OhwmZqUb
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_050824_442210_160B81E3 
X-CRM114-Status: GOOD (  11.36  )
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
Subject: [PATCH 07/10] mci: sdhci: rockchip: set TX-path source-select bit
 in DWCMSHC_EMMC_DLL_TXCLK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux's sdhci-of-dwcmshc has, since rk3588 support was added in 2022,
unconditionally OR'd DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL
(bit 29) into the DWCMSHC_EMMC_DLL_TXCLK write that follows DLL lock
in the high-speed path. Despite its name, position 29 in this
register controls a TX-path source-select; the constant just happens
to share the SRCSEL shift with the RX path register.

Barebox was never writing this bit. The omission was harmless on
controllers where the RX path's matching write (a few lines earlier
in this function) already sets the same bit position 29 - because on
those parts both clock paths end up with a working source-select.
The bit is needed for the TX path to have a working source-select in
its own right, however; the next commit's revision split, which
correctly stops setting the RX-path bit on rk3588 silicon, would
otherwise leave the TX path with no source-select at all and break
eMMC writes.

Match Linux's behaviour: set the bit unconditionally in the TXCLK
write.

Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 23c887e906..fa2d9964a5 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -212,6 +212,7 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 
 	extra = DWCMSHC_EMMC_DLL_DLYENA |
 		DLL_TXCLK_TAPNUM_FROM_SW |
+		DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL |
 		txclk_tapnum;
 	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_TXCLK, extra);
 

-- 
2.47.3



