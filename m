Delivery-date: Wed, 05 Apr 2023 14:28:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pk2Fu-00As6D-C8
	for lore@lore.pengutronix.de; Wed, 05 Apr 2023 14:28:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pk2Ft-0005yE-VX
	for lore@pengutronix.de; Wed, 05 Apr 2023 14:28:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yHUq65C81kRzY+EKLssP201g3iVTFZZSNQjk2JopEM4=; b=GcPhWVSXgAmvwPCju9ctNVGOmU
	vLW/IHFW2t7Xr7/p3bJ9tzqRXaNrwhlGJY8se9DMEabbS3XeQRjy0oSvjB1nIOjCZctXVjEday3Pm
	pvk5+4HkLcvXfemKu0UlSRpKbpUWvXI3wgJi6uaknox42s14NcZ/pQ+1RkBWsK48ROMfdbdqagcP2
	QLVKIiI1Dvi9dOT9QjpCHL5CL0cw/14JRGI7LhLuW40/5nJMej85q6RVk5N0hg2wgR+j+gWuFOpzY
	2wOZl1tx7pkP9DU43FDwcQF+Ev5WgrHBhS/tZqXW9jImO++4Q0kLcNU+9vWSKHesdKiR/C2lamCwJ
	BctBdj/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2Er-004Ojf-0R;
	Wed, 05 Apr 2023 12:27:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2Eo-004OiP-0V
	for barebox@lists.infradead.org;
	Wed, 05 Apr 2023 12:27:43 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pk2Em-0005i8-P4; Wed, 05 Apr 2023 14:27:40 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  5 Apr 2023 14:27:32 +0200
Message-Id: <20230405122734.2348025-1-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_052742_200259_DFAD264B 
X-CRM114-Status: GOOD (  11.02  )
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
Subject: [PATCH v2 1/3] video: fb: add optional damage tracking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add an optional fb_damage operation that drivers may use to accumulate
damage on the framebuffer until fb_flush is called. The accumulated
damage can be used to support partial updates for displays with an
integrated framebuffer.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
v2: make rect parameter to fb_damage const
---
 drivers/video/fb.c | 6 ++++++
 include/fb.h       | 9 +++++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 44754065e7d9..6f412d62c434 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -43,6 +43,12 @@ static int fb_close(struct cdev *cdev)
 	return 0;
 }
 
+void fb_damage(struct fb_info *info, struct fb_rect *rect)
+{
+	if (info->fbops->fb_damage)
+		info->fbops->fb_damage(info, rect);
+}
+
 static int fb_op_flush(struct cdev *cdev)
 {
 	struct fb_info *info = cdev->priv;
diff --git a/include/fb.h b/include/fb.h
index 15bb74b99576..88e6c0e45835 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -80,6 +80,13 @@ struct fb_bitfield {
 
 struct fb_info;
 
+struct fb_rect {
+	u32 x1;
+	u32 y1;
+	u32 x2;
+	u32 y2;
+};
+
 struct fb_ops {
 	/* set color register */
 	int (*fb_setcolreg)(unsigned regno, unsigned red, unsigned green,
@@ -87,6 +94,7 @@ struct fb_ops {
 	void (*fb_enable)(struct fb_info *info);
 	void (*fb_disable)(struct fb_info *info);
 	int (*fb_activate_var)(struct fb_info *info);
+	void (*fb_damage)(struct fb_info *info, const struct fb_rect *rect);
 	void (*fb_flush)(struct fb_info *info);
 };
 
@@ -156,6 +164,7 @@ int register_framebuffer(struct fb_info *info);
 
 int fb_enable(struct fb_info *info);
 int fb_disable(struct fb_info *info);
+void fb_damage(struct fb_info *info, struct fb_rect *rect);
 void fb_flush(struct fb_info *info);
 
 #define FBIOGET_SCREENINFO	_IOR('F', 1, loff_t)
-- 
2.39.2



