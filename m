Delivery-date: Wed, 05 Apr 2023 14:28:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pk2Fv-00As6f-Mq
	for lore@lore.pengutronix.de; Wed, 05 Apr 2023 14:28:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pk2Fv-0005yU-Ie
	for lore@pengutronix.de; Wed, 05 Apr 2023 14:28:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7qC59/wvU75yHZZcScsHgo2/4j17N05V1ez31kKgyik=; b=22xFgI16iwRpQkDFZ5TXAKkSPB
	cpCngAR2zx+2yGVECRFj04LDPhsrgsjRbrL1Ve+4OHa7VRaJlvsLtR6DEzwY1ff6g2/qSrp3OAC69
	hMS8t4681LeBI+z7zxuuYv7yjgI3XhWNC204PD25pQW3r6aD7uUh5rwR+usapapwlVzHrA6uMXvLL
	MvL70RPPuYOn5F0KlxzaLn9azrs5f4JUz7DBrqjopMdmoNcSYxoyPGhj28m4H2FqacMK3HS/xEph+
	8qq4JnSYDjOqqf0S60Kp3OGArHte0fawAnYWmqbAILd5StDzF/IssYP7z3p2NgR66/GpdPH8yMIXW
	Q6bov25Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2Er-004Ok3-2s;
	Wed, 05 Apr 2023 12:27:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2Ep-004Oj3-27
	for barebox@lists.infradead.org;
	Wed, 05 Apr 2023 12:27:44 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pk2Eo-0005i8-EA; Wed, 05 Apr 2023 14:27:42 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  5 Apr 2023 14:27:33 +0200
Message-Id: <20230405122734.2348025-2-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230405122734.2348025-1-p.zabel@pengutronix.de>
References: <20230405122734.2348025-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_052743_694112_C5C6150A 
X-CRM114-Status: GOOD (  10.00  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] graphic_utils: add optional damage tracking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Annotate framebuffer updates with damage rectangles so drivers may
implement partial updates for displays with an integrated framebuffer.
This can speed up fbconsole.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
v2: call fb_damage() in graphic_utils instead of fbconsole
---
 lib/gui/graphic_utils.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 92f249e722bc..d91a7f355051 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -313,6 +313,12 @@ void gu_screen_blit_area(struct screen *sc, int startx, int starty, int width,
 {
 	struct fb_info *info = sc->info;
 	int bpp = info->bits_per_pixel >> 3;
+	struct fb_rect rect = {
+		.x1 = startx,
+		.y1 = starty,
+		.x2 = startx + width,
+		.y2 = starty + height,
+	};
 
 	if (info->screen_base_shadow) {
 		int y;
@@ -325,14 +331,24 @@ void gu_screen_blit_area(struct screen *sc, int startx, int starty, int width,
 			fboff += sc->info->line_length;
 		}
 	}
+
+	fb_damage(info, &rect);
 }
 
 void gu_screen_blit(struct screen *sc)
 {
 	struct fb_info *info = sc->info;
+	struct fb_rect rect = {
+		.x1 = 0,
+		.y1 = 0,
+		.x2 = info->xres,
+		.y2 = info->yres,
+	};
 
 	if (info->screen_base_shadow)
 		memcpy(info->screen_base, info->screen_base_shadow, sc->fbsize);
+
+	fb_damage(info, &rect);
 }
 
 void gu_fill_rectangle(struct screen *sc,
-- 
2.39.2



