Delivery-date: Fri, 01 May 2026 10:51:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIjb7-000oY2-1J
	for lore@lore.pengutronix.de;
	Fri, 01 May 2026 10:51:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIjb6-000499-QV
	for lore@pengutronix.de; Fri, 01 May 2026 10:51:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Dmt1BjzmOFZfiLN74FWZedF+vEMESKXjXzF4FeT2EgM=; b=2D0Ac4Ihi0/ROJ2SWu4DMyEdSy
	NVgNkrdgA+sRJQ+lqRR+yeSxAqwuiBFQdjEBEEw+p4co4zAOM1P0g56OnCdLkYlPwSkn677Ng0ZL3
	Tzvdxu54HOi/uAjQSfIKNPjvFlGCT80gy0qcJjZt+fHx6vwWPnmUW6PB4boAvCvqk3fNOI8Zc13t0
	bQLF7c2cCrQLGDW3d3pSch0oUEi6QBT5HQrC5VNqTQC9pVkwkwsq7Lw4n5MH01je4H2HwjK+uPV8s
	hT858e4eeW7SYMaWuEk9x4o73rkBxZRt5wxe1Iw6e4WEjS7+Nv25aohtT3njpyTbJQxLdelLlR7P5
	Ibcq20cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIjaV-00000006Wa9-2Wx7;
	Fri, 01 May 2026 08:51:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIjaT-00000006WZg-0pe1
	for barebox@lists.infradead.org;
	Fri, 01 May 2026 08:51:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wIjaR-0003lr-8D; Fri, 01 May 2026 10:51:03 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  1 May 2026 10:51:01 +0200
Message-ID: <20260501085102.1029483-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_015105_335061_0088BD48 
X-CRM114-Status: GOOD (  11.54  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] video: ramfb: support multiple resolutions via mode_name parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace the single hardcoded 640x480 mode with a static mode list
covering common resolutions (640x480, 800x600, 1280x720, 1920x1080).
The default remains 640x480 (index 0).

Users can now switch to e.g. 1080p before enabling the framebuffer:

  fb0.mode_name=1920x1080

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/ramfb.c | 34 ++++++++++++++++------------------
 1 file changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/video/ramfb.c b/drivers/video/ramfb.c
index cc490496175b..7d0413afb5e2 100644
--- a/drivers/video/ramfb.c
+++ b/drivers/video/ramfb.c
@@ -18,7 +18,6 @@ struct ramfb {
 	int fd;
 	struct fb_info info;
 	dma_addr_t screen_dma;
-	struct fb_videomode mode;
 };
 
 struct fw_cfg_etc_ramfb {
@@ -30,22 +29,6 @@ struct fw_cfg_etc_ramfb {
 	u32 stride;
 } __packed;
 
-static void ramfb_populate_modes(struct ramfb *ramfb)
-{
-	struct fb_info *info = &ramfb->info;
-
-	ramfb->mode.name = "x8r8g8b8";
-	info->xres = ramfb->mode.xres = 640;
-	info->yres = ramfb->mode.yres = 480;
-
-	info->mode = &ramfb->mode;
-	info->bits_per_pixel = 32;
-	info->red	= (struct fb_bitfield) {16, 8};
-	info->green	= (struct fb_bitfield) {8, 8};
-	info->blue	= (struct fb_bitfield) {0, 8};
-	info->transp	= (struct fb_bitfield) {0, 0};
-}
-
 static int ramfb_activate_var(struct fb_info *fbi)
 {
 	struct ramfb *ramfb = fbi->priv;
@@ -81,6 +64,13 @@ static void ramfb_enable(struct fb_info *fbi)
 	dma_free(etc_ramfb);
 }
 
+static struct fb_videomode ramfb_modes[] = {
+	{ .name = "640x480",   .xres =  640, .yres =  480 },
+	{ .name = "800x600",   .xres =  800, .yres =  600 },
+	{ .name = "1280x720",  .xres = 1280, .yres =  720 },
+	{ .name = "1920x1080", .xres = 1920, .yres = 1080 },
+};
+
 static struct fb_ops ramfb_ops = {
 	.fb_activate_var = ramfb_activate_var,
 	.fb_enable = ramfb_enable,
@@ -101,7 +91,15 @@ static int ramfb_probe(struct device *dev)
 	fbi->fbops = &ramfb_ops;
 	fbi->dev.parent = dev;
 
-	ramfb_populate_modes(ramfb);
+	fbi->modes.modes = ramfb_modes;
+	fbi->modes.num_modes = ARRAY_SIZE(ramfb_modes);
+	/* current_mode = 0 (640x480) from xzalloc */
+
+	fbi->bits_per_pixel = 32;
+	fbi->red	= (struct fb_bitfield) {16, 8};
+	fbi->green	= (struct fb_bitfield) {8, 8};
+	fbi->blue	= (struct fb_bitfield) {0, 8};
+	fbi->transp	= (struct fb_bitfield) {0, 0};
 
 	ret = register_framebuffer(fbi);
 	if (ret < 0) {
-- 
2.47.3



