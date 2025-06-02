Delivery-date: Mon, 02 Jun 2025 15:59:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5gx-002yuZ-1C
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 15:59:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5gw-00022A-D5
	for lore@pengutronix.de; Mon, 02 Jun 2025 15:59:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ebrMEYWKZsGgTqHl7XXdv+7Z2dzNp2zjlTwHB6NDYF0=; b=Jk9yZ8gO4kZKLj6fdSKtOIqPOo
	sWlblWLSO/mhpmXclyVxr4yZ4m5HQAcK4zPDrxtktVwH67b0P2aJ5j4QX9bYeluB0Mmz2Q8jRQ7ts
	uK0iv6swNwGlvF8QPlQQOiNwqU1ANn3Q6YCXVM2DNGwMmuQazveqQdc40ebned43RUKhPwe2QwVh9
	UU4d4mhxhbLqoxzJK+EhFmFjv+W8CEr+AwnLTg2O5e2I6gNcH8+znDP6gvg7XJDVkILc71mset2vy
	qsNlxIP4Dzq1ITst5BmA9LuxcJyGbVw+C4/kO4Ukqg3zERKxFbWZsl1uDIzh/Qk6/Q1GZx/gOvztX
	1BzkcS4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5gM-00000007XQS-2WGH;
	Mon, 02 Jun 2025 13:58:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5eX-00000007XBF-1ymq
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 13:56:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uM5eV-0000xs-S2; Mon, 02 Jun 2025 15:56:35 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Jun 2025 15:56:34 +0200
Message-Id: <20250602135634.860593-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_065637_664119_48354769 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! video: give struct fb_videomode::pixclock a strong picoseconds_t type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The EDID code has a number of VESA timings, which includes a pixclock,
but was missed as it did initialization of picosecond values directly
without reference to the helper macros.

Add braces to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/edid.c | 68 ++++++++++++++++++++++----------------------
 1 file changed, 34 insertions(+), 34 deletions(-)

diff --git a/drivers/video/edid.c b/drivers/video/edid.c
index 21e13de73acd..4491dec547c4 100644
--- a/drivers/video/edid.c
+++ b/drivers/video/edid.c
@@ -443,125 +443,125 @@ static void calc_mode_timings(int xres, int yres, int refresh,
 
 const struct fb_videomode vesa_modes[] = {
 	/* 0 640x350-85 VESA */
-	{ NULL, 85, 640, 350, 31746,  96, 32, 60, 32, 64, 3,
+	{ NULL, 85, 640, 350, {31746},  96, 32, 60, 32, 64, 3,
 	  FB_SYNC_HOR_HIGH_ACT, FB_VMODE_NONINTERLACED, 0},
 	/* 1 640x400-85 VESA */
-	{ NULL, 85, 640, 400, 31746,  96, 32, 41, 01, 64, 3,
+	{ NULL, 85, 640, 400, {31746},  96, 32, 41, 01, 64, 3,
 	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
 	/* 2 720x400-85 VESA */
-	{ NULL, 85, 721, 400, 28169, 108, 36, 42, 01, 72, 3,
+	{ NULL, 85, 721, 400, {28169}, 108, 36, 42, 01, 72, 3,
 	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
 	/* 3 640x480-60 VESA */
-	{ NULL, 60, 640, 480, 39682,  48, 16, 33, 10, 96, 2,
+	{ NULL, 60, 640, 480, {39682},  48, 16, 33, 10, 96, 2,
 	  0, FB_VMODE_NONINTERLACED, 0 },
 	/* 4 640x480-72 VESA */
-	{ NULL, 72, 640, 480, 31746, 128, 24, 29, 9, 40, 2,
+	{ NULL, 72, 640, 480, {31746}, 128, 24, 29, 9, 40, 2,
 	  0, FB_VMODE_NONINTERLACED, 0 },
 	/* 5 640x480-75 VESA */
-	{ NULL, 75, 640, 480, 31746, 120, 16, 16, 01, 64, 3,
+	{ NULL, 75, 640, 480, {31746}, 120, 16, 16, 01, 64, 3,
 	  0, FB_VMODE_NONINTERLACED, 0 },
 	/* 6 640x480-85 VESA */
-	{ NULL, 85, 640, 480, 27777, 80, 56, 25, 01, 56, 3,
+	{ NULL, 85, 640, 480, {27777}, 80, 56, 25, 01, 56, 3,
 	  0, FB_VMODE_NONINTERLACED, 0 },
 	/* 7 800x600-56 VESA */
-	{ NULL, 56, 800, 600, 27777, 128, 24, 22, 01, 72, 2,
+	{ NULL, 56, 800, 600, {27777}, 128, 24, 22, 01, 72, 2,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 8 800x600-60 VESA */
-	{ NULL, 60, 800, 600, 25000, 88, 40, 23, 01, 128, 4,
+	{ NULL, 60, 800, 600, {25000}, 88, 40, 23, 01, 128, 4,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 9 800x600-72 VESA */
-	{ NULL, 72, 800, 600, 20000, 64, 56, 23, 37, 120, 6,
+	{ NULL, 72, 800, 600, {20000}, 64, 56, 23, 37, 120, 6,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 10 800x600-75 VESA */
-	{ NULL, 75, 800, 600, 20202, 160, 16, 21, 01, 80, 3,
+	{ NULL, 75, 800, 600, {20202}, 160, 16, 21, 01, 80, 3,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 11 800x600-85 VESA */
-	{ NULL, 85, 800, 600, 17761, 152, 32, 27, 01, 64, 3,
+	{ NULL, 85, 800, 600, {17761}, 152, 32, 27, 01, 64, 3,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
         /* 12 1024x768i-43 VESA */
-	{ NULL, 43, 1024, 768, 22271, 56, 8, 41, 0, 176, 8,
+	{ NULL, 43, 1024, 768, {22271}, 56, 8, 41, 0, 176, 8,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_INTERLACED, 0 },
 	/* 13 1024x768-60 VESA */
-	{ NULL, 60, 1024, 768, 15384, 160, 24, 29, 3, 136, 6,
+	{ NULL, 60, 1024, 768, {15384}, 160, 24, 29, 3, 136, 6,
 	  0, FB_VMODE_NONINTERLACED, 0 },
 	/* 14 1024x768-70 VESA */
-	{ NULL, 70, 1024, 768, 13333, 144, 24, 29, 3, 136, 6,
+	{ NULL, 70, 1024, 768, {13333}, 144, 24, 29, 3, 136, 6,
 	  0, FB_VMODE_NONINTERLACED, 0 },
 	/* 15 1024x768-75 VESA */
-	{ NULL, 75, 1024, 768, 12690, 176, 16, 28, 1, 96, 3,
+	{ NULL, 75, 1024, 768, {12690}, 176, 16, 28, 1, 96, 3,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 16 1024x768-85 VESA */
-	{ NULL, 85, 1024, 768, 10582, 208, 48, 36, 1, 96, 3,
+	{ NULL, 85, 1024, 768, {10582}, 208, 48, 36, 1, 96, 3,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 17 1152x864-75 VESA */
-	{ NULL, 75, 1152, 864, 9259, 256, 64, 32, 1, 128, 3,
+	{ NULL, 75, 1152, 864, {9259}, 256, 64, 32, 1, 128, 3,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 18 1280x960-60 VESA */
-	{ NULL, 60, 1280, 960, 9259, 312, 96, 36, 1, 112, 3,
+	{ NULL, 60, 1280, 960, {9259}, 312, 96, 36, 1, 112, 3,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 19 1280x960-85 VESA */
-	{ NULL, 85, 1280, 960, 6734, 224, 64, 47, 1, 160, 3,
+	{ NULL, 85, 1280, 960, {6734}, 224, 64, 47, 1, 160, 3,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 20 1280x1024-60 VESA */
-	{ NULL, 60, 1280, 1024, 9259, 248, 48, 38, 1, 112, 3,
+	{ NULL, 60, 1280, 1024, {9259}, 248, 48, 38, 1, 112, 3,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 21 1280x1024-75 VESA */
-	{ NULL, 75, 1280, 1024, 7407, 248, 16, 38, 1, 144, 3,
+	{ NULL, 75, 1280, 1024, {7407}, 248, 16, 38, 1, 144, 3,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 22 1280x1024-85 VESA */
-	{ NULL, 85, 1280, 1024, 6349, 224, 64, 44, 1, 160, 3,
+	{ NULL, 85, 1280, 1024, {6349}, 224, 64, 44, 1, 160, 3,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 23 1600x1200-60 VESA */
-	{ NULL, 60, 1600, 1200, 6172, 304, 64, 46, 1, 192, 3,
+	{ NULL, 60, 1600, 1200, {6172}, 304, 64, 46, 1, 192, 3,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 24 1600x1200-65 VESA */
-	{ NULL, 65, 1600, 1200, 5698, 304,  64, 46, 1, 192, 3,
+	{ NULL, 65, 1600, 1200, {5698}, 304,  64, 46, 1, 192, 3,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 25 1600x1200-70 VESA */
-	{ NULL, 70, 1600, 1200, 5291, 304, 64, 46, 1, 192, 3,
+	{ NULL, 70, 1600, 1200, {5291}, 304, 64, 46, 1, 192, 3,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 26 1600x1200-75 VESA */
-	{ NULL, 75, 1600, 1200, 4938, 304, 64, 46, 1, 192, 3,
+	{ NULL, 75, 1600, 1200, {4938}, 304, 64, 46, 1, 192, 3,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 27 1600x1200-85 VESA */
-	{ NULL, 85, 1600, 1200, 4357, 304, 64, 46, 1, 192, 3,
+	{ NULL, 85, 1600, 1200, {4357}, 304, 64, 46, 1, 192, 3,
 	  FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
 	  FB_VMODE_NONINTERLACED, 0 },
 	/* 28 1792x1344-60 VESA */
-	{ NULL, 60, 1792, 1344, 4882, 328, 128, 46, 1, 200, 3,
+	{ NULL, 60, 1792, 1344, {4882}, 328, 128, 46, 1, 200, 3,
 	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
 	/* 29 1792x1344-75 VESA */
-	{ NULL, 75, 1792, 1344, 3831, 352, 96, 69, 1, 216, 3,
+	{ NULL, 75, 1792, 1344, {3831}, 352, 96, 69, 1, 216, 3,
 	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
 	/* 30 1856x1392-60 VESA */
-	{ NULL, 60, 1856, 1392, 4580, 352, 96, 43, 1, 224, 3,
+	{ NULL, 60, 1856, 1392, {4580}, 352, 96, 43, 1, 224, 3,
 	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
 	/* 31 1856x1392-75 VESA */
-	{ NULL, 75, 1856, 1392, 3472, 352, 128, 104, 1, 224, 3,
+	{ NULL, 75, 1856, 1392, {3472}, 352, 128, 104, 1, 224, 3,
 	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
 	/* 32 1920x1440-60 VESA */
-	{ NULL, 60, 1920, 1440, 4273, 344, 128, 56, 1, 200, 3,
+	{ NULL, 60, 1920, 1440, {4273}, 344, 128, 56, 1, 200, 3,
 	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
 	/* 33 1920x1440-75 VESA */
-	{ NULL, 75, 1920, 1440, 3367, 352, 144, 56, 1, 224, 3,
+	{ NULL, 75, 1920, 1440, {3367}, 352, 144, 56, 1, 224, 3,
 	  FB_SYNC_VERT_HIGH_ACT, FB_VMODE_NONINTERLACED, 0 },
 };
 
-- 
2.39.5



