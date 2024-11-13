Delivery-date: Wed, 13 Nov 2024 09:30:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tB8lX-001MXF-2z
	for lore@lore.pengutronix.de;
	Wed, 13 Nov 2024 09:30:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tB8lX-0004TO-4J
	for lore@pengutronix.de; Wed, 13 Nov 2024 09:30:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QyVJVyRkq7/b/xGgE7CXVUAtnSVQwJaCQY6HF3Qf9Uo=; b=AyqymjWD4UdKVnA9eNs2YZgoqL
	Wsvb6mLVG1uc5Z+H/xaE0NNL+bIW0V5Fd7IxkKgRaaSvoc4fF3A5Anq4RZHPFE8ywG8gwPqANAhVf
	n5AtGnokH7O06TSFGOmXNFIMrbGFFdIxfQezagzMTSD+h0qonWgNm3r7Gycm6AQkG+ql16EsBC8Gf
	RPXhRnyuJos6c7tmw3QPAKC06n/kpR1MmlQDMMa6nEZtpIdZRAGTnG1FX6dNwWBygSrnpA3f2khTp
	YKViijG/G2FV/Uew1hz0XVgtPBh/Q4JkS5Ma8lXhPq/Rhywb+lJ0yyn3m0e25kfJENSWkib7vce1h
	5cPkrRtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8l4-0000000669V-3y2F;
	Wed, 13 Nov 2024 08:29:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8l2-00000006683-047I
	for barebox@lists.infradead.org;
	Wed, 13 Nov 2024 08:29:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tB8kk-00048T-Ql; Wed, 13 Nov 2024 09:29:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tB8kk-000XxV-1y;
	Wed, 13 Nov 2024 09:29:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tB8kk-00FKcT-1m;
	Wed, 13 Nov 2024 09:29:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Nov 2024 09:29:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241113-davinci-mdio-clk-fix-v1-3-6a98c9864bf6@pengutronix.de>
References: <20241113-davinci-mdio-clk-fix-v1-0-6a98c9864bf6@pengutronix.de>
In-Reply-To: <20241113-davinci-mdio-clk-fix-v1-0-6a98c9864bf6@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731486570; l=2274;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=jkku8j+MnKyTdU+khE4n8uH2LE5R6WgHu5xD23a+U/0=;
 b=DL4I6KfoVVG2Kiw5LM6tkXBH9xTJWItZwETQRy1KWPFPuvSYkvOWeIlIGpYuhjxHoEC0AFZr2
 BhCsemgYLrFDIoejfli6bXZNEvtVfpYF/CEM1/ASg6rrpPv1/uTUNYs
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_002948_099097_C2667806 
X-CRM114-Status: GOOD (  15.13  )
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
Subject: [PATCH 3/3] net: davinci_mdio: initialize divider from clk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of using a fixed divider value calculate a divider from the
input clock.

We currently do not have clk support for am33xx, so we can't handle
no clk as an error. In this case assume a clock frequency of 256MHz.
With a default desired MDIO clock of 1MHz (used in many TI dtsi files)
we get a divider value of 0xff which we previously used as hardcoded
value.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/davinci_mdio.c | 31 +++++++++++++++++++++++++------
 1 file changed, 25 insertions(+), 6 deletions(-)

diff --git a/drivers/net/davinci_mdio.c b/drivers/net/davinci_mdio.c
index ef08911f3f..a0cff97aa5 100644
--- a/drivers/net/davinci_mdio.c
+++ b/drivers/net/davinci_mdio.c
@@ -7,6 +7,7 @@
 #include <clock.h>
 #include <xfuncs.h>
 #include <io.h>
+#include <linux/clk.h>
 
 #define PHY_REG_MASK		0x1f
 #define PHY_ID_MASK		0x1f
@@ -43,6 +44,7 @@ struct cpsw_mdio_priv {
 	struct device			*dev;
 	struct mii_bus			miibus;
 	struct cpsw_mdio_regs		*mdio_regs;
+	struct clk			*clk;
 };
 
 /* wait until hardware is ready for another user access */
@@ -106,6 +108,28 @@ static int cpsw_mdio_write(struct mii_bus *bus, int phy_id, int phy_reg, u16 val
 	return 0;
 }
 
+#define CONTROL_MAX_DIV 0xffff
+
+static void cpsw_mdio_init_clk(struct cpsw_mdio_priv *priv)
+{
+	u32 mdio_in, clk_div;
+	u32 bus_freq = 2560000;
+
+	of_property_read_u32(priv->dev->of_node, "bus_freq", &bus_freq);
+
+	priv->clk = clk_get_enabled(priv->dev, "fck");
+	if (IS_ERR(priv->clk))
+		mdio_in = 250000000;
+	else
+		mdio_in = clk_get_rate(priv->clk);
+
+	clk_div = (mdio_in / bus_freq) - 1;
+	if (clk_div > CONTROL_MAX_DIV)
+		clk_div = CONTROL_MAX_DIV;
+
+	writel(clk_div | CONTROL_ENABLE, &priv->mdio_regs->control);
+}
+
 static int cpsw_mdio_probe(struct device *dev)
 {
 	struct resource *iores;
@@ -129,12 +153,7 @@ static int cpsw_mdio_probe(struct device *dev)
 	priv->miibus.priv = priv;
 	priv->miibus.parent = dev;
 
-	/*
-	 * set enable and clock divider
-	 *
-	 * FIXME: Use a clock to calculate the divider
-	 */
-	writel(0xff | CONTROL_ENABLE, &priv->mdio_regs->control);
+	cpsw_mdio_init_clk(priv);
 
 	ret = mdiobus_register(&priv->miibus);
 	if (ret)

-- 
2.39.5



