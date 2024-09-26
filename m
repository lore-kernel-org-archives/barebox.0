Delivery-date: Thu, 26 Sep 2024 13:24:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmbN-002yus-30
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 13:24:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmbL-00037u-HC
	for lore@pengutronix.de; Thu, 26 Sep 2024 13:24:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FWRciO4MKsy9vq3ZG1tULHrMDP0MbWsf6ZkSfSaYrzs=; b=FOxIuIYgULUQ9iLvghILdeDc3d
	8CubQQaEN2FD06n63fE2QUw1K8vrUgK6dbU4LtqsVcWDxjs7sWVWDUGjVY621v9HbYg9oPtwJEErz
	MTaF+B/7Or+IPz5FmEq2s/BNVq8GJm6ZwQ2T3C0OtfgTAitDnZMISJ49UorI6tmWmTgM0NMeUNNJx
	C/E3TYeoYk6njeuOfDA+CCj8uJ/nFMr5zIBgRfjzyOF4Tzg67MchB5grirWqg8ltPMIQBPrlnNAm3
	kAcvRImIlqMyCWzzdraymRhTGArNClPSNN3wZ1ZH6ussXf3gucs8MwvO49ZMMSuwgWhGjifsKODk2
	wDEZPqMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stmah-00000008Dng-1qlI;
	Thu, 26 Sep 2024 11:23:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stmZ1-00000008DKE-0nJY
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 11:21:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmZ0-00019J-0v; Thu, 26 Sep 2024 13:21:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmYz-001fks-IK; Thu, 26 Sep 2024 13:21:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmYz-00Fi9J-34;
	Thu, 26 Sep 2024 13:21:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 13:21:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240926-spi-gpio-v2-5-3bf7b511c8c0@pengutronix.de>
References: <20240926-spi-gpio-v2-0-3bf7b511c8c0@pengutronix.de>
In-Reply-To: <20240926-spi-gpio-v2-0-3bf7b511c8c0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727349697; l=6312;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=RfnH7ZP0Edv8lLLU/l85vzqaGsAsuXPORIj83sniMKQ=;
 b=pRZXAyDQxBxiDx3pLrABUWgtFCAbGFp1ana4igZq85cUUE39YK4Lg53EEsI2S4bmOzDfWjrX2
 SBQGxL8q9dUBsXv+LSvDEz9H3qzZdjc6x0MCd7iJ3ullNHEuyv3/TdO
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_042139_497908_BB9D9DCA 
X-CRM114-Status: GOOD (  18.95  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/5] spi: spi-gpio: switch to gpiod api
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Switch the driver to the gpiod api. While at it, remove the unused
platform_data support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/gpio_spi.c | 118 +++++++++++++++----------------------------------
 include/spi/spi_gpio.h |  27 -----------
 2 files changed, 36 insertions(+), 109 deletions(-)

diff --git a/drivers/spi/gpio_spi.c b/drivers/spi/gpio_spi.c
index 36e6204283..6062bad98a 100644
--- a/drivers/spi/gpio_spi.c
+++ b/drivers/spi/gpio_spi.c
@@ -12,16 +12,19 @@
 #include <driver.h>
 #include <errno.h>
 #include <gpio.h>
+#include <linux/gpio/consumer.h>
 #include <init.h>
 #include <io.h>
 #include <malloc.h>
 #include <of_gpio.h>
 #include <spi/spi.h>
-#include <spi/spi_gpio.h>
 
 struct gpio_spi {
 	struct spi_master master;
-	struct gpio_spi_pdata *data;
+	struct gpio_desc *sck;
+	struct gpio_desc *mosi;
+	struct gpio_desc *miso;
+	struct gpio_descs *cs;
 };
 
 #define priv_from_spi_device(s)	container_of(s->master, struct gpio_spi, master)
@@ -29,23 +32,28 @@ struct gpio_spi {
 static inline void setsck(const struct spi_device *spi, int is_on)
 {
 	struct gpio_spi *priv = priv_from_spi_device(spi);
-	gpio_set_value(priv->data->sck, is_on);
+
+	gpiod_set_value(priv->sck, is_on);
 }
 
 static inline void setmosi(const struct spi_device *spi, int is_on)
 {
 	struct gpio_spi *priv = priv_from_spi_device(spi);
-	if (!gpio_is_valid(priv->data->mosi))
+
+	if (!priv->mosi)
 		return;
-	gpio_set_value(priv->data->mosi, is_on);
+
+	gpiod_set_value(priv->mosi, is_on);
 }
 
 static inline int getmiso(const struct spi_device *spi)
 {
 	struct gpio_spi *priv = priv_from_spi_device(spi);
-	if (!gpio_is_valid(priv->data->miso))
+
+	if (!priv->miso)
 		return 1;
-	return !!gpio_get_value(priv->data->miso);
+
+	return !!gpiod_get_value(priv->miso);
 }
 
 static inline void spidelay(unsigned int nsecs)
@@ -59,11 +67,13 @@ static int gpio_spi_set_cs(struct spi_device *spi, bool en)
 {
 	struct gpio_spi *priv = priv_from_spi_device(spi);
 
-	if (!gpio_is_valid(priv->data->cs[spi->chip_select]))
-		return 0;
-
-	gpio_set_value(priv->data->cs[spi->chip_select],
-		       (spi->mode & SPI_CS_HIGH) ? en : !en);
+	/*
+	 * Use the raw variant here. Devices using active high chip select
+	 * either have the spi-cs-high property in the device tree or set
+	 * SPI_CS_HIGH in their driver.
+	 */
+	gpiod_set_raw_value(priv->cs->desc[spi->chip_select],
+			    (spi->mode & SPI_CS_HIGH) ? en : !en);
 
 	return 0;
 }
@@ -169,91 +179,35 @@ static int gpio_spi_setup(struct spi_device *spi)
 	return 0;
 }
 
-static int gpio_spi_of_probe(struct device *dev)
-{
-	struct device_node *np = dev->of_node;
-	struct gpio_spi_pdata *pdata;
-	int n, sck;
-
-	if (!IS_ENABLED(CONFIG_OFDEVICE) || dev->platform_data)
-		return 0;
-
-	sck = of_get_named_gpio(np, "sck-gpios", 0);
-	if (!gpio_is_valid(sck))
-		return dev_err_probe(dev, sck < 0 ? sck : -EINVAL,
-				     "missing mandatory SCK gpio\n");
-
-	pdata = xzalloc(sizeof(*pdata));
-	pdata->sck = sck;
-	pdata->num_cs = MAX_CHIPSELECT;
-
-	pdata->miso = of_get_named_gpio(np, "miso-gpios", 0);
-	if (!gpio_is_valid(pdata->miso))
-		pdata->miso = SPI_GPIO_NO_MISO;
-
-	pdata->mosi = of_get_named_gpio(np, "mosi-gpios", 0);
-	if (!gpio_is_valid(pdata->mosi))
-		pdata->mosi = SPI_GPIO_NO_MOSI;
-
-	for (n = 0; n < MAX_CHIPSELECT; n++) {
-		pdata->cs[n] = of_get_named_gpio(np, "cs-gpios", n);
-		if (!gpio_is_valid(pdata->cs[n]))
-		    pdata->cs[n] = SPI_GPIO_NO_CS;
-	}
-
-	dev->platform_data = pdata;
-
-	return 0;
-}
-
 static int gpio_spi_probe(struct device *dev)
 {
 	struct gpio_spi *priv;
-	struct gpio_spi_pdata *pdata;
 	struct spi_master *master;
-	int n, ret;
-
-	ret = gpio_spi_of_probe(dev);
-	if (ret)
-		return ret;
-	pdata = dev->platform_data;
 
-	ret = gpio_request_one(pdata->sck, GPIOF_DIR_OUT, "spi-sck");
-	if (ret)
-		return ret;
+	priv = xzalloc(sizeof(*priv));
 
-	if (pdata->miso != SPI_GPIO_NO_MISO) {
-		ret = gpio_request_one(pdata->miso, GPIOF_DIR_IN, "spi-miso");
-		if (ret)
-			return ret;
-	}
+	priv->sck = gpiod_get(dev, "sck", GPIOD_OUT_LOW);
+	if (IS_ERR(priv->sck))
+		return dev_err_probe(dev, PTR_ERR(priv->sck), "No SCK GPIO\n");
 
-	if (pdata->mosi != SPI_GPIO_NO_MOSI) {
-		ret = gpio_request_one(pdata->mosi, GPIOF_DIR_OUT, "spi-mosi");
-		if (ret)
-			return ret;
-	}
+	priv->miso = gpiod_get_optional(dev, "miso", GPIOD_IN);
+	if (IS_ERR(priv->miso))
+		return dev_err_probe(dev, PTR_ERR(priv->miso), "No MISO GPIO\n");
 
-	for (n = 0; n < pdata->num_cs; n++) {
-		char *cs_name;
+	priv->mosi = gpiod_get_optional(dev, "mosi", GPIOD_OUT_LOW);
+	if (IS_ERR(priv->mosi))
+		return dev_err_probe(dev, PTR_ERR(priv->mosi), "No MOSI GPIO\n");
 
-		if (!gpio_is_valid(pdata->cs[n]))
-			continue;
+	priv->cs = gpiod_get_array(dev, "cs", GPIOD_OUT_HIGH);
+	if (IS_ERR(priv->cs))
+		return dev_err_probe(dev, PTR_ERR(priv->cs), "No CS GPIOs\n");
 
-		cs_name = basprintf("spi-cs%d", n);
-		ret = gpio_request_one(pdata->cs[n], GPIOF_DIR_OUT, cs_name);
-		if (ret)
-			return ret;
-	}
-
-	priv = xzalloc(sizeof(*priv));
-	priv->data = pdata;
 	master = &priv->master;
 	master->dev = dev;
 	master->bus_num = dev->id;
 	master->setup = gpio_spi_setup;
 	master->transfer = gpio_spi_transfer;
-	master->num_chipselect = priv->data->num_cs;
+	master->num_chipselect = priv->cs->ndescs;
 
 	return spi_register_master(&priv->master);
 }
diff --git a/include/spi/spi_gpio.h b/include/spi/spi_gpio.h
deleted file mode 100644
index a18b7dbe07..0000000000
--- a/include/spi/spi_gpio.h
+++ /dev/null
@@ -1,27 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * SPI master driver using generic bitbanged GPIO
- *
- * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
- *
- * Based on Linux driver
- *   Copyright (C) 2006,2008 David Brownell
- */
-
-#ifndef __SPI_GPIO_H
-#define __SPI_GPIO_H
-
-#define MAX_CHIPSELECT		4
-#define SPI_GPIO_NO_CS		(-1)
-#define SPI_GPIO_NO_MISO	(-1)
-#define SPI_GPIO_NO_MOSI	(-1)
-
-struct gpio_spi_pdata {
-	int sck;
-	int mosi;
-	int miso;
-	int cs[MAX_CHIPSELECT];
-	int num_cs;
-};
-
-#endif

-- 
2.39.5



