Delivery-date: Wed, 13 Nov 2024 09:30:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tB8lT-001MWp-2O
	for lore@lore.pengutronix.de;
	Wed, 13 Nov 2024 09:30:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tB8lT-0004Qt-4d
	for lore@pengutronix.de; Wed, 13 Nov 2024 09:30:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dhYDY5cHuXJo6+7gHZjaq1zb95NuR4Bw2+o2MYtbDks=; b=jtYNiF7ryzX93eJQcyzrmfRRWb
	2OVQnXOA9ZbYHmd5KneahW2BNwtGwVDPIKlH4SO1EOjFtT/lJperEsVTEvPdJo3WOl+6jqcengWFV
	ayPWVu1yIJiQxYQVtOSqVavu5g9jSZyjQRU8g95wxsXDLS69KYQ5rvnD9a1LQhppYpGPkTzaW4lkB
	/YNuhmkAS8NbsXpjlG7kT1XqAh242ie4AFS1j4x7c0rJ/x0RBzfXFylqwj5pVY/DV9gjzAE39PGBz
	8jGyJW7aUZ9MHrYcpz6ZsVd+3NKAMIMcqHziLs/rM4tCh/E8WxO+xizOZZNobjI50pls6iTz8C1zG
	MRd/GO9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8kx-0000000666K-0nC4;
	Wed, 13 Nov 2024 08:29:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8kt-0000000665Y-41f7
	for barebox@lists.infradead.org;
	Wed, 13 Nov 2024 08:29:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tB8kk-00048R-Qw; Wed, 13 Nov 2024 09:29:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tB8kk-000XxT-1w;
	Wed, 13 Nov 2024 09:29:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tB8kk-00FKcT-1k;
	Wed, 13 Nov 2024 09:29:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Nov 2024 09:29:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241113-davinci-mdio-clk-fix-v1-1-6a98c9864bf6@pengutronix.de>
References: <20241113-davinci-mdio-clk-fix-v1-0-6a98c9864bf6@pengutronix.de>
In-Reply-To: <20241113-davinci-mdio-clk-fix-v1-0-6a98c9864bf6@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731486570; l=2163;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Irms+Fl1vopZNlkXFXo6pIoX9DkG9Emv3spMuTI36p4=;
 b=pC2GsUmfxZdCrjhordzuiGyPwlBL3aGeN8jW1SvHcXRRmTLFpGzjXXN5TBL/OVx4gBjRIdRU6
 8vfO1XwZ0tCB8yWW3jJc0gdt3PCBgIn++RhKM2k+8dhbSIlwf+FMv64
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_002940_037695_763C9FA6 
X-CRM114-Status: GOOD (  13.93  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] net: davinci_mdio: drop phy_mask detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The davinci_mdio driver tries to autodetect connected phys using the
controllers internal state engine that seems to periodically scan for
phys. It then sets phy_mask according to the phys found. This doesn't
work on a beagleplay board because the timeout is too short.

This phy detection mechanism is an optimization only, which in the best
case saves some time needed to scan the bus for phys later on. Normally
the phys are described in the device tree, in this case the bus isn't
scanned for devices anyway, so instead of adjusting the timeout we can
drop the whole thing altogether.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/davinci_mdio.c | 29 -----------------------------
 1 file changed, 29 deletions(-)

diff --git a/drivers/net/davinci_mdio.c b/drivers/net/davinci_mdio.c
index c5cd28fba4..fad14e92ea 100644
--- a/drivers/net/davinci_mdio.c
+++ b/drivers/net/davinci_mdio.c
@@ -110,8 +110,6 @@ static int cpsw_mdio_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct cpsw_mdio_priv *priv;
-	uint64_t start;
-	uint32_t phy_mask;
 	int ret;
 
 	priv = xzalloc(sizeof(*priv));
@@ -137,33 +135,6 @@ static int cpsw_mdio_probe(struct device *dev)
 	 */
 	writel(0xff | CONTROL_ENABLE, &priv->mdio_regs->control);
 
-	/*
-	 * wait for scan logic to settle:
-	 * the scan time consists of (a) a large fixed component, and (b) a
-	 * small component that varies with the mii bus frequency.  These
-	 * were estimated using measurements at 1.1 and 2.2 MHz on tnetv107x
-	 * silicon.  Since the effect of (b) was found to be largely
-	 * negligible, we keep things simple here.
-	 */
-	udelay(2000);
-
-	start = get_time_ns();
-	while (1) {
-		phy_mask = readl(&priv->mdio_regs->alive);
-		if (phy_mask) {
-			dev_info(dev, "detected phy mask 0x%x\n", phy_mask);
-			phy_mask = ~phy_mask;
-			break;
-		}
-		if (is_timeout(start, 256 * MSECOND)) {
-			dev_err(dev, "no live phy, scanning all\n");
-			phy_mask = 0;
-			break;
-		}
-	}
-
-	priv->miibus.phy_mask = phy_mask;
-
 	ret = mdiobus_register(&priv->miibus);
 	if (ret)
 		return ret;

-- 
2.39.5



