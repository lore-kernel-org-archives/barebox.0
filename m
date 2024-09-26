Delivery-date: Thu, 26 Sep 2024 15:41:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stok0-0031J7-35
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 15:41:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stok1-0007eB-CL
	for lore@pengutronix.de; Thu, 26 Sep 2024 15:41:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s3Wvj8DXDNlYCdUwARUeQqJ2QMCzvlFBYn7d3Vf+5kA=; b=WPsmzRcV6bXIdYNnMWb2CorcVi
	Biemo0bXsBXIZgfB9WmYoCDLEr4lJp6UAbZpf20yVJiG+Z4hK7cddw4QMLhIJEbkC4I7bggki+idl
	+3KllmB46y1RS5spu+YUflMe4g+j4mkHvbPoheZ8jzH0b5wyX0r3Tv5N6UDcY4knzHftaJiTXT2tc
	ev3th2e1hs8HHM1ahIJhP9Zbxekj+X9iJMo0iDpMo1ByVGmbuxr7gwVX5dPHX9fh5F8Gk5B6h588N
	Ir/5OjdaFCG462w2DXK+24a+3ELEkgIaq59k1eqMIP3NMRuNph3cinpuyuJnVESHoc1I56vvVUSVb
	+Gx/npWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stojV-00000008Txm-1QQY;
	Thu, 26 Sep 2024 13:40:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stojR-00000008Tw9-2HKd
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 13:40:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stojQ-000786-6o; Thu, 26 Sep 2024 15:40:32 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stojP-001hMC-Qc; Thu, 26 Sep 2024 15:40:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-00GZyn-1m;
	Thu, 26 Sep 2024 15:15:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 15:15:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240926-vop2-v1-11-fe0581f2020b@pengutronix.de>
References: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
In-Reply-To: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727356502; l=993;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=iWWHykQD1hAWyTi67jEvAqaxppqytVfBgLMVFQ9o4ak=;
 b=HLAEWuu/czCGV/yBwSs7mFallOPYF4gnlV9ZlOGcDz3n9R9k2/rUH61J46eUKdOnvB0ZGr9Wu
 dw8mFbe3N3EBQB7E/bCRNXzbAShRYD4enhZBtrBzWTsCepecXh/y7F9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_064033_624574_3D9D5C24 
X-CRM114-Status: UNSURE (   8.77  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 11/13] fb: print more information on devinfo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Print some more information about the framebuffer in the devinfo output:
- x/y resolution
- line_length
- type of framebuffer (overlay, base plane)
- if it's an overlay, print the base plane

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 3677c63e07..f6310498c8 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -264,6 +264,15 @@ static void fb_info(struct device *dev)
 	printf("Available modes:\n");
 	fb_print_modes(&info->modes);
 	fb_print_modes(&info->edid_modes);
+	if (info->base) {
+		printf("Type: overlay\n");
+		printf("base plane: %s\n", dev_name(&info->base->dev));
+	} else {
+		printf("Type: primary\n");
+	}
+	printf("xres: %u\n", info->xres);
+	printf("yres: %u\n", info->yres);
+	printf("line_length: %u\n", info->line_length);
 }
 
 void *fb_get_screen_base(struct fb_info *info)

-- 
2.39.5



