Delivery-date: Fri, 27 Sep 2024 12:43:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8Rc-003N4n-1q
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:43:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RO-0005p5-51
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:43:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cvGv51b+vsZ0HacLFuhlnpC96nGLpMBFml2/oOFmf5A=; b=fCtSPk6HfDdfu0YXqAkIexqxyR
	0z8kHxWRp0iuVdrD+HhRpvFyPDkCQIXF/r9DnpdPpaXU+YEPNECBALHjHXqrIpRvOXyCaf9tovSlq
	sLVtgzpaBbao0q+xdN29hjB65ujejH2ilTw7p65+Kk1T0BPaiC5h3qNMyJmIlx+5xOSuVzlSjHcMO
	u6PDn+OPh8DNjIoo01uEFgqc7K6eKSP/9uu5VEGqM+JDt4j9+1Y3xWpqgRm/o+7I1FylOHzIiSk3X
	M6VVIT/q6M3h76fFvq+mu1jSgjhFruhNaCBoR1P+kYxJ4xZ92efVuwyXGOsjiio5UiGOQWz4j1VOg
	egy0XhEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8QR-0000000Aqtn-1HyG;
	Fri, 27 Sep 2024 10:42:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Ow-0000000AqVn-3Y9E
	for barebox@bombadil.infradead.org;
	Fri, 27 Sep 2024 10:40:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=cvGv51b+vsZ0HacLFuhlnpC96nGLpMBFml2/oOFmf5A=; b=mTv4ao92Np1Q91hNHOcrq83Rn2
	/BStiykUP8BoC1cpUK8Ufu1yMiShbqikXTfBzE9HhnlScWVvntFALs85htlS7DNBRbH4vHjbtOrs0
	fY/K9V/EOFkWd4BQxYteoxv85lCDe+hitNfUAVMcAMVBdpqODkeWOdLUo16Q5pGdEz0MU9pgs0j2U
	pSdIzVgeHFZNBhYq668bNBjnu+RmNh07wMcxfnc8CSom9/YxVGoKEFyNkiSKWgwCtNGqJf0kbLic/
	fQWz3Fpwp3aC+fGhtdSmFIkHYhDIXvI1GG8hXNbK+emFc0fvKNSgvW0yFKUebbXzurgnH+yK9Jro3
	lNlPLixA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Os-00000002Kcj-0EYY
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:40:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Or-00043P-NB; Fri, 27 Sep 2024 12:40:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Or-001u4B-Aj; Fri, 27 Sep 2024 12:40:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-000PJg-1T;
	Fri, 27 Sep 2024 12:37:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2024 12:37:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240927-vop2-v2-10-dc8dcfc651d5@pengutronix.de>
References: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
In-Reply-To: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727433454; l=2330;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=7Px8CKjlw/zEqQ5AFaParTlVUYEUwig7h1ss7HOYlZI=;
 b=ME5C+V8KtB5gbSpnmjEJuHX7uUbmOfp86weK3ye5GP/FGQ8hpYFQuDwlFkYhfobHyseKELVJV
 wYImMNpo4YZAKpG5/MRV6tm6H/BM39vkkfqzlvz+dEzrufIM7IUJG7H
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_114038_321219_64C4DA08 
X-CRM114-Status: GOOD (  15.25  )
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
Subject: [PATCH v2 10/15] fb: Accept overlay framebuffers without modes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a pointer to the base framebuffer to struct fb_info
in case the framebuffer is an overlay. As overlays do not have modes,
accept them in fb_enable() even when it doesn't have a mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c | 20 ++++++++++++++------
 include/fb.h       |  3 +++
 2 files changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index a752c114e2..ccc755322e 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -138,7 +138,7 @@ static int fb_enable_set(struct param_d *param, void *priv)
 {
 	struct fb_info *info = priv;
 
-	if (!info->mode)
+	if (!info->mode && !info->base_plane)
 		return -EINVAL;
 
 	if (info->p_enable)
@@ -284,7 +284,7 @@ static int fb_set_shadowfb(struct param_d *p, void *priv)
 
 int register_framebuffer(struct fb_info *info)
 {
-	int id = get_free_deviceid("fb");
+	int id;
 	struct device *dev;
 	int ret, num_modes, i;
 	const char **names;
@@ -304,7 +304,18 @@ int register_framebuffer(struct fb_info *info)
 		info->line_length = info->xres * (info->bits_per_pixel >> 3);
 
 	info->cdev.ops = &fb_ops;
-	info->cdev.name = basprintf("fb%d", id);
+	if (info->base_plane) {
+		int ovl_id = info->base_plane->n_overlays++;
+
+		info->cdev.name = basprintf("%s_%d", dev_name(&info->base_plane->dev), ovl_id);
+		dev->id = DEVICE_ID_SINGLE;
+		dev_set_name(dev, info->cdev.name);
+	} else {
+		id = get_free_deviceid("fb");
+		dev->id = id;
+		dev_set_name(dev, "fb");
+		info->cdev.name = basprintf("fb%d", id);
+	}
 	info->cdev.size = info->line_length * info->yres;
 	info->cdev.dev = dev;
 	info->cdev.priv = info;
@@ -315,11 +326,8 @@ int register_framebuffer(struct fb_info *info)
 	dev->num_resources = 1;
 
 	dev->priv = info;
-	dev->id = id;
 	dev->info = fb_info;
 
-	dev_set_name(dev, "fb");
-
 	ret = register_device(&info->dev);
 	if (ret)
 		goto err_free;
diff --git a/include/fb.h b/include/fb.h
index 574a66a396..76f0c99449 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -175,6 +175,9 @@ struct fb_info {
 					 * be created.
 					 */
 	int shadowfb;
+
+	struct fb_info *base_plane;
+	int n_overlays;
 };
 
 int of_get_display_timing(const struct device_node *np, const char *name,

-- 
2.39.5



