Delivery-date: Thu, 05 Jun 2025 15:13:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPi-0041PN-1S
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:13:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPf-00018U-KE
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:13:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6e+k3N27NPsc36A6e0oRMDTYhiKZhWsKwqvq7cxR/y0=; b=IHv7mVulH3o4oWrsEuJpR2Zf2x
	M/ymxUgn9p6stKdPo0rwxe4uU897fWTBxdfGm+yXSNbahjGv7DNwL6Aor2dXH6cZimctxaN+a93nK
	9ID8Q8ACQ8NCYX2+479nMwNYpH9b4ieueJjjXq7G82YKMzPERxDUNGwRQzu+LZqLEp5zpi2npHmx+
	OHKdmizd7Hvg71iqb4iCUJrTiOodPCWoZ/ZKHrda0J7lthJTslTb0UNA6oEfkcmjdCApmDhtytl+y
	rQFxEyXuu/in2GnHXDXrVXzoqIqFS4MxgRORELsfYdXWwkxRocv1lW9u20MBuWHzWCNMHrTx5aWeE
	QOa0B3VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAP1-0000000FZLp-02L7;
	Thu, 05 Jun 2025 13:13:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFF-0000000FXqy-0ZN4
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:03:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFE-00012s-04; Thu, 05 Jun 2025 15:02:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFD-001xjk-2b;
	Thu, 05 Jun 2025 15:02:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1m;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-22-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=1226;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=FskQnmONF7HCyfLVr0UUUgyPW6hY/BKK8R1wuNfR0t4=;
 b=5j8KIMdlWFU1OnvNJcZ5Xk5rdE89ehFXTUcMJbeRsC/psBg+/Tbm4aZmnufG9VhdAOX0te5i6
 DQn21zawuejCZ2gDw9prQix65/MPy2yBQzJviUlNY4IaoaItybBEmet
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_060257_218124_731F339E 
X-CRM114-Status: GOOD (  11.08  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 22/33] net: davinci_mdio: Use fallback clock rate
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



