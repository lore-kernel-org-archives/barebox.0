Delivery-date: Thu, 23 Dec 2021 17:06:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n0QbT-00Fsc5-AQ
	for lore@lore.pengutronix.de; Thu, 23 Dec 2021 17:06:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n0QbP-0008Da-Py
	for lore@pengutronix.de; Thu, 23 Dec 2021 17:06:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uf8URglABCQkFraCpdEtzxhusR9u+N796IRMPbBbtXk=; b=Z42Yo9BqDnrEAn
	r68jS7/Ka5QX+Fgf1iOSx/ZWwMCI/FUcrhQ+s8TMmULfnXtIXL21w7SjNGLVJHRvMZr1h1FaUERyx
	jhUikSqkEYB+oI2Ug6Lkbd0jn03jDDBXdB+0eRuC67UYqB70zi1xgb0JBhLnLDMR8lS1uhvwCxxYf
	lJG7w8tzhmRXrzBJpAObh4fgZYJnWSU9SIN0SscWV5HfItshK6aZwZ9RnUp2+bFOz+ZCQt9zRamSj
	9Z0bJ5LM6ImE2rlmgH74or8x9AmJjsfh82v1+gp9GRORcMxzZzC05eyPuroQE/T/tDTwNIRwaCZUx
	6j3AYIhKcc/TYAmliByQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0Qa4-00D0f5-1A; Thu, 23 Dec 2021 16:04:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0QZe-00D0XX-NK
 for barebox@lists.infradead.org; Thu, 23 Dec 2021 16:04:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1n0QZb-0007gH-Q0; Thu, 23 Dec 2021 17:04:07 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>)
 id 1n0QZb-006DLR-QE; Thu, 23 Dec 2021 17:04:07 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>)
 id 1n0QZY-000VE8-TN; Thu, 23 Dec 2021 17:04:04 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Thu, 23 Dec 2021 17:04:04 +0100
Message-Id: <20211223160404.119970-9-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211223160404.119970-1-m.tretter@pengutronix.de>
References: <20211223160404.119970-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211223_080410_788907_ECED9980 
X-CRM114-Status: GOOD (  20.72  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 8/8] video: ssd1307fb: add spi support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Solomon display drivers also support SPI in addition to the I2C.
Add SPI support to the driver that already supports I2C by implementing
the bus write function for SPI and registering an SPI driver.

While the driver needs I2C or SPI, either subsystem is optional as long
as one is enabled.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changelog:

v2:

- use new to_spi_device helper
- move warning about undocumented compatible into driver
- remove use of config macros in driver if possible
---
 drivers/video/Kconfig     |  2 +-
 drivers/video/ssd1307fb.c | 62 +++++++++++++++++++++++++++++++++++----
 2 files changed, 57 insertions(+), 7 deletions(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index a87e8c063899..cfbd541a956e 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -15,7 +15,7 @@ config FRAMEBUFFER_CONSOLE
 
 config DRIVER_VIDEO_FB_SSD1307
 	bool "Solomon SSD1307 framebuffer support"
-	depends on I2C && GPIOLIB
+	depends on (I2C || SPI) && GPIOLIB
 
 config VIDEO_VPL
 	depends on OFTREE
diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index d0df073b8ef2..9e141a851f51 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -23,6 +23,7 @@
 #include <gpio.h>
 #include <of_gpio.h>
 #include <regulator.h>
+#include <spi/spi.h>
 
 #define SSD1307FB_DATA                          0x40
 #define SSD1307FB_COMMAND                       0x80
@@ -73,12 +74,14 @@ struct ssd1307fb_par {
 	u32 dclk_frq;
 	const struct ssd1307fb_deviceinfo *device_info;
 	struct i2c_client *client;
+	struct spi_device *spi;
 	u32 height;
 	struct fb_info *info;
 	u32 page_offset;
 	u32 prechargep1;
 	u32 prechargep2;
 	int reset;
+	int dc;
 	struct regulator *vbat;
 	u32 seg_remap;
 	u32 vcomh;
@@ -100,6 +103,27 @@ static struct ssd1307fb_array *ssd1307fb_alloc_array(u32 len, u8 type)
 	return array;
 }
 
+static int ssd1307fb_spi_write_array(struct ssd1307fb_par *par,
+				     struct ssd1307fb_array *array, u32 len)
+{
+	struct spi_device *spi = par->spi;
+	int ret;
+
+	if (array->type == SSD1307FB_COMMAND)
+		gpio_direction_output(par->dc, 0);
+	else
+		gpio_direction_output(par->dc, 1);
+
+	ret = spi_write(spi, array->data, len);
+	if (ret)
+		dev_err(&spi->dev, "Couldn't send SPI command.\n");
+
+	/* Ensure that we remain in data mode. */
+	gpio_direction_output(par->dc, 1);
+
+	return ret;
+}
+
 static int ssd1307fb_i2c_write_array(struct ssd1307fb_par *par,
 				     struct ssd1307fb_array *array, u32 len)
 {
@@ -385,6 +409,14 @@ static const struct of_device_id ssd1307fb_of_match[] = {
 		.compatible = "solomon,ssd1306fb-i2c",
 		.data = (void *)&ssd1307fb_ssd1306_deviceinfo,
 	},
+	{
+		/*
+		 * The compatible of the SPI connected ssd1306 is not
+		 * documented as device tree binding.
+		 */
+		.compatible = "solomon,ssd1306",
+		.data = (void *)&ssd1307fb_ssd1306_deviceinfo,
+	},
 	{
 		.compatible = "solomon,ssd1309fb-i2c",
 		.data = (void *)&ssd1307fb_ssd1309_deviceinfo,
@@ -419,9 +451,20 @@ static int ssd1307fb_probe(struct device_d *dev)
 
 	par->device_info = (struct ssd1307fb_deviceinfo *)match->data;
 
-	par->client = to_i2c_client(dev);
-	i2c_set_clientdata(par->client, par);
-	par->write_array = ssd1307fb_i2c_write_array;
+	if (IS_ENABLED(CONFIG_I2C) && dev->bus == &i2c_bus) {
+		par->client = to_i2c_client(dev);
+		i2c_set_clientdata(par->client, par);
+		par->write_array = ssd1307fb_i2c_write_array;
+	}
+	if (IS_ENABLED(CONFIG_SPI) && dev->bus == &spi_bus) {
+		par->spi = to_spi_device(dev);
+		par->dc = of_get_named_gpio(node, "dc-gpios", 0);
+		if (!gpio_is_valid(par->dc)) {
+			ret = par->dc;
+			goto fb_alloc_error;
+		}
+		par->write_array = ssd1307fb_spi_write_array;
+	}
 
 	par->reset = of_get_named_gpio_flags(node,
 					 "reset-gpios", 0, &of_flags);
@@ -591,9 +634,16 @@ fb_alloc_error:
 	return ret;
 }
 
-static struct driver_d ssd1307fb_driver = {
-	.name = "ssd1307fb",
+static __maybe_unused struct driver_d ssd1307fb_i2c_driver = {
+	.name = "ssd1307fb-i2c",
+	.probe = ssd1307fb_probe,
+	.of_compatible = DRV_OF_COMPAT(ssd1307fb_of_match),
+};
+device_i2c_driver(ssd1307fb_i2c_driver);
+
+static __maybe_unused struct driver_d ssd1307fb_spi_driver = {
+	.name = "ssd1307fb-spi",
 	.probe = ssd1307fb_probe,
 	.of_compatible = DRV_OF_COMPAT(ssd1307fb_of_match),
 };
-device_i2c_driver(ssd1307fb_driver);
+device_spi_driver(ssd1307fb_spi_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

