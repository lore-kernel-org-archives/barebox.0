Delivery-date: Sun, 01 Jun 2025 14:32:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLhrG-002cIU-1e
	for lore@lore.pengutronix.de;
	Sun, 01 Jun 2025 14:32:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLhrF-00018h-U5
	for lore@pengutronix.de; Sun, 01 Jun 2025 14:32:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GLsskZ2lRB/LPN3hfO59TvrKtI8nSKsA64vdqKYfd5M=; b=3Sw8aVDtcuado8bHAJPm6Mk+qE
	KquLKVriPyQ2he7x6RhdaCvguMrO2T1JIegvytLS4V2ssZoEnG+AymMcNE/yJ5ZYLeVu4XbCcIQIr
	EK+BGHydddGjZJYvvkkUfTYHfCgabN6k7XUjaiinvyMpoXw9vHVWjy7EkM3AwJN5E5llYAyrtCNkK
	0a1+ub0kMWmcpSYS2G0PQK+4OqTGg4brzVv7zMt49Cu6eV4OOodqZ1GsMX1uMofWZF5+SDIY7q1Iy
	V4reqbrouvOCZWv8jQ5C7pNRTkt2r2vU1+ME29iUOVmcQ+RSwQwWYCgbbCdx7F088Io/Ml7HDh7oD
	Pv0PZKGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLhqb-00000005Wiy-1PAV;
	Sun, 01 Jun 2025 12:31:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLhbd-00000005Lp5-1IuB
	for barebox@lists.infradead.org;
	Sun, 01 Jun 2025 12:16:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uLhbY-000520-L3; Sun, 01 Jun 2025 14:15:56 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  1 Jun 2025 14:15:51 +0200
Message-Id: <20250601121551.343612-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250601_051601_361678_8D770BEE 
X-CRM114-Status: GOOD (  11.33  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] gui: bmp: add support for alpha channel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Apparently, 32-bit bitmaps are a thing and at least Debian Bookworm's
ImageMagick 6.9.11-60 generates them by default, unless
-alpha deactivate is passed to convert.

We don't pass that and thus barebox complains when asked to display them:

  barebox@STM32MP157C-DK2:/ splash /logo/barebox-logo-64.bmp
  bmp: illegal bits per pixel value: 32

As we already have alpha blending support in use for PNG and QOI, just
have the bitmap parser make use of it as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 lib/gui/bmp.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/lib/gui/bmp.c b/lib/gui/bmp.c
index bbc623dba329..6eea337cd004 100644
--- a/lib/gui/bmp.c
+++ b/lib/gui/bmp.c
@@ -96,7 +96,7 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 				image += bits_per_pixel >> 3;
 			}
 		}
-	} else if (bits_per_pixel == 24) {
+	} else if (bits_per_pixel == 24 || bits_per_pixel == 32) {
 		int x, y;
 
 		for (y = 0; y < height; y++) {
@@ -106,12 +106,11 @@ static int bmp_renderer(struct screen *sc, struct surface *s, struct image *img)
 			adr = buf + (y + starty) * sc->info->line_length +
 					startx * (sc->info->bits_per_pixel >> 3);
 			for (x = 0; x < width; x++) {
-				char *pixel;
+				u8 *pixel = image;
+				u8 alpha = bits_per_pixel == 32 ? pixel[3] : 255;
 
-				pixel = image;
-
-				gu_set_rgb_pixel(sc->info, adr, pixel[2], pixel[1],
-						pixel[0]);
+				gu_set_rgba_pixel(sc->info, adr,
+						  pixel[2], pixel[1], pixel[0], alpha);
 				adr += sc->info->bits_per_pixel >> 3;
 
 				image += bits_per_pixel >> 3;
-- 
2.39.5



