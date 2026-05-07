Delivery-date: Thu, 07 May 2026 09:05:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKsnE-001seZ-1y
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 09:05:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKsn9-0007gY-FC
	for lore@pengutronix.de; Thu, 07 May 2026 09:05:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SdUFr1R3+PSUeleyNYQDQiKlUZ7RVJu57jNdLbP/zgQ=; b=Ned+JbT1VUYjXcYWcOQ3Vv6XSy
	D9uhc0UbvS+7f/xujEjuaom5R4GeJNes4JnZ8Uc3XtYRz72Xu+H7ff+THQlV/oGbrLKLg9DUA4NDJ
	p0t10209ybWNQvcRhM8NSedwo/IbG2VQqAyj0+nBivb7nUqQqSNHDVG1nEevCEN+5YfkG/E1sIxKd
	wcUd8QrfAr4nQ5JU2Amk5lFEYiOxL6a21dOD8JirhTGGOgGYLYH3xnpl2xI2EcaVPydkrLyQCspyX
	BaQToMylvwpTRHi6uR/8EgwDZaI6qHbZ5F1hFZFC45PKiSG6KF0iwz+Ea4FZld3+YiYYt63XwPQV3
	YIR3hJwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKsl3-00000002yyE-0R8Z;
	Thu, 07 May 2026 07:02:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKsl2-00000002ywU-0nP2
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 07:02:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-0006NU-Us; Thu, 07 May 2026 09:02:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-000sMc-0Y;
	Thu, 07 May 2026 09:02:48 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-0000000BYFq-27Gb;
	Thu, 07 May 2026 09:02:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 07 May 2026 09:02:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260507-rockchip-emmc-v1-4-5e8109e8059d@pengutronix.de>
References: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
In-Reply-To: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778137368; l=931;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=OO96UJVeOhNwg0CcLHE3jPTr1N2bOGJ99Htmlwwq4kk=;
 b=e/3+woSfwuKAAEWWy7lUu8jI64PL7rNBrcYSaQmVkpEkOX00sHAWKSzn09yqad5KxV6qmHC9V
 lKxP+RtqceQDdDMYxDpzuenzyD3WMSI5L6IQQDwXuCCBo8jpLZWry2H
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_000252_233522_42CE053A 
X-CRM114-Status: UNSURE (   9.86  )
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
Subject: [PATCH 4/6] mci: sdhci: rockchip: Update pre-change delay for
 rockchip platform
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is an adoption from Linux commit b75a52b0dda35 ("mmc: sdhci-of-dwcmshc:
Update DLL and pre-change delay for rockchip platform"). We already have
most of it, this only adds the pre-change delay part.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 2605a1368f..9ffd52e7e0 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -206,7 +206,7 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 	}
 
 	extra = 0x1 << 16 | /* tune clock stop en */
-		0x2 << 17 | /* pre-change delay */
+		0x3 << 17 | /* pre-change delay */
 		0x3 << 19;  /* post-change delay */
 	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_ATCTRL, extra);
 

-- 
2.47.3



