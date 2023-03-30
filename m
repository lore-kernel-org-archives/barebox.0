Delivery-date: Thu, 30 Mar 2023 14:48:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phrhR-002jvL-7r
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 14:48:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phrhQ-0002zH-Gy
	for lore@pengutronix.de; Thu, 30 Mar 2023 14:48:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jw7pW2XuhON1V5Y24chjGKp4UdhqcG/gVT3GcK8oyK4=; b=sdixG4uYOTkLPEA1+mYGVBz202
	HeT1HdPDFjBIbE6c1Ruq4jkgMSW/aqvov8rH2RrUbpokL0id/pxWkguBxt3wrQxXcW0hcfLirWK0P
	pHFdIpU6Qwut/RQwUmqbe5h5uudJarWqwXTr9PLui0KNNYKHTS1qFg+qJQS6ow6KfY0hqc5JfMLID
	FPXbmisI+O5DdRxNXdONGze05v3LbKnxeR8c01hyR06G5jTWYuxUaJIv0wVFFDgHvJbnX5h6CDaAO
	J940w3D7aSuaGsQKSUekv+4cJLY5A/c1Ij+UAq1Hs+ODVnMROi9CfraTMoqB+hBQKhM+Pt9S0yVd/
	jNol4HVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phrgB-003m0V-2E;
	Thu, 30 Mar 2023 12:46:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phrg5-003lwB-2L
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 12:46:57 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1phrg0-0002Y6-QO; Thu, 30 Mar 2023 14:46:48 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 30 Mar 2023 14:46:42 +0200
Message-Id: <20230330124643.3562397-3-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230330124643.3562397-1-p.zabel@pengutronix.de>
References: <20230330124643.3562397-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_054653_950764_2142AE34 
X-CRM114-Status: GOOD (  25.80  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] video: add MIPI DBI framebuffer helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Port helper functions for the panel-mipi-dbi driver from the Linux
kernel.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
v2:
- Remove superfluous empty line
- Fix mipi_dbi_enable_flush() comment
- Remove unnecessary regulator checks
- Avoid memcpy to tx_buf if byte swapping can be avoided
- Allocate screen_base and tx_buf using dma_alloc(info->screen_size)
- Align mipi_dbi_fb_dirty() a bit more with the original Linux version
---
 drivers/video/mipi_dbi.c | 226 +++++++++++++++++++++++++++++++++++++++
 include/video/mipi_dbi.h |  63 +++++++++++
 2 files changed, 289 insertions(+)

diff --git a/drivers/video/mipi_dbi.c b/drivers/video/mipi_dbi.c
index 50d2fc4b29b9..61b0fbcc49c6 100644
--- a/drivers/video/mipi_dbi.c
+++ b/drivers/video/mipi_dbi.c
@@ -8,11 +8,13 @@
 #define pr_fmt(fmt) "mipi-dbi: " fmt
 
 #include <common.h>
+#include <dma.h>
 #include <linux/kernel.h>
 #include <linux/sizes.h>
 #include <gpiod.h>
 #include <regulator.h>
 #include <spi/spi.h>
+#include <video/backlight.h>
 #include <video/mipi_dbi.h>
 
 #include <video/vpl.h>
@@ -196,6 +198,168 @@ int mipi_dbi_command_stackbuf(struct mipi_dbi *dbi, u8 cmd, const u8 *data,
 }
 EXPORT_SYMBOL(mipi_dbi_command_stackbuf);
 
+/**
+ * mipi_dbi_buf_copy_swap - Copy a framebuffer swapping MSB/LSB of 16-bit values
+ * @dst: The destination buffer
+ * @info: The source framebuffer info
+ */
+static void mipi_dbi_buf_copy_swap(u16 *dst, struct fb_info *info)
+{
+	u16 *src = (u16 *)info->screen_base;
+	size_t len = info->xres * info->yres;
+	int i;
+
+	for (i = 0; i < len; i++) {
+		*dst++ = *src << 8 | *src >> 8;
+		src++;
+	}
+}
+
+static void mipi_dbi_set_window_address(struct mipi_dbi_dev *dbidev,
+					unsigned int xs, unsigned int xe,
+					unsigned int ys, unsigned int ye)
+{
+	struct mipi_dbi *dbi = &dbidev->dbi;
+
+	xs += dbidev->mode.left_margin;
+	xe += dbidev->mode.left_margin;
+	ys += dbidev->mode.upper_margin;
+	ye += dbidev->mode.upper_margin;
+
+	mipi_dbi_command(dbi, MIPI_DCS_SET_COLUMN_ADDRESS, (xs >> 8) & 0xff,
+			 xs & 0xff, (xe >> 8) & 0xff, xe & 0xff);
+	mipi_dbi_command(dbi, MIPI_DCS_SET_PAGE_ADDRESS, (ys >> 8) & 0xff,
+			 ys & 0xff, (ye >> 8) & 0xff, ye & 0xff);
+}
+
+static void mipi_dbi_fb_dirty(struct mipi_dbi_dev *dbidev, struct fb_info *info)
+{
+	struct mipi_dbi *dbi = &dbidev->dbi;
+	unsigned int height = info->yres;
+	unsigned int width = info->xres;
+	bool swap = dbi->swap_bytes;
+	int ret;
+	void *tr;
+
+	if (swap) {
+		tr = dbidev->tx_buf;
+		mipi_dbi_buf_copy_swap(tr, info);
+	} else {
+		tr = info->screen_base;
+	}
+
+	mipi_dbi_set_window_address(dbidev, 0, width - 1, 0, height - 1);
+
+	ret = mipi_dbi_command_buf(dbi, MIPI_DCS_WRITE_MEMORY_START, tr,
+				   width * height * 2);
+	if (ret)
+		pr_err_once("Failed to update display %d\n", ret);
+}
+
+/**
+ * mipi_dbi_enable_flush - MIPI DBI enable helper
+ * @dbidev: MIPI DBI device structure
+ * @info: Framebuffer info
+ *
+ * Flushes the whole framebuffer and enables the backlight. Drivers can use this
+ * in their &fb_ops->fb_enable callback.
+ */
+void mipi_dbi_enable_flush(struct mipi_dbi_dev *dbidev,
+			   struct fb_info *info)
+{
+	mipi_dbi_fb_dirty(dbidev, info);
+
+	if (dbidev->backlight)
+		backlight_set_brightness_default(dbidev->backlight);
+}
+EXPORT_SYMBOL(mipi_dbi_enable_flush);
+
+static void mipi_dbi_blank(struct mipi_dbi_dev *dbidev)
+{
+	u16 height = dbidev->mode.xres;
+	u16 width = dbidev->mode.yres;
+	struct mipi_dbi *dbi = &dbidev->dbi;
+	size_t len = width * height * 2;
+
+	memset(dbidev->tx_buf, 0, len);
+
+	mipi_dbi_set_window_address(dbidev, 0, width - 1, 0, height - 1);
+	mipi_dbi_command_buf(dbi, MIPI_DCS_WRITE_MEMORY_START, dbidev->tx_buf, len);
+}
+
+/**
+ * mipi_dbi_fb_disable - MIPI DBI framebuffer disable helper
+ * @info: Framebuffer info
+ *
+ * This function disables backlight if present, if not the display memory is
+ * blanked. The regulator is disabled if in use. Drivers can use this as their
+ * &fb_ops->fb_disable callback.
+ */
+void mipi_dbi_fb_disable(struct fb_info *info)
+{
+	struct mipi_dbi_dev *dbidev = container_of(info, struct mipi_dbi_dev, info);
+
+	if (dbidev->backlight)
+		backlight_set_brightness(dbidev->backlight, 0);
+	else
+		mipi_dbi_blank(dbidev);
+
+	regulator_disable(dbidev->regulator);
+	regulator_disable(dbidev->io_regulator);
+}
+EXPORT_SYMBOL(mipi_dbi_fb_disable);
+
+void mipi_dbi_fb_flush(struct fb_info *info)
+{
+	struct mipi_dbi_dev *dbidev = container_of(info, struct mipi_dbi_dev, info);
+
+	mipi_dbi_fb_dirty(dbidev, info);
+}
+EXPORT_SYMBOL(mipi_dbi_fb_flush);
+
+/**
+ * mipi_dbi_dev_init - MIPI DBI device initialization
+ * @dbidev: MIPI DBI device structure to initialize
+ * @ops: Framebuffer operations
+ * @mode: Display mode
+ *
+ * This function sets up a &fb_info with one fixed &fb_videomode.
+ * Additionally &mipi_dbi.tx_buf is allocated.
+ *
+ * Supported format: RGB565.
+ *
+ * Returns:
+ * Zero on success, negative error code on failure.
+ */
+int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev, struct fb_ops *ops,
+		      struct fb_videomode *mode)
+{
+	struct fb_info *info = &dbidev->info;
+
+	info->mode = mode;
+	info->fbops = ops;
+	info->dev.parent = dbidev->dev;
+
+	info->xres = mode->xres;
+	info->yres = mode->yres;
+	info->bits_per_pixel = 16;
+	info->line_length = info->xres * 2;
+	info->screen_size = info->line_length * info->yres;
+	info->screen_base = dma_alloc(info->screen_size);
+	memset(info->screen_base, 0, info->screen_size);
+
+	info->red.length = 5;
+	info->red.offset = 11;
+	info->green.length = 6;
+	info->green.offset = 5;
+	info->blue.length = 5;
+	info->blue.offset = 0;
+
+	dbidev->tx_buf = dma_alloc(info->screen_size);
+
+	return 0;
+}
+
 /**
  * mipi_dbi_hw_reset - Hardware reset of controller
  * @dbi: MIPI DBI structure
@@ -246,6 +410,68 @@ bool mipi_dbi_display_is_on(struct mipi_dbi *dbi)
 }
 EXPORT_SYMBOL(mipi_dbi_display_is_on);
 
+static int mipi_dbi_poweron_reset_conditional(struct mipi_dbi_dev *dbidev, bool cond)
+{
+	struct device *dev = dbidev->dev;
+	struct mipi_dbi *dbi = &dbidev->dbi;
+	int ret;
+
+	ret = regulator_enable(dbidev->regulator);
+	if (ret) {
+		dev_err(dev, "Failed to enable regulator (%d)\n", ret);
+		return ret;
+	}
+
+	ret = regulator_enable(dbidev->io_regulator);
+	if (ret) {
+		dev_err(dev, "Failed to enable I/O regulator (%d)\n", ret);
+		regulator_disable(dbidev->regulator);
+		return ret;
+	}
+
+	if (cond && mipi_dbi_display_is_on(dbi))
+		return 1;
+
+	mipi_dbi_hw_reset(dbi);
+	ret = mipi_dbi_command(dbi, MIPI_DCS_SOFT_RESET);
+	if (ret) {
+		dev_err(dev, "Failed to send reset command (%d)\n", ret);
+		regulator_disable(dbidev->io_regulator);
+		regulator_disable(dbidev->regulator);
+		return ret;
+	}
+
+	/*
+	 * If we did a hw reset, we know the controller is in Sleep mode and
+	 * per MIPI DSC spec should wait 5ms after soft reset. If we didn't,
+	 * we assume worst case and wait 120ms.
+	 */
+	if (dbi->reset)
+		mdelay(5);
+	else
+		mdelay(120);
+
+	return 0;
+}
+
+/**
+ * mipi_dbi_poweron_conditional_reset - MIPI DBI poweron and conditional reset
+ * @dbidev: MIPI DBI device structure
+ *
+ * This function enables the regulator if used and if the display is off, it
+ * does a hardware and software reset. If mipi_dbi_display_is_on() determines
+ * that the display is on, no reset is performed.
+ *
+ * Returns:
+ * Zero if the controller was reset, 1 if the display was already on, or a
+ * negative error code.
+ */
+int mipi_dbi_poweron_conditional_reset(struct mipi_dbi_dev *dbidev)
+{
+	return mipi_dbi_poweron_reset_conditional(dbidev, true);
+}
+EXPORT_SYMBOL(mipi_dbi_poweron_conditional_reset);
+
 #if IS_ENABLED(CONFIG_SPI)
 
 /**
diff --git a/include/video/mipi_dbi.h b/include/video/mipi_dbi.h
index 54526006935f..917f7ddd597f 100644
--- a/include/video/mipi_dbi.h
+++ b/include/video/mipi_dbi.h
@@ -11,6 +11,7 @@
 #include <linux/types.h>
 #include <spi/spi.h>
 #include <driver.h>
+#include <fb.h>
 
 struct regulator;
 struct fb_videomode;
@@ -55,6 +56,61 @@ struct mipi_dbi {
 	struct list_head list;
 };
 
+/**
+ * struct mipi_dbi_dev - MIPI DBI device
+ */
+struct mipi_dbi_dev {
+	/**
+	 * @dev: Device
+	 */
+	struct device *dev;
+
+	/**
+	 * @info: Framebuffer info
+	 */
+	struct fb_info info;
+
+	/**
+	 * @mode: Fixed display mode
+	 */
+	struct fb_videomode mode;
+
+	/**
+	 * @tx_buf: Buffer used for transfer (copy clip rect area)
+	 */
+	u8 *tx_buf;
+
+	/**
+	 * @backlight_node: backlight device node (optional)
+	 */
+	struct device_node *backlight_node;
+
+	/**
+	 * @backlight: backlight device (optional)
+	 */
+	struct backlight_device *backlight;
+
+	/**
+	 * @regulator: power regulator (Vdd) (optional)
+	 */
+	struct regulator *regulator;
+
+	/**
+	 * @io_regulator: I/O power regulator (Vddi) (optional)
+	 */
+	struct regulator *io_regulator;
+
+	/**
+	 * @dbi: MIPI DBI interface
+	 */
+	struct mipi_dbi dbi;
+
+	/**
+	 * @driver_private: Driver private data.
+	 */
+	void *driver_private;
+};
+
 static inline const char *mipi_dbi_name(struct mipi_dbi *dbi)
 {
 	return dev_name(&dbi->spi->dev);
@@ -62,8 +118,15 @@ static inline const char *mipi_dbi_name(struct mipi_dbi *dbi)
 
 int mipi_dbi_spi_init(struct spi_device *spi, struct mipi_dbi *dbi,
 		      int dc);
+int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev,
+		      struct fb_ops *ops, struct fb_videomode *mode);
+void mipi_dbi_fb_flush(struct fb_info *info);
+void mipi_dbi_enable_flush(struct mipi_dbi_dev *dbidev,
+			   struct fb_info *info);
+void mipi_dbi_fb_disable(struct fb_info *info);
 void mipi_dbi_hw_reset(struct mipi_dbi *dbi);
 bool mipi_dbi_display_is_on(struct mipi_dbi *dbi);
+int mipi_dbi_poweron_conditional_reset(struct mipi_dbi_dev *dbidev);
 
 u32 mipi_dbi_spi_cmd_max_speed(struct spi_device *spi, size_t len);
 int mipi_dbi_spi_transfer(struct spi_device *spi, u32 speed_hz,
-- 
2.39.2



