Delivery-date: Wed, 28 May 2025 14:04:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWb-001B7I-2A
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:04:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWW-0007EU-MG
	for lore@pengutronix.de; Wed, 28 May 2025 14:04:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6e+k3N27NPsc36A6e0oRMDTYhiKZhWsKwqvq7cxR/y0=; b=OFuijbvufyr0X2f+FF6dOqAN4n
	qHHFuyt2SsAFKo7voA62nbqk+5e1upPn8MOsc9oSOuc2/SeQ9DMaHNOvzRcHefwNsw9vvVaj1ES/c
	W1LV0AE0n8iFJVEKqZo+ATx4ScFa8IJ4rBcBTpk5BWLHjnaD7nb1pyCb9JKP7s5zktkNRJBalzjNs
	f5MslLavRW4O21cOHaGln10TclrMH3C8VQU0FRFGKJR2XyZ728XOXEBWTCCLBuE5jBtDu2jxE8rXR
	0z9Sv+KqNBDs6QANYdiPJfikAp7nWkIqwQLnD1GaZbLmwluksrtF/JSUZUU/g8kedKZr5x4nWb0dq
	pOayDrxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFVi-0000000D34e-3wWK;
	Wed, 28 May 2025 12:03:54 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFUF-0000000D2cX-2Dnt
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 12:02:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=6e+k3N27NPsc36A6e0oRMDTYhiKZhWsKwqvq7cxR/y0=; b=BJTbgQxPKDjcnspqZy9O2VppYJ
	eicaUew0dI5pNfGyij4p4hYAeWCC2T+jA3cqWZ2h/0hx2xx8w9TQFhpQ6azDTZiR9R2kt6CmBPtDb
	jmBk2gkiG5fWVFsBo5P8uQlwnD6W1eY6TaPH7+Y0DGEWX8ZHqxcEYNt5ieEGi+GNgMUliZ2K21UwM
	H7KX0O7DEOgkkgopu1DmlZFhkXnmRhDHPe5RYs+o42rSCApRh/wX+Rc2zLQblKkX7KDnDwD2iBHB2
	1cKjhFrakHo3ILuP2DZBUNpmAvv78fslQvYBZ/ffrtlTqJqolzUBNRNLGpjfgW7LUksYMDRD0cakD
	GTrS8ZSQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFUB-0000000Dauy-2jXT
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 12:02:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTr-0004WH-6J; Wed, 28 May 2025 14:01:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTr-000aGC-02;
	Wed, 28 May 2025 14:01:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1o;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-21-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=1226;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=FskQnmONF7HCyfLVr0UUUgyPW6hY/BKK8R1wuNfR0t4=;
 b=t90lJL1TjnzoU57M2R5jJa9hDS+Nzcjva3A7rNud3TtONUt4fiCIXUtJ+1Yz8OL20914+DDyD
 tVv+LBWEXJeDAsvWHFAkPB4I3N5t0Qp/O6k5ZRJYo1HS4d3C6vWKneI
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_130219_759307_DD72E9A1 
X-CRM114-Status: UNSURE (   9.30  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 21/31] net: davinci_mdio: Use fallback clock rate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On AM62L There is a clock attached to the mdio block, but the TF-A
returns 0 for its rate. Use 256MHz as fallback rate when we don't find a
valid clock rate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/davinci_mdio.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/davinci_mdio.c b/drivers/net/davinci_mdio.c
index 1186642e1337b603f541f6bdf19ac2d2792f4994..ca7cecd2c08488cfa7a12d9cf8947e27722b916c 100644
--- a/drivers/net/davinci_mdio.c
+++ b/drivers/net/davinci_mdio.c
@@ -112,17 +112,18 @@ static int cpsw_mdio_write(struct mii_bus *bus, int phy_id, int phy_reg, u16 val
 
 static void cpsw_mdio_init_clk(struct cpsw_mdio_priv *priv)
 {
-	u32 mdio_in, clk_div;
+	u32 mdio_in = 0, clk_div;
 	u32 bus_freq = 1000000;
 
 	of_property_read_u32(priv->dev->of_node, "bus_freq", &bus_freq);
 
 	priv->clk = clk_get_enabled(priv->dev, "fck");
-	if (IS_ERR(priv->clk))
-		mdio_in = 256000000;
-	else
+	if (!IS_ERR(priv->clk))
 		mdio_in = clk_get_rate(priv->clk);
 
+	if (mdio_in == 0)
+		mdio_in = 256000000;
+
 	clk_div = (mdio_in / bus_freq) - 1;
 	if (clk_div > CONTROL_MAX_DIV)
 		clk_div = CONTROL_MAX_DIV;

-- 
2.39.5



