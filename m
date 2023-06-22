Delivery-date: Thu, 22 Jun 2023 09:25:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEhD-00GhRv-DF
	for lore@lore.pengutronix.de; Thu, 22 Jun 2023 09:25:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEh8-0001pS-Ub
	for lore@pengutronix.de; Thu, 22 Jun 2023 09:25:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I99+XSNvg/9U+5yur08Dh6Y8qOiFDk0mRbWiCGBVqU8=; b=C89rqlUQU8ROKw7LuIFWb9rsBk
	6nuXdseGd3HAcOPIMwG2anYEVHsFyKHMYbShcbwh1J6N2Ofp8KcTPBgR0cdMqKUfx8SUNoxXa7txA
	ipgahA6uNRy+KLLrHSEBcnxsqA9RuqBhGudMzNIwzf6bdqPF/OYw9iF04Wy9mGcKCTU5oerh9Ti9j
	nTM7wg5eWBTt0LzXHfj/yeAKcjVmPZkiAsp2kRcrEOed+x+z+ra5jP+4rU9ReSSDUn/TDtdb90LGC
	Ouh9IBQDbt75WEhK/8zGcbpeJTfz1vfNAyaSsR2LFwYHlchZk8MYnGyUYpfJ5xyyfaMq16j6ygSFC
	v/KJtKaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfe-00HDxo-2T;
	Thu, 22 Jun 2023 07:23:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfR-00HDpy-2Y
	for barebox@lists.infradead.org;
	Thu, 22 Jun 2023 07:23:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfM-0000zS-PW; Thu, 22 Jun 2023 09:23:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfM-009Djj-4W; Thu, 22 Jun 2023 09:23:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfL-005cRR-0E;
	Thu, 22 Jun 2023 09:23:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Jun 2023 09:23:23 +0200
Message-Id: <20230622072329.1339317-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
References: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_002346_321689_2F9F1730 
X-CRM114-Status: GOOD (  26.24  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/9] gpio: have gpiod_ functions return and accept pointers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The gpiod_ (GPIO descriptor) API used with Linux differs from barebox'
normal GPIO API:

 - gpiod handles are opaque pointers and not an integer, which users
   have an expectation of stability for

 - gpiod API uses logic levels by default with separate raw API for
   physical level instead of physical level by default and separate
   API taking active level into account.

The barebox gpiod_ API mimics the latter point, but still uses integers
requiring ugly and arguably error prone conversions when porting kernel
code. Let's improve upon that by just encoding the integer into a
pointer variable for API compatibility.

Later commits will switch barebox GPIO support to use actual GPIO
descriptors without consulting the numeric indices, but we do this
temporary switch here, so we can split up provider and consumer changes.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpio-pca953x.c              |   9 +-
 drivers/gpio/gpiolib.c                   |  21 ++--
 drivers/mci/mci_spi.c                    |  13 +-
 drivers/mtd/nand/atmel/nand-controller.c |  40 +++---
 drivers/mtd/nand/nand_base.c             |   6 +-
 drivers/net/designware_eqos.c            |  26 ++--
 drivers/net/ksz8873.c                    |  13 +-
 drivers/net/ksz9477.c                    |  13 +-
 drivers/net/realtek-dsa/realtek-mdio.c   |  10 +-
 drivers/net/realtek-dsa/realtek-smi.c    |  18 +--
 drivers/net/realtek-dsa/realtek.h        |   6 +-
 drivers/net/sja1105.c                    |  25 ++--
 drivers/nvmem/starfive-otp.c             |  12 +-
 drivers/pci/pcie-dw-rockchip.c           |  14 +--
 drivers/power/reset/gpio-poweroff.c      |  14 +--
 drivers/power/reset/gpio-restart.c       |  23 ++--
 drivers/regulator/fixed.c                |  27 ++---
 drivers/sound/gpio-beeper.c              |  14 +--
 drivers/usb/misc/onboard_usb_hub.c       |  11 +-
 drivers/video/mipi_dbi.c                 |   8 +-
 drivers/video/panel-ilitek-ili9341.c     |  17 +--
 drivers/video/panel-mipi-dbi.c           |  17 +--
 drivers/watchdog/gpio_wdt.c              |  22 ++--
 include/gpiod.h                          |  79 +-----------
 include/linux/gpio/consumer.h            | 148 +++++++++++++++++++++++
 include/linux/mtd/rawnand.h              |   4 +-
 include/video/mipi_dbi.h                 |   7 +-
 27 files changed, 345 insertions(+), 272 deletions(-)
 create mode 100644 include/linux/gpio/consumer.h

diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
index 2736efce95ad..cee60f7a65fc 100644
--- a/drivers/gpio/gpio-pca953x.c
+++ b/drivers/gpio/gpio-pca953x.c
@@ -12,7 +12,7 @@
 #include <common.h>
 #include <malloc.h>
 #include <driver.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 #include <regulator.h>
 #include <xfuncs.h>
 #include <errno.h>
@@ -419,7 +419,8 @@ static int pca953x_probe(struct device *dev)
 	struct pca953x_platform_data *pdata;
 	struct pca953x_chip *chip;
 	struct regulator *reg;
-	int reset_gpio, ret;
+	struct gpio_desc *reset_gpio;
+	int ret;
 	u32 invert = 0;
 
 	chip = xzalloc(sizeof(struct pca953x_chip));
@@ -442,8 +443,8 @@ static int pca953x_probe(struct device *dev)
 
 	chip->client = client;
 
-	reset_gpio = gpiod_get(dev, "reset", GPIOD_OUT_LOW);
-	if (!gpio_is_valid(reset_gpio) && reset_gpio != -ENOENT)
+	reset_gpio = gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(reset_gpio))
 		dev_warn(dev, "Failed to get 'reset' GPIO (ignored)\n");
 
 	reg = regulator_get(dev, "vcc");
diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 368fea919835..ee1bc5f6156f 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -7,7 +7,7 @@
 #include <complete.h>
 #include <gpio.h>
 #include <of_gpio.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 #include <errno.h>
 #include <malloc.h>
 
@@ -670,19 +670,20 @@ static const char *gpio_suffixes[] = {
 };
 
 /* Linux compatibility helper: Get a GPIO descriptor from device tree */
-int dev_gpiod_get_index(struct device *dev,
+struct gpio_desc *dev_gpiod_get_index(struct device *dev,
 			struct device_node *np,
 			const char *_con_id, int index,
 			enum gpiod_flags flags,
 			const char *label)
 {
+	struct gpio_desc *desc = NULL;
 	enum of_gpio_flags of_flags;
 	char *buf = NULL, *con_id;
 	int gpio;
 	int ret, i;
 
 	if (!np)
-		return -ENODEV;
+		return ERR_PTR(-ENODEV);
 
 	for (i = 0; i < ARRAY_SIZE(gpio_suffixes); i++) {
 		if (_con_id)
@@ -691,17 +692,19 @@ int dev_gpiod_get_index(struct device *dev,
 			con_id = basprintf("%s", gpio_suffixes[i]);
 
 		if (!con_id)
-			return -ENOMEM;
+			return ERR_PTR(-ENOMEM);
 
 		gpio = of_get_named_gpio_flags(np, con_id, index, &of_flags);
 		free(con_id);
 
-		if (gpio_is_valid(gpio))
+		if (gpio_is_valid(gpio)) {
+			desc = __tmp_gpio_to_desc(gpio);
 			break;
+		}
 	}
 
-	if (!gpio_is_valid(gpio))
-		return gpio < 0 ? gpio : -EINVAL;
+	if (!desc)
+		return ERR_PTR(gpio < 0 ? gpio : -EINVAL);
 
 	if (of_flags & OF_GPIO_ACTIVE_LOW)
 		flags |= GPIOF_ACTIVE_LOW;
@@ -715,10 +718,10 @@ int dev_gpiod_get_index(struct device *dev,
 			label = dev_name(dev);
 	}
 
-	ret = gpio_request_one(gpio, flags, label);
+	ret = gpio_request_one(__tmp_desc_to_gpio(desc), flags, label);
 	free(buf);
 
-	return ret ?: gpio;
+	return ret ? ERR_PTR(ret): desc;
 }
 #endif
 
diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 593ec5c47c14..ad743d19d9f8 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -19,7 +19,7 @@
 #include <crc.h>
 #include <crc7.h>
 #include <of.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 
 #define to_spi_host(mci) container_of(mci, struct mmc_spi_host, mci)
 #define spi_setup(spi) spi->master->setup(spi)
@@ -49,7 +49,7 @@ struct mmc_spi_host {
 	struct mci_host	mci;
 	struct spi_device	*spi;
 	struct device	*dev;
-	int detect_pin;
+	struct gpio_desc *detect_pin;
 
 	/* for bulk data transfers */
 	struct spi_transfer	t_tx;
@@ -360,10 +360,10 @@ static int spi_mci_card_present(struct mci_host *mci)
 	int			ret;
 
 	/* No gpio, assume card is present */
-	if (!gpio_is_valid(host->detect_pin))
+	if (IS_ERR_OR_NULL(host->detect_pin))
 		return 1;
 
-	ret = gpio_get_value(host->detect_pin);
+	ret = gpiod_get_value(host->detect_pin);
 
 	return ret == 0 ? 1 : 0;
 }
@@ -434,11 +434,12 @@ static int spi_mci_probe(struct device *dev)
 
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 	host->mci.host_caps = MMC_CAP_SPI;
-	host->detect_pin = -EINVAL;
 
 	if (np) {
 		host->mci.devname = xstrdup(of_alias_get(np));
-		host->detect_pin = gpiod_get(dev, NULL, GPIOD_IN);
+		host->detect_pin = gpiod_get_optional(dev, NULL, GPIOD_IN);
+		if (IS_ERR(host->detect_pin))
+			dev_warn(dev, "Failed to get 'reset' GPIO (ignored)\n");
 	}
 
 	mci_register(&host->mci);
diff --git a/drivers/mtd/nand/atmel/nand-controller.c b/drivers/mtd/nand/atmel/nand-controller.c
index 6cd770074131..cb74b365c8e4 100644
--- a/drivers/mtd/nand/atmel/nand-controller.c
+++ b/drivers/mtd/nand/atmel/nand-controller.c
@@ -47,7 +47,7 @@
 
 #include <linux/clk.h>
 #include <linux/genalloc.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 #include <mfd/syscon.h>
 #include <linux/mfd/syscon/atmel-matrix.h>
 #include <linux/mfd/syscon/atmel-smc.h>
@@ -130,7 +130,7 @@ enum atmel_nand_rb_type {
 struct atmel_nand_rb {
 	enum atmel_nand_rb_type type;
 	union {
-		int gpio;
+		struct gpio_desc *gpio;
 		int id;
 	};
 };
@@ -138,7 +138,7 @@ struct atmel_nand_rb {
 struct atmel_nand_cs {
 	int id;
 	struct atmel_nand_rb rb;
-	int csgpio;
+	struct gpio_desc *csgpio;
 	struct {
 		void __iomem *virt;
 	} io;
@@ -152,7 +152,7 @@ struct atmel_nand {
 	struct nand_chip base;
 	struct atmel_nand_cs *activecs;
 	struct atmel_pmecc_user *pmecc;
-	int cdgpio;
+	struct gpio_desc *cdgpio;
 	int numcs;
 	struct atmel_nand_cs cs[];
 };
@@ -1437,7 +1437,7 @@ static struct atmel_nand *atmel_nand_create(struct atmel_nand_controller *nc,
 					    int reg_cells)
 {
 	struct atmel_nand *nand;
-	int gpio;
+	struct gpio_desc *gpio;
 	int numcs, ret, i;
 
 	numcs = of_property_count_elems_of_size(np, "reg",
@@ -1451,16 +1451,17 @@ static struct atmel_nand *atmel_nand_create(struct atmel_nand_controller *nc,
 	if (!nand)
 		return ERR_PTR(-ENOMEM);
 
-	nand->cdgpio = -ENOENT;
 	nand->numcs = numcs;
 
 	gpio = dev_gpiod_get(nc->dev, np, "det", GPIOD_IN, "nand-det");
-	if (gpio < 0 && gpio != -ENOENT) {
-		ret = dev_err_probe(nc->dev, gpio, "Failed to get detect gpio\n");
-		return ERR_PTR(ret);
+	if (IS_ERR(gpio) && PTR_ERR(gpio) != -ENOENT) {
+		dev_err(nc->dev,
+			"Failed to get detect gpio (err = %ld)\n",
+			PTR_ERR(gpio));
+		return ERR_CAST(gpio);
 	}
 
-	if (gpio < 0)
+	if (!IS_ERR(gpio))
 		nand->cdgpio = gpio;
 
 	for (i = 0; i < numcs; i++) {
@@ -1483,7 +1484,6 @@ static struct atmel_nand *atmel_nand_create(struct atmel_nand_controller *nc,
 		}
 
 		nand->cs[i].id = val;
-		nand->cs[i].csgpio = -ENOENT;
 
 		nand->cs[i].io.virt = IOMEM(res.start);
 		ret = dev_request_resource(nc->dev, &res);
@@ -1498,24 +1498,24 @@ static struct atmel_nand *atmel_nand_create(struct atmel_nand_controller *nc,
 			nand->cs[i].rb.id = val;
 		} else {
 			gpio = dev_gpiod_get_index(nc->dev, np, "rb", i, GPIOD_IN, "nand-rb");
-			if (gpio < 0 && gpio != -ENOENT) {
-				ret = dev_err_probe(nc->dev, gpio, "Failed to get R/B gpio\n");
-				return ERR_PTR(ret);
+			if (IS_ERR(gpio) && PTR_ERR(gpio) != -ENOENT) {
+				dev_errp_probe(nc->dev, gpio, "Failed to get detect gpio\n");
+				return ERR_CAST(gpio);
 			}
 
-			if (gpio < 0) {
+			if (!IS_ERR(gpio)) {
 				nand->cs[i].rb.type = ATMEL_NAND_GPIO_RB;
 				nand->cs[i].rb.gpio = gpio;
 			}
 		}
 
 		gpio = dev_gpiod_get_index(nc->dev, np, "cs", i, GPIOD_OUT_HIGH, "nand-cs");
-		if (gpio < 0 && gpio != -ENOENT) {
-			ret = dev_err_probe(nc->dev, gpio, "Failed to get CS gpio\n");
-			return ERR_PTR(ret);
+		if (IS_ERR(gpio) && PTR_ERR(gpio) != -ENOENT) {
+			dev_errp_probe(nc->dev, gpio, "Failed to get CS gpio\n");
+			return ERR_CAST(gpio);
 		}
 
-		if (gpio < 0)
+		if (!IS_ERR(gpio))
 			nand->cs[i].csgpio = gpio;
 	}
 
@@ -1533,7 +1533,7 @@ atmel_nand_controller_add_nand(struct atmel_nand_controller *nc,
 	int ret;
 
 	/* No card inserted, skip this NAND. */
-	if (gpio_is_valid(nand->cdgpio) && gpiod_get_value(nand->cdgpio)) {
+	if (nand->cdgpio && gpiod_get_value(nand->cdgpio)) {
 		dev_info(nc->dev, "No SmartMedia card inserted.\n");
 		return 0;
 	}
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 55218b120210..2599e8c8c2c7 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -36,7 +36,7 @@
 #include <asm/byteorder.h>
 #include <io.h>
 #include <malloc.h>
-#include <gpio.h>
+#include <linux/gpio/consumer.h>
 #include <module.h>
 #include <of_mtd.h>
 
@@ -810,10 +810,10 @@ EXPORT_SYMBOL_GPL(nand_soft_waitrdy);
  *
  * Return 0 if the R/B pin indicates chip is ready, a negative error otherwise.
  */
-int nand_gpio_waitrdy(struct nand_chip *chip, int gpio,
+int nand_gpio_waitrdy(struct nand_chip *chip, struct gpio_desc *gpio,
 		      unsigned long timeout_ms)
 {
-	return gpio_poll_timeout_us(gpio, true, timeout_ms * USEC_PER_MSEC);
+	return gpiod_poll_timeout_us(gpio, true, timeout_ms * USEC_PER_MSEC);
 };
 EXPORT_SYMBOL_GPL(nand_gpio_waitrdy);
 
diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 3fa5bf58c2cc..5e5c9ebe6875 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -9,7 +9,7 @@
 #include <common.h>
 #include <init.h>
 #include <gpio.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 #include <dma.h>
 #include <net.h>
 #include <of_net.h>
@@ -200,21 +200,21 @@ struct eqos_desc {
 
 static int eqos_phy_reset(struct device *dev, struct eqos *eqos)
 {
-	int phy_reset;
+	struct gpio_desc *phy_reset;
 	u32 delays[3] = { 0, 0, 0 };
 
-	phy_reset = gpiod_get(dev, "snps,reset", GPIOF_OUT_INIT_ACTIVE);
+	phy_reset = gpiod_get_optional(dev, "snps,reset", GPIOF_OUT_INIT_ACTIVE);
+	if (IS_ERR(phy_reset)) {
+		dev_warn(dev, "Failed to get 'snps,reset' GPIO (ignored)\n");
+	} else if (phy_reset) {
+		of_property_read_u32_array(dev->of_node,
+					   "snps,reset-delays-us",
+					   delays, ARRAY_SIZE(delays));
 
-	if (!gpio_is_valid(phy_reset))
-		return 0;
-
-	of_property_read_u32_array(dev->of_node,
-				   "snps,reset-delays-us",
-				   delays, ARRAY_SIZE(delays));
-
-	udelay(delays[1]);
-	gpio_set_active(phy_reset, false);
-	udelay(delays[2]);
+		udelay(delays[1]);
+		gpiod_set_value(phy_reset, false);
+		udelay(delays[2]);
+	}
 
 	return 0;
 }
diff --git a/drivers/net/ksz8873.c b/drivers/net/ksz8873.c
index 35ef0d2da2fb..7e98ec492a71 100644
--- a/drivers/net/ksz8873.c
+++ b/drivers/net/ksz8873.c
@@ -3,7 +3,7 @@
 #include <common.h>
 #include <complete.h>
 #include <dsa.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 #include <linux/mii.h>
 #include <linux/mdio.h>
 #include <net.h>
@@ -369,7 +369,8 @@ static int ksz8873_probe_mdio(struct phy_device *mdiodev)
 	const struct ksz8873_dcfg *dcfg;
 	struct ksz8873_switch *priv;
 	struct dsa_switch *ds;
-	int ret, gpio;
+	struct gpio_desc *gpio;
+	int ret;
 	u8 id0, id1;
 
 	priv = xzalloc(sizeof(*priv));
@@ -389,10 +390,12 @@ static int ksz8873_probe_mdio(struct phy_device *mdiodev)
 		return dev_err_probe(dev, PTR_ERR(priv->regmap),
 				     "Failed to initialize regmap.\n");
 
-	gpio = gpiod_get(dev, "reset", GPIOF_OUT_INIT_ACTIVE);
-	if (gpio_is_valid(gpio)) {
+	gpio = gpiod_get_optional(dev, "reset", GPIOF_OUT_INIT_ACTIVE);
+	if (IS_ERR(gpio)) {
+		dev_warn(dev, "Failed to get 'reset' GPIO (ignored)\n");
+	} else if (gpio) {
 		mdelay(1);
-		gpio_set_active(gpio, false);
+		gpiod_set_value(gpio, false);
 	}
 
 	ret = ksz_read8(priv, KSZ8873_CHIP_ID0, &id0);
diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index 4b876055f6e8..61142aa97b1a 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -3,7 +3,7 @@
 #include <common.h>
 #include <complete.h>
 #include <dsa.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 #include <net.h>
 #include <platform_data/ksz9477_reg.h>
 #include <spi/spi.h>
@@ -410,7 +410,8 @@ static int microchip_switch_probe(struct device *dev)
 {
 	struct device *hw_dev;
 	struct ksz_switch *priv;
-	int ret = 0, gpio;
+	struct gpio_desc *gpio;
+	int ret = 0;
 	struct dsa_switch *ds;
 
 	priv = xzalloc(sizeof(*priv));
@@ -432,10 +433,12 @@ static int microchip_switch_probe(struct device *dev)
 	if (ret)
 		return ret;
 
-	gpio = gpiod_get(dev, "reset", GPIOF_OUT_INIT_ACTIVE);
-	if (gpio_is_valid(gpio)) {
+	gpio = gpiod_get_optional(dev, "reset", GPIOF_OUT_INIT_ACTIVE);
+	if (IS_ERR(gpio)) {
+		dev_warn(dev, "Failed to get 'reset' GPIO (ignored)\n");
+	} else if (gpio) {
 		mdelay(1);
-		gpio_set_active(gpio, false);
+		gpiod_set_value(gpio, false);
 	}
 
 	ksz_reset_switch(dev->priv);
diff --git a/drivers/net/realtek-dsa/realtek-mdio.c b/drivers/net/realtek-dsa/realtek-mdio.c
index a869308035c4..6776609b0480 100644
--- a/drivers/net/realtek-dsa/realtek-mdio.c
+++ b/drivers/net/realtek-dsa/realtek-mdio.c
@@ -22,7 +22,7 @@
 #include <of_device.h>
 #include <regmap.h>
 #include <clock.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 #include <linux/printk.h>
 #include <linux/mdio.h>
 
@@ -151,11 +151,11 @@ static int realtek_mdio_probe(struct phy_device *mdiodev)
 	/* TODO: if power is software controlled, set up any regulators here */
 	priv->leds_disabled = of_property_read_bool(np, "realtek,disable-leds");
 
-	priv->reset = gpiod_get(dev, "reset", GPIOD_OUT_LOW);
-	if (priv->reset < 0 && priv->reset != -ENOENT)
-		return dev_err_probe(dev, priv->reset, "failed to get RESET GPIO\n");
+	priv->reset = gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(priv->reset))
+		return dev_errp_probe(dev, priv->reset, "failed to get RESET GPIO\n");
 
-	if (gpio_is_valid(priv->reset)) {
+	if (priv->reset) {
 		gpiod_set_value(priv->reset, 1);
 		dev_dbg(dev, "asserted RESET\n");
 		mdelay(REALTEK_HW_STOP_DELAY);
diff --git a/drivers/net/realtek-dsa/realtek-smi.c b/drivers/net/realtek-dsa/realtek-smi.c
index 35b3d30a060e..8e6f0e2ad94f 100644
--- a/drivers/net/realtek-dsa/realtek-smi.c
+++ b/drivers/net/realtek-dsa/realtek-smi.c
@@ -33,7 +33,7 @@
 #include <linux/mdio.h>
 #include <linux/printk.h>
 #include <clock.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 #include <driver.h>
 #include <regmap.h>
 #include <linux/bitops.h>
@@ -413,11 +413,11 @@ static int realtek_smi_probe(struct device *dev)
 
 	/* TODO: if power is software controlled, set up any regulators here */
 
-	priv->reset = gpiod_get(dev, "reset", GPIOD_OUT_LOW);
-	if (priv->reset < 0 && priv->reset != -ENOENT)
-		return dev_err_probe(dev, priv->reset, "failed to get RESET GPIO\n");
+	priv->reset = gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(priv->reset))
+		return dev_errp_probe(dev, priv->reset, "failed to get RESET GPIO\n");
 
-	if (gpio_is_valid(priv->reset)) {
+	if (priv->reset) {
 		gpiod_set_value(priv->reset, 1);
 		dev_dbg(dev, "asserted RESET\n");
 		mdelay(REALTEK_HW_STOP_DELAY);
@@ -428,12 +428,12 @@ static int realtek_smi_probe(struct device *dev)
 
 	/* Fetch MDIO pins */
 	priv->mdc = gpiod_get(dev, "mdc", GPIOD_OUT_LOW);
-	if (!gpio_is_valid(priv->mdc))
-		return dev_err_probe(dev, priv->mdc, "failed to get MDC GPIO\n");
+	if (IS_ERR(priv->mdc))
+		return dev_errp_probe(dev, priv->mdc, "failed to get MDC GPIO\n");
 
 	priv->mdio = gpiod_get(dev, "mdio", GPIOD_OUT_LOW);
-	if (!gpio_is_valid(priv->mdio))
-		return dev_err_probe(dev, priv->mdio, "failed to get MDIO GPIO\n");
+	if (IS_ERR(priv->mdio))
+		return dev_errp_probe(dev, priv->mdio, "failed to get MDIO GPIO\n");
 
 	priv->leds_disabled = of_property_read_bool(np, "realtek,disable-leds");
 
diff --git a/drivers/net/realtek-dsa/realtek.h b/drivers/net/realtek-dsa/realtek.h
index 46a2282f6e6d..ac84b18cdd14 100644
--- a/drivers/net/realtek-dsa/realtek.h
+++ b/drivers/net/realtek-dsa/realtek.h
@@ -21,9 +21,9 @@ struct realtek_ops;
 
 struct realtek_priv {
 	struct device		*dev;
-	int			reset;
-	int			mdc;
-	int			mdio;
+	struct gpio_desc	*reset;
+	struct gpio_desc	*mdc;
+	struct gpio_desc	*mdio;
 	union {
 		struct regmap		*map;
 		struct regmap		*map_nolock;
diff --git a/drivers/net/sja1105.c b/drivers/net/sja1105.c
index ef874ed4829d..d88a5e2fcf24 100644
--- a/drivers/net/sja1105.c
+++ b/drivers/net/sja1105.c
@@ -10,7 +10,7 @@
 
 #include <common.h>
 #include <dsa.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 #include <linux/bitrev.h>
 #include <linux/if_vlan.h>
 #include <net.h>
@@ -2883,18 +2883,19 @@ static int sja1105_check_device_id(struct sja1105_private *priv)
 static int sja1105_hw_reset(struct device *dev, unsigned int pulse_len,
 			    unsigned int startup_delay)
 {
-	int gpio;
+	struct gpio_desc *gpio;
 
-	gpio = gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
-	if (gpio < 0)
-		return 0;
-
-	gpiod_set_value(gpio, 1);
-	/* Wait for minimum reset pulse length */
-	mdelay(pulse_len);
-	gpiod_set_value(gpio, 0);
-	/* Wait until chip is ready after reset */
-	mdelay(startup_delay);
+	gpio = gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(gpio)) {
+		dev_warn(dev, "Failed to get 'reset' GPIO (ignored)\n");
+	} else if (gpio) {
+		gpiod_set_value(gpio, 1);
+		/* Wait for minimum reset pulse length */
+		mdelay(pulse_len);
+		gpiod_set_value(gpio, 0);
+		/* Wait until chip is ready after reset */
+		mdelay(startup_delay);
+	}
 
 	return 0;
 }
diff --git a/drivers/nvmem/starfive-otp.c b/drivers/nvmem/starfive-otp.c
index d672b93eddf4..91069dc78ebf 100644
--- a/drivers/nvmem/starfive-otp.c
+++ b/drivers/nvmem/starfive-otp.c
@@ -8,7 +8,7 @@
 #include <malloc.h>
 #include <xfuncs.h>
 #include <errno.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 #include <init.h>
 #include <net.h>
 #include <io.h>
@@ -87,7 +87,7 @@
  */
 
 struct starfive_otp {
-	int power_gpio;
+	struct gpio_desc *power_gpio;
 	struct starfive_otp_regs __iomem *regs;
 };
 
@@ -112,7 +112,7 @@ static int starfive_otp_read(void *ctx, unsigned offset, unsigned *val)
 {
 	struct starfive_otp *priv = ctx;
 
-	gpio_set_active(priv->power_gpio, true);
+	gpiod_set_value(priv->power_gpio, true);
 	mdelay(10);
 
 	//otp set to read mode
@@ -122,7 +122,7 @@ static int starfive_otp_read(void *ctx, unsigned offset, unsigned *val)
 	/* read all requested fuses */
 	*val = readl(&priv->regs->mem[offset / 4]);
 
-	gpio_set_active(priv->power_gpio, false);
+	gpiod_set_value(priv->power_gpio, false);
 	mdelay(5);
 
 	return 0;
@@ -178,8 +178,8 @@ static int starfive_otp_probe(struct device *dev)
 
 	priv->regs = IOMEM(iores->start);
 	priv->power_gpio = gpiod_get(dev, "power", GPIOD_OUT_LOW);
-	if (priv->power_gpio < 0)
-		return priv->power_gpio;
+	if (IS_ERR(priv->power_gpio))
+		return PTR_ERR(priv->power_gpio);
 
 	map = regmap_init(dev, &starfive_otp_regmap_bus, priv, &config);
 	if (IS_ERR(map))
diff --git a/drivers/pci/pcie-dw-rockchip.c b/drivers/pci/pcie-dw-rockchip.c
index def32c988e28..cc771e2cae20 100644
--- a/drivers/pci/pcie-dw-rockchip.c
+++ b/drivers/pci/pcie-dw-rockchip.c
@@ -22,7 +22,7 @@
 #include <linux/kernel.h>
 #include <of_address.h>
 #include <of_pci.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 #include <linux/pci.h>
 #include <linux/phy/phy.h>
 #include <linux/reset.h>
@@ -61,7 +61,7 @@ struct rockchip_pcie {
 	struct clk_bulk_data		*clks;
 	unsigned int			clk_cnt;
 	struct reset_control		*rst;
-	int				rst_gpio;
+	struct gpio_desc		*rst_gpio;
 	struct regulator                *vpcie3v3;
 	struct irq_domain		*irq_domain;
 };
@@ -106,7 +106,7 @@ static int rockchip_pcie_start_link(struct dw_pcie *pci)
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
 
 	/* Reset device */
-	gpio_set_value(rockchip->rst_gpio, 0);
+	gpiod_set_value(rockchip->rst_gpio, 0);
 
 	rockchip_pcie_enable_ltssm(rockchip);
 
@@ -120,7 +120,7 @@ static int rockchip_pcie_start_link(struct dw_pcie *pci)
 	 * 100us as we don't know how long should the device need to reset.
 	 */
 	mdelay(100);
-	gpio_set_value(rockchip->rst_gpio, 1);
+	gpiod_set_value(rockchip->rst_gpio, 1);
 
 	return 0;
 }
@@ -177,9 +177,9 @@ static int rockchip_pcie_resource_get(struct device *dev,
 		return PTR_ERR(r);
 	rockchip->pci.dbi_base = IOMEM(r->start);
 
-	rockchip->rst_gpio = gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
-	if (rockchip->rst_gpio < 0 && rockchip->rst_gpio != -ENOENT)
-		return rockchip->rst_gpio;
+	rockchip->rst_gpio = gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(rockchip->rst_gpio))
+		return PTR_ERR(rockchip->rst_gpio);
 
 	rockchip->rst = reset_control_array_get(dev);
 	if (IS_ERR(rockchip->rst))
diff --git a/drivers/power/reset/gpio-poweroff.c b/drivers/power/reset/gpio-poweroff.c
index 48a479814e6b..cafa1387ce0b 100644
--- a/drivers/power/reset/gpio-poweroff.c
+++ b/drivers/power/reset/gpio-poweroff.c
@@ -10,14 +10,14 @@
 #include <common.h>
 #include <driver.h>
 #include <poweroff.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 
 #define DEFAULT_TIMEOUT_MS 3000
 /*
  * Hold configuration here, cannot be more than one instance of the driver
  * since pm_power_off itself is global.
  */
-static int reset_gpio;
+static struct gpio_desc *reset_gpio;
 static u32 timeout = DEFAULT_TIMEOUT_MS;
 static u32 active_delay = 100;
 static u32 inactive_delay = 100;
@@ -25,15 +25,15 @@ static u32 inactive_delay = 100;
 static void gpio_poweroff_do_poweroff(struct poweroff_handler *handler)
 {
 	/* drive it active, also inactive->active edge */
-	gpio_direction_active(reset_gpio, true);
+	gpiod_direction_output(reset_gpio, true);
 	mdelay(active_delay);
 
 	/* drive inactive, also active->inactive edge */
-	gpio_set_active(reset_gpio, false);
+	gpiod_set_value(reset_gpio, false);
 	mdelay(inactive_delay);
 
 	/* drive it active, also inactive->active edge */
-	gpio_set_active(reset_gpio, true);
+	gpiod_set_value(reset_gpio, true);
 
 	/* give it some time */
 	mdelay(timeout);
@@ -65,8 +65,8 @@ static int gpio_poweroff_probe(struct device *dev)
 	of_property_read_u32(np, "timeout-ms", &timeout);
 
 	reset_gpio = gpiod_get(dev, NULL, flags);
-	if (reset_gpio < 0)
-		return reset_gpio;
+	if (IS_ERR(reset_gpio))
+		return PTR_ERR(reset_gpio);
 
 	handler.name = "gpio-poweroff";
 	handler.poweroff = gpio_poweroff_do_poweroff;
diff --git a/drivers/power/reset/gpio-restart.c b/drivers/power/reset/gpio-restart.c
index 946acd4164c4..ed2748f91092 100644
--- a/drivers/power/reset/gpio-restart.c
+++ b/drivers/power/reset/gpio-restart.c
@@ -9,10 +9,10 @@
 #include <common.h>
 #include <driver.h>
 #include <restart.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 
 struct gpio_restart {
-	int reset_gpio;
+	struct gpio_desc *reset_gpio;
 	struct restart_handler restart_handler;
 	u32 active_delay_ms;
 	u32 inactive_delay_ms;
@@ -25,15 +25,15 @@ static void __noreturn gpio_restart_handle(struct restart_handler *this)
 		container_of(this, struct gpio_restart, restart_handler);
 
 	/* drive it active, also inactive->active edge */
-	gpio_direction_active(gpio_restart->reset_gpio, true);
+	gpiod_direction_output(gpio_restart->reset_gpio, true);
 	mdelay(gpio_restart->active_delay_ms);
 
 	/* drive inactive, also active->inactive edge */
-	gpio_set_active(gpio_restart->reset_gpio, false);
+	gpiod_direction_output(gpio_restart->reset_gpio, false);
 	mdelay(gpio_restart->inactive_delay_ms);
 
 	/* drive it active, also inactive->active edge */
-	gpio_set_active(gpio_restart->reset_gpio, true);
+	gpiod_direction_output(gpio_restart->reset_gpio, true);
 
 	/* give it some time */
 	mdelay(gpio_restart->wait_delay_ms);
@@ -47,6 +47,7 @@ static int gpio_restart_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	struct gpio_restart *gpio_restart;
+	struct gpio_desc *gpiod;
 	bool open_source = false;
 	u32 property;
 	int ret;
@@ -55,15 +56,11 @@ static int gpio_restart_probe(struct device *dev)
 
 	open_source = of_property_read_bool(np, "open-source");
 
-	gpio_restart->reset_gpio = gpiod_get(dev, NULL,
-			open_source ? GPIOD_IN : GPIOD_OUT_LOW);
-	ret = gpio_restart->reset_gpio;
-	if (ret < 0) {
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "Could not get reset GPIO\n");
-		return ret;
-	}
+	gpiod = gpiod_get(dev, NULL, open_source ? GPIOD_IN : GPIOD_OUT_LOW);
+	if (IS_ERR(gpiod))
+		return dev_errp_probe(dev, gpiod, "Could not get reset GPIO\n");
 
+	gpio_restart->reset_gpio = gpiod;
 	gpio_restart->restart_handler.restart = gpio_restart_handle;
 	gpio_restart->restart_handler.name = "gpio-restart";
 	gpio_restart->restart_handler.priority = 129;
diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index 10428cac7ad3..0edb5ceb104b 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -9,12 +9,10 @@
 #include <init.h>
 #include <regulator.h>
 #include <of.h>
-#include <of_gpio.h>
-#include <gpio.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 
 struct regulator_fixed {
-	int gpio;
+	struct gpio_desc *gpio;
 	struct regulator_dev rdev;
 	struct regulator_desc rdesc;
 };
@@ -23,20 +21,14 @@ static int regulator_fixed_enable(struct regulator_dev *rdev)
 {
 	struct regulator_fixed *fix = container_of(rdev, struct regulator_fixed, rdev);
 
-	if (!gpio_is_valid(fix->gpio))
-		return 0;
-
-	return gpio_direction_active(fix->gpio, true);
+	return gpiod_direction_output(fix->gpio, true);
 }
 
 static int regulator_fixed_disable(struct regulator_dev *rdev)
 {
 	struct regulator_fixed *fix = container_of(rdev, struct regulator_fixed, rdev);
 
-	if (!gpio_is_valid(fix->gpio))
-		return 0;
-
-	return gpio_direction_active(fix->gpio, false);
+	return gpiod_direction_output(fix->gpio, false);
 }
 
 const static struct regulator_ops fixed_ops = {
@@ -55,14 +47,11 @@ static int regulator_fixed_probe(struct device *dev)
 		return -EINVAL;
 
 	fix = xzalloc(sizeof(*fix));
-	fix->gpio = -EINVAL;
 
-	if (of_get_property(np, "gpio", NULL)) {
-		fix->gpio = gpiod_get(dev, NULL, GPIOD_ASIS);
-		if (fix->gpio < 0) {
-			ret = fix->gpio;
-			goto err;
-		}
+	fix->gpio = gpiod_get_optional(dev, NULL, GPIOD_ASIS);
+	if (IS_ERR(fix->gpio)) {
+		ret = PTR_ERR(fix->gpio);
+		goto err;
 	}
 
 	fix->rdesc.ops = &fixed_ops;
diff --git a/drivers/sound/gpio-beeper.c b/drivers/sound/gpio-beeper.c
index b809e999bf8b..8fc3ce941016 100644
--- a/drivers/sound/gpio-beeper.c
+++ b/drivers/sound/gpio-beeper.c
@@ -7,10 +7,10 @@
 #include <regulator.h>
 #include <sound.h>
 #include <of.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 
 struct gpio_beeper {
-	int gpio;
+	struct gpio_desc *gpio;
 	struct sound_card card;
 };
 
@@ -18,7 +18,7 @@ static int gpio_beeper_beep(struct sound_card *card, unsigned freq, unsigned dur
 {
 	struct gpio_beeper *beeper = container_of(card, struct gpio_beeper, card);
 
-	gpio_set_active(beeper->gpio, freq);
+	gpiod_set_value(beeper->gpio, freq);
 	return 0;
 }
 
@@ -27,13 +27,11 @@ static int gpio_beeper_probe(struct device *dev)
 	struct device_node *np = dev->of_node;
 	struct gpio_beeper *beeper;
 	struct sound_card *card;
-	int gpio;
+	struct gpio_desc *gpio;
 
 	gpio = gpiod_get(dev, NULL, GPIOD_OUT_LOW);
-	if (gpio < 0) {
-		dev_err(dev, "failed to request gpio: %pe\n", ERR_PTR(gpio));
-		return gpio;
-	}
+	if (IS_ERR(gpio))
+		return dev_errp_probe(dev, gpio, "failed to request gpio\n");
 
 	beeper = xzalloc(sizeof(*beeper));
 	beeper->gpio = gpio;
diff --git a/drivers/usb/misc/onboard_usb_hub.c b/drivers/usb/misc/onboard_usb_hub.c
index b5c68098fdcf..6339a3e4ec18 100644
--- a/drivers/usb/misc/onboard_usb_hub.c
+++ b/drivers/usb/misc/onboard_usb_hub.c
@@ -6,7 +6,7 @@
  */
 
 #include <driver.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 #include <init.h>
 #include <of.h>
 #include <linux/printk.h>
@@ -31,7 +31,7 @@ struct onboard_hub {
 	struct regulator *vdd;
 	struct device *dev;
 	const struct onboard_hub_pdata *pdata;
-	int reset_gpio;
+	struct gpio_desc *reset_gpio;
 };
 
 static int onboard_hub_power_on(struct onboard_hub *hub)
@@ -65,9 +65,10 @@ static int onboard_hub_probe(struct device *dev)
 	if (IS_ERR(hub->vdd))
 		return PTR_ERR(hub->vdd);
 
-	hub->reset_gpio = gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
-	if (hub->reset_gpio < 0 && hub->reset_gpio != -ENOENT)
-		return dev_err_probe(dev, hub->reset_gpio, "failed to get reset GPIO\n");
+	hub->reset_gpio = gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(hub->reset_gpio))
+		return dev_errp_probe(dev, hub->reset_gpio,
+				     "failed to get reset GPIO\n");
 
 	hub->dev = dev;
 
diff --git a/drivers/video/mipi_dbi.c b/drivers/video/mipi_dbi.c
index a2333150b9d8..2f8d6ecc72cf 100644
--- a/drivers/video/mipi_dbi.c
+++ b/drivers/video/mipi_dbi.c
@@ -11,7 +11,7 @@
 #include <dma.h>
 #include <linux/kernel.h>
 #include <linux/sizes.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 #include <regulator.h>
 #include <spi/spi.h>
 #include <video/backlight.h>
@@ -421,7 +421,7 @@ int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev, struct fb_ops *ops,
  */
 void mipi_dbi_hw_reset(struct mipi_dbi *dbi)
 {
-	if (!gpio_is_valid(dbi->reset))
+	if (!dbi->reset)
 		return;
 
 	gpiod_set_value(dbi->reset, 0);
@@ -671,14 +671,14 @@ static int mipi_dbi_typec3_command(struct mipi_dbi *dbi, u8 *cmd,
  * Zero on success, negative error code on failure.
  */
 int mipi_dbi_spi_init(struct spi_device *spi, struct mipi_dbi *dbi,
-		      int dc)
+		      struct gpio_desc *dc)
 {
 	struct device *dev = &spi->dev;
 
 	dbi->spi = spi;
 	dbi->read_commands = mipi_dbi_dcs_read_commands;
 
-	if (!gpio_is_valid(dc)) {
+	if (!dc) {
 		dev_dbg(dev, "MIPI DBI Type-C 1 unsupported\n");
 		return -ENOSYS;
 	}
diff --git a/drivers/video/panel-ilitek-ili9341.c b/drivers/video/panel-ilitek-ili9341.c
index 3c2ca5b681f2..4d03a8513e4b 100644
--- a/drivers/video/panel-ilitek-ili9341.c
+++ b/drivers/video/panel-ilitek-ili9341.c
@@ -15,7 +15,7 @@
 
 #include <common.h>
 #include <linux/bitops.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 #include <of.h>
 #include <regulator.h>
 #include <spi/spi.h>
@@ -162,8 +162,8 @@ struct ili9341 {
 	struct device *dev;
 	struct vpl vpl;
 	const struct ili9341_config *conf;
-	int reset_gpio;
-	int dc_gpio;
+	struct gpio_desc *reset_gpio;
+	struct gpio_desc *dc_gpio;
 	struct mipi_dbi *dbi;
 	u32 max_spi_speed;
 	struct regulator_bulk_data supplies[3];
@@ -458,7 +458,8 @@ static int ili9341_ioctl(struct vpl *vpl, unsigned int port,
 	}
 }
 
-static int ili9341_dpi_probe(struct spi_device *spi, int dc, int reset)
+static int ili9341_dpi_probe(struct spi_device *spi,
+			     struct gpio_desc *dc, struct gpio_desc *reset)
 {
 	struct device *dev = &spi->dev;
 	struct ili9341 *ili;
@@ -508,14 +509,14 @@ static int ili9341_dpi_probe(struct spi_device *spi, int dc, int reset)
 static int ili9341_probe(struct device *dev)
 {
 	struct spi_device *spi = to_spi_device(dev);
-	int dc, reset;
+	struct gpio_desc *dc, *reset;
 
-	reset = gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
-	if (!gpio_is_valid(reset) && reset != -ENOENT)
+	reset = gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(reset))
 		dev_err(dev, "Failed to get gpio 'reset'\n");
 
 	dc = gpiod_get(dev, "dc", GPIOD_OUT_LOW);
-	if (!gpio_is_valid(dc) && dc != -ENOENT)
+	if (IS_ERR(dc))
 		dev_err(dev, "Failed to get gpio 'dc'\n");
 
 	return ili9341_dpi_probe(spi, dc, reset);
diff --git a/drivers/video/panel-mipi-dbi.c b/drivers/video/panel-mipi-dbi.c
index 7fada69d6f26..fecb232796cc 100644
--- a/drivers/video/panel-mipi-dbi.c
+++ b/drivers/video/panel-mipi-dbi.c
@@ -9,7 +9,7 @@
 #include <common.h>
 #include <fb.h>
 #include <firmware.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 #include <linux/printk.h>
 #include <of.h>
 #include <regulator.h>
@@ -263,7 +263,7 @@ static int panel_mipi_dbi_spi_probe(struct device *dev)
 	struct spi_device *spi = to_spi_device(dev);
 	struct mipi_dbi *dbi;
 	struct fb_info *info;
-	int dc;
+	struct gpio_desc *dc;
 	int ret;
 
 	dbidev = kzalloc(sizeof(*dbidev), GFP_KERNEL);
@@ -290,13 +290,14 @@ static int panel_mipi_dbi_spi_probe(struct device *dev)
 
 	dbidev->backlight_node = of_parse_phandle(dev->of_node, "backlight", 0);
 
-	dbi->reset = gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
-	if (dbi->reset < 0 && dbi->reset != -ENOENT)
-		return dev_err_probe(dev, dbi->reset, "Failed to get GPIO 'reset'\n");
+	dbi->reset = gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(dbi->reset))
+		return dev_errp_probe(dev, dbi->reset,
+				     "Failed to get GPIO 'reset'\n");
 
-	dc = gpiod_get(dev, "dc", GPIOD_OUT_LOW);
-	if (dc < 0 && dc != -ENOENT)
-		return dev_err_probe(dev, dc, "Failed to get GPIO 'dc'\n");
+	dc = gpiod_get_optional(dev, "dc", GPIOD_OUT_LOW);
+	if (IS_ERR(dc))
+		return dev_errp_probe(dev, dc, "Failed to get GPIO 'dc'\n");
 
 	ret = mipi_dbi_spi_init(spi, dbi, dc);
 	if (ret)
diff --git a/drivers/watchdog/gpio_wdt.c b/drivers/watchdog/gpio_wdt.c
index 2dbfbe4dd967..5fa98f87c6b0 100644
--- a/drivers/watchdog/gpio_wdt.c
+++ b/drivers/watchdog/gpio_wdt.c
@@ -9,7 +9,7 @@
 #include <driver.h>
 #include <watchdog.h>
 #include <superio.h>
-#include <gpiod.h>
+#include <linux/gpio/consumer.h>
 
 enum {
 	HW_ALGO_TOGGLE,
@@ -17,7 +17,7 @@ enum {
 };
 
 struct gpio_wdt_priv {
-	int		gpio;
+	struct gpio_desc *gpiod;
 	bool		state;
 	bool		started;
 	unsigned int	hw_algo;
@@ -32,11 +32,11 @@ static inline struct gpio_wdt_priv *to_gpio_wdt_priv(struct watchdog *wdd)
 static void gpio_wdt_disable(struct gpio_wdt_priv *priv)
 {
 	/* Eternal ping */
-	gpio_set_active(priv->gpio, 1);
+	gpiod_set_value(priv->gpiod, 1);
 
 	/* Put GPIO back to tristate */
 	if (priv->hw_algo == HW_ALGO_TOGGLE)
-		gpio_direction_input(priv->gpio);
+		gpiod_direction_input(priv->gpiod);
 
 	priv->started = false;
 }
@@ -47,13 +47,13 @@ static void gpio_wdt_ping(struct gpio_wdt_priv *priv)
 	case HW_ALGO_TOGGLE:
 		/* Toggle output pin */
 		priv->state = !priv->state;
-		gpio_set_active(priv->gpio, priv->state);
+		gpiod_set_value(priv->gpiod, priv->state);
 		break;
 	case HW_ALGO_LEVEL:
 		/* Pulse */
-		gpio_set_active(priv->gpio, true);
+		gpiod_set_value(priv->gpiod, true);
 		udelay(1);
-		gpio_set_active(priv->gpio, false);
+		gpiod_set_value(priv->gpiod, false);
 		break;
 	}
 }
@@ -61,7 +61,7 @@ static void gpio_wdt_ping(struct gpio_wdt_priv *priv)
 static void gpio_wdt_start(struct gpio_wdt_priv *priv)
 {
 	priv->state = false;
-	gpio_direction_active(priv->gpio, priv->state);
+	gpiod_direction_output(priv->gpiod, priv->state);
 	priv->started = true;
 }
 
@@ -113,9 +113,9 @@ static int gpio_wdt_probe(struct device *dev)
 		return -EINVAL;
 	}
 
-	priv->gpio = gpiod_get(dev, NULL, gflags);
-	if (priv->gpio < 0)
-		return priv->gpio;
+	priv->gpiod = gpiod_get(dev, NULL, gflags);
+	if (IS_ERR(priv->gpiod))
+		return PTR_ERR(priv->gpiod);
 
 	priv->wdd.hwdev		= dev;
 	priv->wdd.timeout_max	= hw_margin / 1000;
diff --git a/include/gpiod.h b/include/gpiod.h
index df02b86e1ee8..23b88c903193 100644
--- a/include/gpiod.h
+++ b/include/gpiod.h
@@ -2,83 +2,6 @@
 #ifndef __GPIOD_H_
 #define __GPIOD_H_
 
-#include <gpio.h>
-#include <of_gpio.h>
-#include <driver.h>
-
-/**
- * Optional flags that can be passed to one of gpiod_* to configure direction
- * and output value. These values cannot be OR'd.
- */
-enum gpiod_flags {
-	GPIOD_ASIS	= 0,
-	GPIOD_IN	= GPIOF_IN,
-	/*
-	 * To change this later to a different logic level (i.e. taking
-	 * active low into account), use gpiod_set_value()
-	 */
-	GPIOD_OUT_LOW	= GPIOF_OUT_INIT_INACTIVE,
-	GPIOD_OUT_HIGH	= GPIOF_OUT_INIT_ACTIVE,
-};
-
-#ifdef CONFIG_OFDEVICE
-
-/* returned gpio descriptor can be passed to any normal gpio_* function */
-int dev_gpiod_get_index(struct device *dev,
-			struct device_node *np,
-			const char *_con_id, int index,
-			enum gpiod_flags flags,
-			const char *label);
-
-#else
-static inline int dev_gpiod_get_index(struct device *dev,
-		struct device_node *np,
-		const char *_con_id, int index,
-		enum gpiod_flags flags,
-		const char *label)
-{
-	return -ENODEV;
-}
-#endif
-
-static inline int dev_gpiod_get(struct device *dev,
-				struct device_node *np,
-				const char *con_id,
-				enum gpiod_flags flags,
-				const char *label)
-{
-	return dev_gpiod_get_index(dev, np, con_id, 0, flags, label);
-}
-
-static inline int gpiod_get(struct device *dev,
-			    const char *_con_id,
-			    enum gpiod_flags flags)
-{
-	return dev_gpiod_get(dev, dev->of_node, _con_id, flags, NULL);
-}
-
-static inline void gpiod_direction_input(int gpio)
-{
-	gpio_direction_input(gpio);
-}
-
-static inline void gpiod_direction_output(int gpio, bool value)
-{
-	if (gpio != -ENOENT)
-		gpio_direction_active(gpio, value);
-}
-
-static inline void gpiod_set_value(int gpio, bool value)
-{
-	gpiod_direction_output(gpio, value);
-}
-
-static inline int gpiod_get_value(int gpio)
-{
-	if (gpio < 0)
-		return gpio;
-
-	return gpio_is_active(gpio);
-}
+#error "API changed from numbers to descriptors. #include <linux/gpiod/consumer.h>"
 
 #endif
diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
new file mode 100644
index 000000000000..577b3955848e
--- /dev/null
+++ b/include/linux/gpio/consumer.h
@@ -0,0 +1,148 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __LINUX_GPIO_CONSUMER_H
+#define __LINUX_GPIO_CONSUMER_H
+
+#include <gpio.h>
+#include <of_gpio.h>
+#include <driver.h>
+#include <linux/err.h>
+#include <errno.h>
+#include <linux/iopoll.h>
+
+/**
+ * Optional flags that can be passed to one of gpiod_* to configure direction
+ * and output value. These values cannot be OR'd.
+ */
+enum gpiod_flags {
+	GPIOD_ASIS	= 0,
+	GPIOD_IN	= GPIOF_IN,
+	/*
+	 * To change this later to a different logic level (i.e. taking
+	 * active low into account), use gpiod_set_value()
+	 */
+	GPIOD_OUT_LOW	= GPIOF_OUT_INIT_INACTIVE,
+	GPIOD_OUT_HIGH	= GPIOF_OUT_INIT_ACTIVE,
+};
+
+#define GPIO_DESC_OK		BIT(BITS_PER_LONG - 1)
+
+#define gpiod_not_found(desc)	(IS_ERR(desc) && PTR_ERR(desc) == -ENOENT)
+
+struct gpio_desc;
+
+static inline int __tmp_desc_to_gpio(struct gpio_desc *desc)
+{
+	if (!desc)
+		return -ENOENT;
+	if (IS_ERR(desc))
+		return PTR_ERR(desc);
+
+	return ((ulong)desc & ~GPIO_DESC_OK);
+}
+
+static inline struct gpio_desc *__tmp_gpio_to_desc(int gpio)
+{
+	if (gpio == -ENOENT)
+		return NULL;
+	if (gpio < 0)
+		return ERR_PTR(gpio);
+
+	return (struct gpio_desc *)(gpio | GPIO_DESC_OK);
+}
+
+#ifdef CONFIG_OFDEVICE
+
+/* returned gpio descriptor can be passed to any normal gpio_* function */
+struct gpio_desc *dev_gpiod_get_index(struct device *dev,
+			struct device_node *np,
+			const char *_con_id, int index,
+			enum gpiod_flags flags,
+			const char *label);
+
+#else
+static inline struct gpio_desc *dev_gpiod_get_index(struct device *dev,
+		struct device_node *np,
+		const char *_con_id, int index,
+		enum gpiod_flags flags,
+		const char *label)
+{
+	return ERR_PTR(-ENODEV);
+}
+#endif
+
+static inline struct gpio_desc *dev_gpiod_get(struct device *dev,
+				struct device_node *np,
+				const char *con_id,
+				enum gpiod_flags flags,
+				const char *label)
+{
+	return dev_gpiod_get_index(dev, np, con_id, 0, flags, label);
+}
+
+static inline struct gpio_desc *gpiod_get(struct device *dev,
+			    const char *_con_id,
+			    enum gpiod_flags flags)
+{
+	return dev_gpiod_get(dev, dev->of_node, _con_id, flags, NULL);
+}
+
+static inline struct gpio_desc *__must_check
+gpiod_get_optional(struct device *dev, const char *con_id,
+		   enum gpiod_flags flags)
+{
+	struct gpio_desc *desc;
+
+	desc = gpiod_get(dev, con_id, flags);
+	if (gpiod_not_found(desc))
+		return NULL;
+
+	return desc;
+}
+
+static inline int gpiod_direction_input(struct gpio_desc *gpiod)
+{
+	if (gpiod_not_found(gpiod))
+		return 0;
+
+	return gpio_direction_input(__tmp_desc_to_gpio(gpiod));
+}
+
+static inline int gpiod_direction_output(struct gpio_desc *gpiod, bool value)
+{
+	if (gpiod_not_found(gpiod))
+		return 0;
+
+	return gpio_direction_active(__tmp_desc_to_gpio(gpiod), value);
+}
+
+static inline int gpiod_set_value(struct gpio_desc *gpiod, bool value)
+{
+	return gpiod_direction_output(gpiod, value);
+}
+
+static inline int gpiod_get_value(struct gpio_desc *gpiod)
+{
+	if (gpiod_not_found(gpiod))
+		return 0;
+	if (IS_ERR(gpiod))
+		return PTR_ERR(gpiod);
+
+	return gpio_is_active(__tmp_desc_to_gpio(gpiod));
+}
+
+/**
+ * gpiod_poll_timeout_us - poll till gpio descriptor reaches requested active state
+ * @gpiod: gpio descriptor to poll
+ * @active: wait till gpio is active if true, wait till it's inactive if false
+ * @timeout_us: timeout in microseconds
+ *
+ * during the wait barebox pollers are called, if any.
+ */
+#define gpiod_poll_timeout_us(gpiod, active, timeout_us)		\
+	({								\
+		int __state;						\
+		readx_poll_timeout(gpiod_get_value, gpiod, __state,	\
+				   __state == (active), timeout_us);	\
+	})
+
+#endif
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index ce8944c481df..54a788cc18eb 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1436,12 +1436,14 @@ void nand_wait_ready(struct nand_chip *chip);
  */
 void nand_cleanup(struct nand_chip *chip);
 
+struct gpio_desc;
+
 /*
  * External helper for controller drivers that have to implement the WAITRDY
  * instruction and have no physical pin to check it.
  */
 int nand_soft_waitrdy(struct nand_chip *chip, unsigned long timeout_ms);
-int nand_gpio_waitrdy(struct nand_chip *chip, int gpio,
+int nand_gpio_waitrdy(struct nand_chip *chip, struct gpio_desc *gpio,
 		      unsigned long timeout_ms);
 
 /* Select/deselect a NAND target. */
diff --git a/include/video/mipi_dbi.h b/include/video/mipi_dbi.h
index a15264c83392..c1c2a620edc2 100644
--- a/include/video/mipi_dbi.h
+++ b/include/video/mipi_dbi.h
@@ -15,6 +15,7 @@
 
 struct regulator;
 struct fb_videomode;
+struct gpio_desc;
 
 /**
  * struct mipi_dbi - MIPI DBI interface
@@ -39,7 +40,7 @@ struct mipi_dbi {
 	/**
 	 * @reset: Optional reset gpio
 	 */
-	int reset;
+	struct gpio_desc *reset;
 
 	/* Type C specific */
 
@@ -51,7 +52,7 @@ struct mipi_dbi {
 	/**
 	 * @dc: Optional D/C gpio.
 	 */
-	int dc;
+	struct gpio_desc *dc;
 
 	struct list_head list;
 };
@@ -122,7 +123,7 @@ static inline const char *mipi_dbi_name(struct mipi_dbi *dbi)
 }
 
 int mipi_dbi_spi_init(struct spi_device *spi, struct mipi_dbi *dbi,
-		      int dc);
+		      struct gpio_desc *dc);
 int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev,
 		      struct fb_ops *ops, struct fb_videomode *mode);
 void mipi_dbi_fb_damage(struct fb_info *info, const struct fb_rect *rect);
-- 
2.39.2



