Delivery-date: Tue, 13 Apr 2021 11:11:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWF59-0007Cj-Qj
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 11:11:39 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWF58-0004ya-VS
	for lore@pengutronix.de; Tue, 13 Apr 2021 11:11:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=X9LfdxEVc89/bqaC5YmYLqCgLV8zLUp/R572m7A8DBk=; b=XziK0Va3qLiUpRcnst4QTJOQlc
	u9ZFrzrPxMZP+ndnnb6QIBATXEVXZOLjswKTaMlfiq8mD+e/UekvEuKUu9u/ZIXvIcvgnk80U7sfD
	j3KxEpZGikabC4TI27DcrDfwFpEj1glik7Gq5pEfH/eKleFTo97oQku5l0iRqJh1Ax3GN1K2zjiMt
	gJche8UOxsQ9mHqLror1Quhqv1grwMoxR41yCBBvhljUQ7A4ZWaNQfdzle8vMkhLO3DsTKkySfHK6
	rin3a+BuYwgenV1n4bs0nIn5t0vGyIw3AGTJ5z+TPIMYnvUONexLIS5nV1DSUa6CgXB11JD2baUq4
	WxbmxQxg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWF3v-008f7F-CJ; Tue, 13 Apr 2021 09:10:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWF3g-008f6F-L7
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 09:10:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=UBvUxWB70lbKHjZASTH6/dBS7G97B4aoyN2c4Q1sxxI=; b=UgMLE2GMjq9/n8XElIu5uK2mig
 entMKZh8dyC4XU69B5dnjkVNcd3vaSUSUHLO+yx+c+SmJEZ8DrC7WLtD232FPaFbkLGlAoI44Rx9P
 eYZk3ajTU0/oTxNKvyB22NLaGSpQJg9w2BCCWHbGNKIFF8xyWd6gXYgJwj/Yk0ljw3sZaQCJeIL6c
 4Ra5JoyVL7ydqR8tpla/MINhwS/3bxB/STlwfgvl1hH4StMyGRlr/muKntAlMJY0hGuxiOYKLh69j
 ffIZ7lHXv5j7DW69kikPnDNv+od6okFYW96FXHeeJ8BxfONiy20I0KsLWyI+WecKkj4800CpalcQW
 UbxL9eWQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWF3d-006rdX-PA
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 09:10:07 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWF3c-0004Yd-82; Tue, 13 Apr 2021 11:10:04 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWF3b-0002iS-8Z; Tue, 13 Apr 2021 11:10:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 13 Apr 2021 11:10:02 +0200
Message-Id: <20210413091002.10153-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_021005_840093_31C36C85 
X-CRM114-Status: GOOD (  14.27  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] atmel_lcdfb: fix atmel,lcd-wiring-mode; BGR => BRG
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Sam Ravnborg <sam@ravnborg.org>

Fix spelling error that prevented us from getting
the atmel,lcd-wiring-mode

The Bindings mandate the use of BRG.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/video/atmel_lcdfb_core.c | 14 +++++++-------
 include/video/atmel_lcdc.h       |  4 ++--
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index d8c35b2755..daabfe92d2 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -129,7 +129,7 @@ static int atmel_lcdfb_check_var(struct fb_info *info)
 			= info->bits_per_pixel;
 		break;
 	case 16:
-		/* Older SOCs use BGR:555 rather than BGR:565. */
+		/* Older SOCs use BRG:555 rather than BRG:565. */
 		if (sinfo->have_intensity_bit)
 			info->green.length = 5;
 		else
@@ -139,7 +139,7 @@ static int atmel_lcdfb_check_var(struct fb_info *info)
 			info->red.offset = info->green.length + 5;
 			info->blue.offset = 0;
 		} else {
-			/* BGR:5X5 mode */
+			/* BRG:5X5 mode */
 			info->red.offset = 0;
 			info->blue.offset = info->green.length + 5;
 		}
@@ -156,7 +156,7 @@ static int atmel_lcdfb_check_var(struct fb_info *info)
 			info->red.offset = 16;
 			info->blue.offset = 0;
 		} else {
-			/* BGR:888 mode */
+			/* BRG:888 mode */
 			info->red.offset = 0;
 			info->blue.offset = 16;
 		}
@@ -279,7 +279,7 @@ static int power_control_init(struct device_d *dev,
 }
 
 /*
- * Syntax: atmel,lcd-wiring-mode: lcd wiring mode "RGB", "BGR"
+ * Syntax: atmel,lcd-wiring-mode: lcd wiring mode "RGB", "BRG"
  */
 static int of_get_wiring_mode(struct device_node *np,
 			      struct atmel_lcdfb_info *sinfo)
@@ -290,12 +290,12 @@ static int of_get_wiring_mode(struct device_node *np,
 	ret = of_property_read_string(np, "atmel,lcd-wiring-mode", &mode);
 	if (ret < 0) {
 		/* Not present, use defaults */
-		sinfo->lcd_wiring_mode = ATMEL_LCDC_WIRING_BGR;
+		sinfo->lcd_wiring_mode = ATMEL_LCDC_WIRING_BRG;
 		return 0;
 	}
 
-	if (!strcasecmp(mode, "BGR")) {
-		sinfo->lcd_wiring_mode = ATMEL_LCDC_WIRING_BGR;
+	if (!strcasecmp(mode, "BRG")) {
+		sinfo->lcd_wiring_mode = ATMEL_LCDC_WIRING_BRG;
 	} else if (!strcasecmp(mode, "RGB")) {
 		sinfo->lcd_wiring_mode = ATMEL_LCDC_WIRING_RGB;
 	} else {
diff --git a/include/video/atmel_lcdc.h b/include/video/atmel_lcdc.h
index 07a30e2e6f..7e3f95873c 100644
--- a/include/video/atmel_lcdc.h
+++ b/include/video/atmel_lcdc.h
@@ -23,10 +23,10 @@
 #define __ATMEL_LCDC_H__
 
 /* Way LCD wires are connected to the chip:
- * Some Atmel chips use BGR color mode (instead of standard RGB)
+ * Some Atmel chips use BRG color mode (instead of standard RGB)
  * A swapped wiring onboard can bring to RGB mode.
  */
-#define ATMEL_LCDC_WIRING_BGR	0
+#define ATMEL_LCDC_WIRING_BRG	0
 #define ATMEL_LCDC_WIRING_RGB	1
 #define ATMEL_LCDC_WIRING_RGB555	2
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

