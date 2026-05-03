Delivery-date: Sun, 03 May 2026 10:33:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSGb-000Ttq-09
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:33:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSGZ-0003Dc-ML
	for lore@pengutronix.de; Sun, 03 May 2026 10:33:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=c6omVzfVWq/2JMAIueErtqTbpfXP1fWpTy8kyGYWEUc=; b=kBoOeNaGkCKkHb3FDPRWrK0gtY
	GC5yWFLC0R0a5SqrnpGnGTcHQODNNyDuAESeFHwN8dqTa54KKLidAqD2nBHcdT1723YdlSSm+W7K8
	qRy3fVMcJYZzA2L6LJJ2+GbYRplXHMnk2QsIJsZl0zLWzopNhQJU2cnnqykEv7UEiyzjnVYK3Acbk
	+a+954UW5KLcwut8u3vWxOaNm96UrGtWgw2+2W8GU5bXnkSZh/x6NDJUNbgZa433KlDtdRHaGmQ62
	oZaKS+EDr/iVUpIj6WwHvDs9ax1umsrvq0vEolfzIaE2QL6/Hot7D/1KK2MfSvxVg921ilIscTEU8
	FRiSqhDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSGD-0000000AdaI-0Xgz;
	Sun, 03 May 2026 08:33:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSGB-0000000AdZw-0KKv
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:33:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSG9-00038r-CV; Sun, 03 May 2026 10:33:05 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:32:54 +0200
Message-ID: <20260503083304.2765131-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_013307_143948_04F65BD6 
X-CRM114-Status: GOOD (  11.44  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] commands: splash: optimize background fill
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The background color is specified to the command as 0xttrrggbb,
which is not necessarily the native color format of the framebuffer and
thus gu_memset_pixel() will do color conversion.

Instead of redoing the color conversion for every line, let's just
do it once in advance and then keep reusing it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/splash.c           |  9 +++++----
 include/gui/graphic_utils.h |  2 ++
 lib/gui/graphic_utils.c     | 17 ++++++++++-------
 3 files changed, 17 insertions(+), 11 deletions(-)

diff --git a/commands/splash.c b/commands/splash.c
index 74754392e264..dffe29f92328 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -63,10 +63,11 @@ static int do_splash(int argc, char *argv[])
 	buf = gui_screen_render_buffer(sc);
 
 	if (do_bg) {
-		int y;
-		for (y = 0; y < sc->s.height; y++) {
-			gu_memset_pixel(sc->info, buf + sc->info->line_length * y,
-					bg_color, sc->s.width);
+		u32 bg_color_native = gu_hex_to_pixel(sc->info, bg_color);
+
+		for (int y = 0; y < sc->s.height; y++) {
+			gu_memset_pixel_native(sc->info, buf + sc->info->line_length * y,
+					bg_color_native, sc->s.width);
 		}
 	}
 
diff --git a/include/gui/graphic_utils.h b/include/gui/graphic_utils.h
index 279fdf91d33c..2128222628d4 100644
--- a/include/gui/graphic_utils.h
+++ b/include/gui/graphic_utils.h
@@ -19,6 +19,8 @@ void gu_set_pixel(struct fb_info *info, void *adr, u32 px);
 void gu_set_rgb_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b);
 void gu_set_rgba_pixel(struct fb_info *info, void *adr, u8 r, u8 g, u8 b, u8 a);
 void gu_memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size);
+void gu_memset_pixel_native(struct fb_info *info, void* buf, u32 color_native,
+			    size_t size);
 struct screen *fb_create_screen(struct fb_info *info);
 struct screen *fb_open(const char *fbdev);
 void fb_close(struct screen *sc);
diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index d9f90f3d2ea0..087eba382b93 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -78,27 +78,30 @@ static void memsetl(void *s, u32 c, size_t n)
 		*tmp++ = c;
 }
 
-void gu_memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size)
+void gu_memset_pixel_native(struct fb_info *info, void* buf, u32 color_native,
+			    size_t size)
 {
-	u32 px;
 	u8 *screen = buf;
 
-	px = gu_hex_to_pixel(info, color);
-
 	switch (info->bits_per_pixel) {
 	case 8:
-		memset(screen, (uint8_t)px, size);
+		memset(screen, (uint8_t)color_native, size);
 		break;
 	case 16:
-		memsetw(screen, (uint16_t)px, size);
+		memsetw(screen, (uint16_t)color_native, size);
 		break;
 	case 32:
 	case 24:
-		memsetl(screen, px, size);
+		memsetl(screen, color_native, size);
 		break;
 	}
 }
 
+void gu_memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size)
+{
+	gu_memset_pixel_native(info, buf, gu_hex_to_pixel(info, color), size);
+}
+
 static void get_rgb_pixel(struct fb_info *info, void *adr, u8 *r ,u8 *g, u8 *b)
 {
 	u32 px;
-- 
2.47.3



