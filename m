Delivery-date: Thu, 07 May 2026 09:04:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKsn2-001sdt-38
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 09:04:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKsmx-0007ZM-TZ
	for lore@pengutronix.de; Thu, 07 May 2026 09:04:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uHkjIaddMSO67BLcv/qqaGHCcKfhuFFyqUjox7jSdM0=; b=4vPJEfBsk/zhgFnCp3HxfhVeeU
	62e1YqRPcULDTit7poinolJ53hLFHtmY8iKJBoKTehm/2CgiRBp9Qb/dN1DSfuqBG2/4FW78XWLUU
	aEVpCUtljqDoFihJiOrSea9/p2aQA+T3pzSPwJv2DYR3GHjWA/S63BI/KUm4WBw9EtG24Ez1yOwIk
	VA0ZsHjuYFJileng/Sk125yNuGKv0K1E0paAn+8EjUjgm8FRZLcOQ1TOk2ZoQVtGvV1LLEWON0NWo
	UFHOeEOH7rM9zOptxJCSwnKQbNlLXiKp/E7lV+absG03QKjgC339mTqUO6TQtpdRL34A4yEdv++Ax
	cDjFkdPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKsl3-00000002yyc-1PFx;
	Thu, 07 May 2026 07:02:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKsl2-00000002ywP-0ypS
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 07:02:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-0006NP-Ss; Thu, 07 May 2026 09:02:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-000sMZ-0W;
	Thu, 07 May 2026 09:02:48 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-0000000BYFq-25JU;
	Thu, 07 May 2026 09:02:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 07 May 2026 09:02:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260507-rockchip-emmc-v1-1-5e8109e8059d@pengutronix.de>
References: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
In-Reply-To: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778137368; l=1885;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=hlvFnxV9sQF0Y7cwdIoUd0C804hKy1WeKceQ5SJLq8A=;
 b=7ZojBqLrAP7etvZP+//2ZwvgyYeDXRgqEktW1RgTIss1gV9js0ROKzBnwO9EI1fzcFetamqwU
 Afv7nMQhgGNANZ4VX0JV/PNzturesdSgwvRN3YvoFyIW23LjDErbGZ0
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_000252_288053_18121A01 
X-CRM114-Status: GOOD (  10.55  )
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
Subject: [PATCH 1/6] mci: sdhci: rockchip: set hidspd before re-enabling
 the clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux changes the SDHCI_CTRL_HISPD bit while the clock is disabled. While
I haven't observed any failures because of this, do the same as Linux to be
on the safe side.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 8e55190eb8..981f90af63 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -146,6 +146,15 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 
 	clk_set_rate(host->clks[CLK_CORE].clk, clock);
 
+	extra = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL);
+
+	if (clock > 26000000)
+		extra |= SDHCI_CTRL_HISPD;
+	else
+		extra &= ~SDHCI_CTRL_HISPD;
+
+	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, extra);
+
 	sdhci_set_clock(&host->sdhci, clock, clk_get_rate(host->clks[CLK_CORE].clk));
 
 	/* Disable cmd conflict check */
@@ -212,7 +221,6 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 static void rk_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
-	u16 val;
 
 	/* stop clock */
 	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
@@ -221,15 +229,6 @@ static void rk_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 		rk_sdhci_set_clock(host, ios->clock);
 
 	sdhci_set_bus_width(&host->sdhci, ios->bus_width);
-
-	val = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL);
-
-	if (ios->clock > 26000000)
-		val |= SDHCI_CTRL_HISPD;
-	else
-		val &= ~SDHCI_CTRL_HISPD;
-
-	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, val);
 }
 
 static void print_error(struct rk_sdhci_host *host, int cmdidx)

-- 
2.47.3



