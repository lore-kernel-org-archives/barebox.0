Delivery-date: Mon, 03 Apr 2023 14:20:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjJAK-008VP4-Jx
	for lore@lore.pengutronix.de; Mon, 03 Apr 2023 14:20:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjJAK-00039k-8Y
	for lore@pengutronix.de; Mon, 03 Apr 2023 14:20:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kM2wWJK90eagIaRyIU0riZdsGDxvr+w4LI7/N4pswMI=; b=x+Fg3qbGrJfRWHWn184o4FiVcv
	fubQDZQ8HsD8Na4W8hvLNZpeMx8eivd7AHLEYdjr+R/odI6VF3aiTdfUKwvWWBmMkYJQX4Mitv92D
	EtF08IF5eIfICWYkr81GJxFDqGQk2gWsqw6M4zc+J8nXud19oYkDMM2ENYIpGoqdJah10N3ulXrgn
	S91KiOSZpKIx4cYN8xGpGssDvkYHTUN7Zl270iymbFWhY6xgI/CPbT0ci8geZDe/XgJ86ZiRwjYRR
	e3Dw2xMMm9Xbqlk74JDWy/SO1ZiWNmwA88zyF6UnRxe5MWkXfK2+03Ckk7l85roQOq+GISo6nyrPq
	86+X9W9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjJ9A-00FFI6-20;
	Mon, 03 Apr 2023 12:18:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjJ96-00FFGb-1x
	for barebox@lists.infradead.org;
	Mon, 03 Apr 2023 12:18:50 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pjJ95-000303-Bq; Mon, 03 Apr 2023 14:18:47 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  3 Apr 2023 14:18:44 +0200
Message-Id: <20230403121844.3447836-3-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230403121844.3447836-1-p.zabel@pengutronix.de>
References: <20230403121844.3447836-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_051848_639008_76F22B88 
X-CRM114-Status: GOOD (  18.63  )
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
Subject: [PATCH 3/3] video: mipi_dbi: add damage tracking and partial updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Track framebuffer damage with a simple rectangle that can be used to
issue partial updates during fb_flush. This speeds up fbconsole.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/video/mipi_dbi.c       | 83 ++++++++++++++++++++++++++++------
 drivers/video/panel-mipi-dbi.c |  1 +
 include/video/mipi_dbi.h       |  6 +++
 3 files changed, 75 insertions(+), 15 deletions(-)

diff --git a/drivers/video/mipi_dbi.c b/drivers/video/mipi_dbi.c
index 61b0fbcc49c6..3107725b224b 100644
--- a/drivers/video/mipi_dbi.c
+++ b/drivers/video/mipi_dbi.c
@@ -199,19 +199,33 @@ int mipi_dbi_command_stackbuf(struct mipi_dbi *dbi, u8 cmd, const u8 *data,
 EXPORT_SYMBOL(mipi_dbi_command_stackbuf);
 
 /**
- * mipi_dbi_buf_copy_swap - Copy a framebuffer swapping MSB/LSB of 16-bit values
+ * mipi_dbi_buf_copy - Copy a framebuffer, transforming it if necessary
  * @dst: The destination buffer
  * @info: The source framebuffer info
+ * @clip: Clipping rectangle of the area to be copied
+ * @swap: When true, swap MSB/LSB of 16-bit values
  */
-static void mipi_dbi_buf_copy_swap(u16 *dst, struct fb_info *info)
+static void mipi_dbi_buf_copy(u16 *dst, struct fb_info *info,
+			      struct fb_rect *clip, bool swap)
 {
 	u16 *src = (u16 *)info->screen_base;
-	size_t len = info->xres * info->yres;
-	int i;
+	unsigned int height = clip->y2 - clip->y1;
+	unsigned int width = clip->x2 - clip->x1;
+	int x, y;
 
-	for (i = 0; i < len; i++) {
-		*dst++ = *src << 8 | *src >> 8;
-		src++;
+	src += clip->y1 * info->xres + clip->x1;
+	if (swap) {
+		for (y = 0; y < height; y++) {
+			for (x = 0; x < width; x++)
+				*dst++ = src[x] << 8 | src[x] >> 8;
+			src += info->xres;
+		}
+	} else {
+		for (y = 0; y < height; y++) {
+			memcpy(dst, src, 2 * width);
+			dst += width;
+			src += info->xres;
+		}
 	}
 }
 
@@ -232,28 +246,38 @@ static void mipi_dbi_set_window_address(struct mipi_dbi_dev *dbidev,
 			 ys & 0xff, (ye >> 8) & 0xff, ye & 0xff);
 }
 
-static void mipi_dbi_fb_dirty(struct mipi_dbi_dev *dbidev, struct fb_info *info)
+static void mipi_dbi_fb_dirty(struct mipi_dbi_dev *dbidev, struct fb_info *info,
+			      struct fb_rect *rect)
 {
+	unsigned int height = rect->y2 - rect->y1;
+	unsigned int width = rect->x2 - rect->x1;
 	struct mipi_dbi *dbi = &dbidev->dbi;
-	unsigned int height = info->yres;
-	unsigned int width = info->xres;
 	bool swap = dbi->swap_bytes;
 	int ret;
+	bool full;
 	void *tr;
 
-	if (swap) {
+	full = width == info->xres && height == info->yres;
+
+	if (!full || swap) {
 		tr = dbidev->tx_buf;
-		mipi_dbi_buf_copy_swap(tr, info);
+		mipi_dbi_buf_copy(tr, info, rect, swap);
 	} else {
 		tr = info->screen_base;
 	}
 
-	mipi_dbi_set_window_address(dbidev, 0, width - 1, 0, height - 1);
+	mipi_dbi_set_window_address(dbidev, rect->x1, rect->x2 - 1, rect->y1,
+				    rect->y2 - 1);
 
 	ret = mipi_dbi_command_buf(dbi, MIPI_DCS_WRITE_MEMORY_START, tr,
 				   width * height * 2);
 	if (ret)
 		pr_err_once("Failed to update display %d\n", ret);
+
+	dbidev->damage.x1 = 0;
+	dbidev->damage.y1 = 0;
+	dbidev->damage.x2 = 0;
+	dbidev->damage.y2 = 0;
 }
 
 /**
@@ -267,7 +291,14 @@ static void mipi_dbi_fb_dirty(struct mipi_dbi_dev *dbidev, struct fb_info *info)
 void mipi_dbi_enable_flush(struct mipi_dbi_dev *dbidev,
 			   struct fb_info *info)
 {
-	mipi_dbi_fb_dirty(dbidev, info);
+	struct fb_rect rect = {
+		.x1 = 0,
+		.y1 = 0,
+		.x2 = info->xres,
+		.y2 = info->yres
+	};
+
+	mipi_dbi_fb_dirty(dbidev, info, &rect);
 
 	if (dbidev->backlight)
 		backlight_set_brightness_default(dbidev->backlight);
@@ -309,11 +340,33 @@ void mipi_dbi_fb_disable(struct fb_info *info)
 }
 EXPORT_SYMBOL(mipi_dbi_fb_disable);
 
+void mipi_dbi_fb_damage(struct fb_info *info, struct fb_rect *rect)
+{
+	struct mipi_dbi_dev *dbidev = container_of(info, struct mipi_dbi_dev, info);
+
+	if (dbidev->damage.x2 && dbidev->damage.y2) {
+		dbidev->damage.x1 = min(dbidev->damage.x1, rect->x1);
+		dbidev->damage.y1 = min(dbidev->damage.y1, rect->y1);
+		dbidev->damage.x2 = max(dbidev->damage.x2, rect->x2);
+		dbidev->damage.y2 = max(dbidev->damage.y2, rect->y2);
+	} else {
+		dbidev->damage = *rect;
+	}
+}
+EXPORT_SYMBOL(mipi_dbi_fb_damage);
+
 void mipi_dbi_fb_flush(struct fb_info *info)
 {
 	struct mipi_dbi_dev *dbidev = container_of(info, struct mipi_dbi_dev, info);
 
-	mipi_dbi_fb_dirty(dbidev, info);
+	if (!dbidev->damage.x2 || !dbidev->damage.y2) {
+		dbidev->damage.x1 = 0;
+		dbidev->damage.y1 = 0;
+		dbidev->damage.x2 = info->xres;
+		dbidev->damage.y2 = info->yres;
+	}
+
+	mipi_dbi_fb_dirty(dbidev, info, &dbidev->damage);
 }
 EXPORT_SYMBOL(mipi_dbi_fb_flush);
 
diff --git a/drivers/video/panel-mipi-dbi.c b/drivers/video/panel-mipi-dbi.c
index ac6f585be32c..7fada69d6f26 100644
--- a/drivers/video/panel-mipi-dbi.c
+++ b/drivers/video/panel-mipi-dbi.c
@@ -218,6 +218,7 @@ static void panel_mipi_dbi_enable(struct fb_info *info)
 static struct fb_ops panel_mipi_dbi_ops = {
 	.fb_enable = panel_mipi_dbi_enable,
 	.fb_disable = mipi_dbi_fb_disable,
+	.fb_damage = mipi_dbi_fb_damage,
 	.fb_flush = mipi_dbi_fb_flush,
 };
 
diff --git a/include/video/mipi_dbi.h b/include/video/mipi_dbi.h
index 917f7ddd597f..7bacd4a88bc7 100644
--- a/include/video/mipi_dbi.h
+++ b/include/video/mipi_dbi.h
@@ -109,6 +109,11 @@ struct mipi_dbi_dev {
 	 * @driver_private: Driver private data.
 	 */
 	void *driver_private;
+
+	/**
+	 * @damage: Damage rectangle.
+	 */
+	struct fb_rect damage;
 };
 
 static inline const char *mipi_dbi_name(struct mipi_dbi *dbi)
@@ -120,6 +125,7 @@ int mipi_dbi_spi_init(struct spi_device *spi, struct mipi_dbi *dbi,
 		      int dc);
 int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev,
 		      struct fb_ops *ops, struct fb_videomode *mode);
+void mipi_dbi_fb_damage(struct fb_info *info, struct fb_rect *rect);
 void mipi_dbi_fb_flush(struct fb_info *info);
 void mipi_dbi_enable_flush(struct mipi_dbi_dev *dbidev,
 			   struct fb_info *info);
-- 
2.39.2



