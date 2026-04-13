Delivery-date: Mon, 13 Apr 2026 12:07:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCECp-00BgEO-2r
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:07:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCECp-0000PB-7B
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:07:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xl4HJ6Vqz1fH2g+faaWwEcxsCQNNCADFHYgZ3BqpK/4=; b=Eryi+8Ufpc73+PF0MAFsxrD32N
	EWOuYKADy7e4G+7gCpR0UtE0OZ/chK2U6BtpbpJ7sHaXIqChVpUjMqQKvWQJlnygkkAWFcBeMiauu
	Ni5Hk6T/CvdgWuKqurSmbREYOKONAdIi9fZePZDisRc/BmuGxLveXzYE6VRR3X2TMHVZrKFlgUgfS
	3jBlG+oPF4B8/py8xI7Rn0+2dM1pVP1tsyvA6IeXt44J0NfQ/6DvR96RgOCufXLk+2E9u9oQgHGsV
	b1Rmm61qWNEovWuAnFW0PfiK9L+ThgBUhe2zYgafrLPzhc/MmKgobJAUhDVvcJBd1h1aJ6D9mudAp
	dZGblJxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCECO-0000000FPZ3-0eLl;
	Mon, 13 Apr 2026 10:07:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCECM-0000000FPY8-094i
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 10:07:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=xl4HJ6Vqz1fH2g+faaWwEcxsCQNNCADFHYgZ3BqpK/4=; b=gZYbFM8Zg4yOm2Jt/jHQFaAEXA
	fjaYk4v9mteBwZxEEukhV0S8PXEYQFrXtKZitJmvDs5+0YjQ+zEi2OJrKlME7E2rGR91tctoi2sBy
	7yVefPNkAiC9wsNgDAZFHHzBGIBTM8PRtCMcNQhB5dt1OLn9U0UB/zgqhOPubjEpYVifWutK7SD2d
	1OJVLz1k27ZY3JhoxqAdunGmLqCmAtctNKePXD4+gGRZJeT3DF5moqOhr/wzxe+KEsHatEyMc2Ihv
	sy5EOdlQkzKRWb+QRYG9nV1tLfN6JveKTLA/u/4ssqA64iqrgLXYrVg3eAytJK+H19wElen5LjHye
	Xhzgfg/g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCECJ-0000000GY1h-0Mvq
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:07:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCECI-00008e-45; Mon, 13 Apr 2026 12:07:14 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:06:57 +0200
Message-ID: <20260413100710.1459468-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413100710.1459468-1-a.fatoum@barebox.org>
References: <20260413100710.1459468-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_110715_463459_3BDF9E79 
X-CRM114-Status: GOOD (  13.32  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] video: simplefb-fixup: use shared SIMPLEFB_FORMATS table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver maintained a private 2-entry format table covering only r5g6b5
and a8r8g8b8. The shared SIMPLEFB_FORMATS macro in
<linux/platform_data/simplefb.h> covers all formats defined by the DT
binding.

Replace the private struct simplefb_mode and simplefb_modes[] with
the shared struct simplefb_format and SIMPLEFB_FORMATS and while at it,
drop <common.h> in favour of the specific headers actually needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/simplefb-fixup.c | 50 +++++++++-------------------------
 1 file changed, 13 insertions(+), 37 deletions(-)

diff --git a/drivers/video/simplefb-fixup.c b/drivers/video/simplefb-fixup.c
index 94cf5a788450..ab85d2282efc 100644
--- a/drivers/video/simplefb-fixup.c
+++ b/drivers/video/simplefb-fixup.c
@@ -8,7 +8,6 @@
 
 #define pr_fmt(fmt) "simplefb: " fmt
 
-#include <common.h>
 #include <errno.h>
 #include <fb.h>
 #include <fcntl.h>
@@ -16,38 +15,15 @@
 #include <of.h>
 #include <init.h>
 #include <xfuncs.h>
-
-struct simplefb_mode {
-	const char *format;
-	u32 bpp;
-	struct fb_bitfield red;
-	struct fb_bitfield green;
-	struct fb_bitfield blue;
-	struct fb_bitfield transp;
-};
+#include <linux/io.h>
+#include <linux/array_size.h>
+#include <linux/platform_data/simplefb.h>
 
 /*
  * These values have to match the kernel's simplefb driver.
- * See Documentation/devicetree/bindings/video/simple-framebuffer.txt
+ * See dts/Bindings/display/simple-framebuffer.yaml
  */
-static const struct simplefb_mode simplefb_modes[] = {
-	{
-		.format	= "r5g6b5",
-		.bpp	= 16,
-		.red	= { .length = 5, .offset = 11 },
-		.green	= { .length = 6, .offset = 5 },
-		.blue	= { .length = 5, .offset = 0 },
-		.transp	= { .length = 0, .offset = 0 },
-	}, {
-		.format	= "a8r8g8b8",
-		.bpp	= 32,
-		.red	= { .length = 8, .offset = 16 },
-		.green	= { .length = 8, .offset = 8 },
-		.blue	= { .length = 8, .offset = 0 },
-		.transp	= { .length = 8, .offset = 24 },
-	},
-
-};
+static const struct simplefb_format simplefb_formats[] = SIMPLEFB_FORMATS;
 
 static bool simplefb_bitfield_cmp(const struct fb_bitfield *a,
 					const struct fb_bitfield *b)
@@ -62,15 +38,15 @@ static bool simplefb_bitfield_cmp(const struct fb_bitfield *a,
 	return true;
 }
 
-static const struct simplefb_mode *simplefb_find_mode(const struct fb_info *fbi)
+static const struct simplefb_format *simplefb_find_mode(const struct fb_info *fbi)
 {
-	const struct simplefb_mode *mode;
+	const struct simplefb_format *mode;
 	u32 i;
 
-	for (i = 0; i < ARRAY_SIZE(simplefb_modes); ++i) {
-		mode = &simplefb_modes[i];
+	for (i = 0; i < ARRAY_SIZE(simplefb_formats); ++i) {
+		mode = &simplefb_formats[i];
 
-		if (fbi->bits_per_pixel != mode->bpp)
+		if (fbi->bits_per_pixel != mode->bits_per_pixel)
 			continue;
 		if (!simplefb_bitfield_cmp(&fbi->red, &mode->red))
 			continue;
@@ -154,7 +130,7 @@ static int simplefb_create_node(struct device_node *root,
 static int simplefb_of_fixup(struct device_node *root, void *ctx)
 {
 	struct fb_info *info = ctx;
-	const struct simplefb_mode *mode;
+	const struct simplefb_format *mode;
 	int ret;
 
 	/* only create node if we are requested to */
@@ -171,11 +147,11 @@ static int simplefb_of_fixup(struct device_node *root, void *ctx)
 		return -EINVAL;
 	}
 
-	ret = simplefb_create_node(root, info, mode->format);
+	ret = simplefb_create_node(root, info, mode->name);
 	if (ret)
 		dev_err(&info->dev, "failed to create node: %d\n", ret);
 	else
-		dev_info(&info->dev, "created %s node\n", mode->format);
+		dev_info(&info->dev, "created %s node\n", mode->name);
 
 	return ret;
 }
-- 
2.47.3



