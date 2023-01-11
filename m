Delivery-date: Wed, 11 Jan 2023 09:04:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW5s-008dvD-V6
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:04:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW5q-0000pY-Gb
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:04:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K+W62QtWiK6FBi8k1BCZKJiN3B7JvBiISQLCFUniZxc=; b=K7mRd6hWsgP6ws7NH3vkYLKwZ/
	o6Q39rjwYb6IURx0r9h1tnXd+HrgWSQ+lvdWuvWOT4xyeitKQu1hT+HLgTzeCMGPQPLVmL3qGx+Sx
	XtxAzWWo0My+yKxPTKysaYp5rPZTZ+l2a7i/9EwaC5xSQTMPyF5fGmntUHuba3aEFcqg/rYAxg34U
	9kLyt/TT0R0VUl3zKUZoc4UD0mXKfRgzhyZlJU2kHToD68JhiYf5sPV5QbTjYoebzPurUFm0/2CZD
	kEoFi/rdRkY/YfMzh8JMZr4xWNYsV9Bc3Tycm2/uxODHyEI2ZtZpW0m0UpOJXDOXTCVaTWQRcdL7B
	8bcANkXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW4Q-00AFBd-54; Wed, 11 Jan 2023 08:02:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW37-00AEXM-IK
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 08:01:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW36-0008Ll-Ar; Wed, 11 Jan 2023 09:01:28 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW34-005Fez-Sj; Wed, 11 Jan 2023 09:01:26 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW33-003v0C-Bh; Wed, 11 Jan 2023 09:01:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 09:01:17 +0100
Message-Id: <20230111080119.933475-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111080119.933475-1-a.fatoum@pengutronix.de>
References: <20230111080119.933475-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_000129_646033_EDF88F19 
X-CRM114-Status: GOOD (  14.19  )
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
Subject: [PATCH 09/11] net: dsa: ksz9477: refactor to prepare i2c support
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
index 93ce0dab813b..50fe6caec52a 100644
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
 
@@ -464,10 +467,10 @@ static const struct of_device_id microchip_switch_dt_ids[] = {
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



