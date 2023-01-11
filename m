Delivery-date: Wed, 11 Jan 2023 14:32:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFbDd-008r8j-12
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 14:32:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFbDZ-0002mD-Rl
	for lore@pengutronix.de; Wed, 11 Jan 2023 14:32:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e1cTMpey7tO2xsSGn79/3b2ozuBJVICWjb2n6JCucCE=; b=pzfdK1Xn/CekbPEHDjjiq5TqF/
	gL9w05lriB2AWUrnz5ffEXo7lp32SYvGBrJHY4vH7cOWhBbmgJfN2tKva8fFyfj4CUzHzakFokv3K
	0lafjQ5sJJW8jnK5js3s0ra13DgEt7g5omhHoX0aY+ux2MMFrdttNYxNz0u9iM/p4Ks981ZKVK1AB
	+Nq8zaH/rKY/4N2WOupGW6lZbN0/VJJmyMBXeB+Uc3mlJTD3NNqccXzMAyC6M/CJlnT5RWeGtDYwk
	gN02LIMzSSf2kJZaTzv/ulmOeXM3T9PCwx+qRwImDHKaQRLzotRyVMH52wb95g8/KXm0lJTmSqVMP
	N6ZmW4Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFbCD-00BaCQ-Q8; Wed, 11 Jan 2023 13:31:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFbBB-00BZb4-A8
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 13:30:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB4-0001lz-Ul; Wed, 11 Jan 2023 14:30:03 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB3-005JQk-SV; Wed, 11 Jan 2023 14:30:01 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB1-004rqQ-K7; Wed, 11 Jan 2023 14:29:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 14:29:54 +0100
Message-Id: <20230111132956.1153359-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
References: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_053009_403053_F95A9552 
X-CRM114-Status: GOOD (  14.69  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/11] net: dsa: ksz9477: refactor to prepare i2c support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the move to regmap, it's straight-forward to add i2c support.
Prepare for this by making it possible to turn off the SPI parts.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/Kconfig   |  2 +-
 drivers/net/ksz9477.c | 19 +++++++++++--------
 2 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index e881b671d027..a6c820690f00 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -309,7 +309,7 @@ config DRIVER_NET_KSZ8873
 config DRIVER_NET_KSZ9477
 	bool "KSZ9477 switch driver"
 	depends on SPI
-	select REGMAP_SPI
+	select REGMAP_SPI if SPI
 	help
 	  This option enables support for the Microchip KSZ9477
 	  switch chip.
diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index 92e08f45bf03..acf1e949fbe1 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -403,6 +403,7 @@ static int microchip_switch_regmap_init(struct ksz_switch *priv)
 
 static int microchip_switch_probe(struct device *dev)
 {
+	struct device *hw_dev;
 	struct ksz_switch *priv;
 	int ret = 0, gpio;
 	struct dsa_switch *ds;
@@ -412,9 +413,12 @@ static int microchip_switch_probe(struct device *dev)
 	dev->priv = priv;
 	priv->dev = dev;
 
-	priv->spi = (struct spi_device *)dev->type_data;
-	priv->spi->mode = SPI_MODE_0;
-	priv->spi->bits_per_word = 8;
+	if (dev_bus_is_spi(dev)) {
+		priv->spi = (struct spi_device *)dev->type_data;
+		priv->spi->mode = SPI_MODE_0;
+		priv->spi->bits_per_word = 8;
+		hw_dev = &priv->spi->dev;
+	}
 
 	ret = microchip_switch_regmap_init(priv);
 	if (ret)
@@ -430,8 +434,7 @@ static int microchip_switch_probe(struct device *dev)
 
 	ret = ksz9477_switch_detect(dev->priv);
 	if (ret) {
-		dev_err(&priv->spi->dev, "error detecting KSZ9477: %s\n",
-			strerror(-ret));
+		dev_err(hw_dev, "error detecting KSZ9477: %pe\n", ERR_PTR(ret));
 		return -ENODEV;
 	}
 
@@ -465,10 +468,10 @@ static const struct of_device_id microchip_switch_dt_ids[] = {
 	{ }
 };
 
-static struct driver microchip_switch_driver = {
-	.name		= "ksz9477",
+static struct driver microchip_switch_spi_driver = {
+	.name		= "ksz9477-spi",
 	.probe		= microchip_switch_probe,
 	.of_compatible	= DRV_OF_COMPAT(microchip_switch_dt_ids),
 };
+device_spi_driver(microchip_switch_spi_driver);
 
-device_spi_driver(microchip_switch_driver);
-- 
2.30.2



