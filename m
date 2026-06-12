Delivery-date: Fri, 12 Jun 2026 08:00:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXuwA-004xr4-1D
	for lore@lore.pengutronix.de;
	Fri, 12 Jun 2026 08:00:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXuw7-0005AD-Kp
	for lore@pengutronix.de; Fri, 12 Jun 2026 08:00:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uztYYGNDTekpneqbXeSjerVqFG4sMB805FoPzDtGtlU=; b=quLiWEwqOumydQrTgsP/CgxCdU
	Req0lxdOgt31K+Ha/Lki3F5S6VR9OBwAJcX2dRWp9zCpm4AxzvXFHvobc+1TcFgGDgKOKaFBK/Q73
	ZhU/2fU/3pamgpke10sWvd/pgFS1kZA86UNbsHw7TlmBpV6O7VPiaXm0z+tTih60eh8lUIuCe3SWN
	lMs6gRIZ0IcXqP6YzLvDH1oXp8KLOAy6VsBE/5buiniPlUvNLUYHI/4tq4/ddcGQPO8mmOx0dQIaf
	CezOwxrx1HiFRE9Q3SkJ24hqWP1H6/a/Po1H2lfn6ukxv8EwNcvz2F8SEOnSCzSodXaHf5XNbCuLQ
	0ZTnXh7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXuve-0000000AOTD-0s39;
	Fri, 12 Jun 2026 05:59:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXuvZ-0000000AOPc-1uHC
	for barebox@lists.infradead.org;
	Fri, 12 Jun 2026 05:59:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-0004mZ-6r; Fri, 12 Jun 2026 07:59:34 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-002Kex-0Q;
	Fri, 12 Jun 2026 07:59:34 +0200
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-00000002fQA-06t4;
	Fri, 12 Jun 2026 07:59:34 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 12 Jun 2026 07:59:22 +0200
Message-ID: <20260612055930.635833-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260612055930.635833-1-o.rempel@pengutronix.de>
References: <20260612055930.635833-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_225937_524416_69AE3189 
X-CRM114-Status: GOOD (  17.42  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 06/10] mci: atmel-sdhci: add Microchip LAN9691 / LAN969X SDHCI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Match the "microchip,lan9691-sdhci" compatible and allow building on
ARCH_MICROCHIP (and COMPILE_TEST). LAN969X uses a different GCK rate
(100 MHz) than the AT91 SAMA5D2 (240 MHz), so plumb the per-compatible
rate through device_get_match_data() and fall back to the SAMA5D2 rate
when no match data is supplied.

The LAN969X SDHCI binding doesn't expose the PMC base clock that
sama5d2/sam9x60 carry as "baseclk" (the GCK driver handles the upstream
source internally), so make that lookup optional.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/mci/Kconfig       |  6 +++---
 drivers/mci/atmel-sdhci.c | 22 ++++++++++++++++++----
 2 files changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index b38f7a3bdf8b..8108c7b14848 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -197,12 +197,12 @@ config MCI_ATMEL
 	  Atmel AT91.
 
 config MCI_ATMEL_SDHCI
-	bool "ATMEL SDHCI (sama5d2)"
+	bool "ATMEL SDHCI (sama5d2, lan9691)"
 	select MCI_SDHCI
-	depends on ARCH_AT91
+	depends on ARCH_AT91 || ARCH_MICROCHIP || COMPILE_TEST
 	help
 	  Enable this entry to add support to read and write SD cards on an
-	  Atmel sama5d2
+	  Atmel sama5d2 or Microchip LAN969X.
 
 config MCI_MMCI
 	bool "ARM PL180 MMCI"
diff --git a/drivers/mci/atmel-sdhci.c b/drivers/mci/atmel-sdhci.c
index 462cf21bc25f..458d022fa3fa 100644
--- a/drivers/mci/atmel-sdhci.c
+++ b/drivers/mci/atmel-sdhci.c
@@ -18,6 +18,7 @@
 
 #define ATMEL_SDHC_MIN_FREQ	400000
 #define ATMEL_SDHC_GCK_RATE	240000000
+#define LAN969X_GCK_RATE	100000000
 
 struct at91_sdhci_priv {
 	struct at91_sdhci host;
@@ -55,7 +56,8 @@ static int at91_sdhci_mci_init(struct mci_host *mci, struct device *dev)
 			       priv->mci.non_removable, priv->cal_always_on);
 }
 
-static int at91_sdhci_conf_clks(struct at91_sdhci_priv *priv)
+static int at91_sdhci_conf_clks(struct at91_sdhci_priv *priv,
+				unsigned long gck_rate)
 {
 	unsigned long real_gck_rate;
 	int ret;
@@ -66,7 +68,7 @@ static int at91_sdhci_conf_clks(struct at91_sdhci_priv *priv)
 	 * base clock rate and the clock mult from capabilities.
 	 */
 	clk_enable(priv->hclock);
-	ret = clk_set_rate(priv->gck, ATMEL_SDHC_GCK_RATE);
+	ret = clk_set_rate(priv->gck, gck_rate);
 	if (ret < 0) {
 		clk_disable(priv->hclock);
 		return ret;
@@ -109,6 +111,11 @@ static int at91_sdhci_probe(struct device *dev)
 {
 	struct at91_sdhci_priv *priv;
 	struct resource *iores;
+	unsigned long gck_rate;
+
+	gck_rate = (uintptr_t)device_get_match_data(dev);
+	if (!gck_rate)
+		gck_rate = ATMEL_SDHC_GCK_RATE;
 
 	priv = xzalloc(sizeof(*priv));
 	dev->priv = priv;
@@ -119,7 +126,12 @@ static int at91_sdhci_probe(struct device *dev)
 		return PTR_ERR(iores);
 	}
 
-	priv->mainck = clk_get(dev, "baseclk");
+	/*
+	 * "baseclk" is the PMC base clock on sama5d2/sam9x60. The LAN969X
+	 * SDHCI binding doesn't expose it (the GCK driver handles the upstream
+	 * source internally), so treat it as optional.
+	 */
+	priv->mainck = clk_get_optional(dev, "baseclk");
 	if (IS_ERR(priv->mainck)) {
 		dev_err(dev, "failed to get baseclk\n");
 		return PTR_ERR(priv->mainck);
@@ -147,7 +159,7 @@ static int at91_sdhci_probe(struct device *dev)
 	at91_sdhci_mmio_init(&priv->host, IOMEM(iores->start));
 	priv->host.sdhci.mci = &priv->mci;
 
-	priv->gck_rate = at91_sdhci_conf_clks(priv);
+	priv->gck_rate = at91_sdhci_conf_clks(priv, gck_rate);
 	if (priv->gck_rate < 0)
 		return priv->gck_rate;
 
@@ -164,6 +176,8 @@ static int at91_sdhci_probe(struct device *dev)
 static const struct of_device_id at91_sdhci_dt_match[] = {
 	{ .compatible = "atmel,sama5d2-sdhci"  },
 	{ .compatible = "microchip,sam9x60-sdhci" },
+	{ .compatible = "microchip,lan9691-sdhci",
+	  .data = (void *)LAN969X_GCK_RATE },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, at91_sdhci_dt_match);
-- 
2.47.3



