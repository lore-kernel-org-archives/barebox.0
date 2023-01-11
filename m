Delivery-date: Wed, 11 Jan 2023 09:04:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW62-008dvu-19
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:04:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW5z-0000sA-HO
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:04:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=POS7QoXoUng5PDOg9hZQD5/omrmaqCD0hOpavCv2VEM=; b=aC5/jedaSUJiVTksMmv5cNBZXe
	6UjM8qyzvF7lgMNclr5Oak5l13rYuxkQjBbI/5NyyFF5+ZBmfAwysGBV13B34soD6A7eeZOzxsNBK
	I3bJeGbDVqIRq0rLJ1IpVQWBFfXsEMZr0QU48Yelhk5aWv4CYhtAzyz3CvCdBT0LmiuyBsuG2JQSD
	PmIGRoxpKBXFYkJlFP6wV4/vX7NXPqedZBr09OK6BBAd7favIOIaZ7eG9Bi8CL1kJek8Frpv879tE
	3sZVyIVWnesUfTbMGWwpaR7kGvEQITGtUuHkO4w+U9awKyLsQRZ4NJHM4cRDvTrhCKyZ8fxrvOTJE
	9DLyeeSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW4Z-00AFLy-PN; Wed, 11 Jan 2023 08:03:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW37-00AEXT-NJ
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 08:01:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW36-0008MJ-Dp; Wed, 11 Jan 2023 09:01:28 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW35-005FfJ-PO; Wed, 11 Jan 2023 09:01:27 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW33-003v0I-CE; Wed, 11 Jan 2023 09:01:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 09:01:19 +0100
Message-Id: <20230111080119.933475-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111080119.933475-1-a.fatoum@pengutronix.de>
References: <20230111080119.933475-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_000129_832207_A7EE015E 
X-CRM114-Status: GOOD (  17.49  )
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
Subject: [PATCH 11/11] net: ksz9477: add I2C support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With regmap formatting support now in place, adding I2C support is quite
trivial, so let's do it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/Kconfig      |  3 ++-
 drivers/net/ksz9477.c    | 18 ++++++++++++++++--
 drivers/net/ksz_common.h |  1 +
 3 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index a6c820690f00..2622f64651d2 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -308,8 +308,9 @@ config DRIVER_NET_KSZ8873
 
 config DRIVER_NET_KSZ9477
 	bool "KSZ9477 switch driver"
-	depends on SPI
+	depends on SPI || I2C
 	select REGMAP_SPI if SPI
+	select REGMAP_I2C if I2C
 	help
 	  This option enables support for the Microchip KSZ9477
 	  switch chip.
diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index 50fe6caec52a..1da57736f2ea 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -7,6 +7,7 @@
 #include <net.h>
 #include <platform_data/ksz9477_reg.h>
 #include <spi/spi.h>
+#include <i2c/i2c.h>
 #include "ksz_common.h"
 
 /* SPI frame opcodes */
@@ -22,6 +23,7 @@
 
 KSZ_REGMAP_TABLE(ksz9477_spi, 32, SPI_ADDR_SHIFT,
 		 SPI_TURNAROUND_SHIFT, SPI_ADDR_ALIGN);
+KSZ_REGMAP_TABLE(ksz9477_i2c, not_used, 16, 0, 0);
 
 static int ksz9477_phy_read16(struct dsa_switch *ds, int addr, int reg)
 {
@@ -388,10 +390,13 @@ static int microchip_switch_regmap_init(struct ksz_switch *priv)
 	const struct regmap_config *cfg;
 	int i;
 
-	cfg = ksz9477_spi_regmap_config;
+	cfg = priv->spi ? ksz9477_spi_regmap_config : ksz9477_i2c_regmap_config;
 
 	for (i = 0; i < KSZ_REGMAP_ENTRY_COUNT; i++) {
-		priv->regmap[i] = regmap_init_spi(priv->spi, &cfg[i]);
+		if (priv->spi)
+			priv->regmap[i] = regmap_init_spi(priv->spi, &cfg[i]);
+		else
+			priv->regmap[i] = regmap_init_i2c(priv->i2c, &cfg[i]);
 		if (IS_ERR(priv->regmap[i]))
 			return dev_err_probe(priv->dev, PTR_ERR(priv->regmap[i]),
 					     "Failed to initialize regmap%i\n",
@@ -418,6 +423,9 @@ static int microchip_switch_probe(struct device *dev)
 		priv->spi->mode = SPI_MODE_0;
 		priv->spi->bits_per_word = 8;
 		hw_dev = &priv->spi->dev;
+	} else if (dev_bus_is_i2c(dev)) {
+		priv->i2c = dev->type_data;
+		hw_dev = &priv->i2c->dev;
 	}
 
 	ret = microchip_switch_regmap_init(priv);
@@ -474,3 +482,9 @@ static struct driver microchip_switch_spi_driver = {
 };
 device_spi_driver(microchip_switch_spi_driver);
 
+static struct driver microchip_switch_i2c_driver = {
+	.name		= "ksz9477-i2c",
+	.probe		= microchip_switch_probe,
+	.of_compatible	= DRV_OF_COMPAT(microchip_switch_dt_ids),
+};
+device_i2c_driver(microchip_switch_i2c_driver);
diff --git a/drivers/net/ksz_common.h b/drivers/net/ksz_common.h
index 01447b61419e..995054d6e8c6 100644
--- a/drivers/net/ksz_common.h
+++ b/drivers/net/ksz_common.h
@@ -9,6 +9,7 @@
 
 struct ksz_switch {
 	struct spi_device *spi;
+	struct i2c_client *i2c;
 	struct dsa_switch ds;
 	struct device *dev;
 	int phy_port_cnt;
-- 
2.30.2



