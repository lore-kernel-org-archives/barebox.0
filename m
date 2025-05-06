Delivery-date: Tue, 06 May 2025 08:36:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBuc-002hzy-2Z
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:36:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBuc-000124-20
	for lore@pengutronix.de; Tue, 06 May 2025 08:36:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NQ0zSZXnCFAN27UWconFz3zvI2WVKqcVmg7pGMQ5W8k=; b=XIUgr3clvwkip+RvgtvLmSIYgj
	ED2VDw9bCAsPOr2gZuieA7gLknmr/ZAHvkJOY+7+ndL81QRIyLLtAXqgweFOoUJdtaM06dnMOKVAz
	3zI2VkdLpv9ueuQTDo4oFU4DbitsS9iL/topCW31BZ4rfU5JwVBl10/dd+uxKW91w/SG29XbNU8Rq
	ElZ6xMt9rMZ+tXjh4SOX2vqbbZBkwdw7ddMBgkuRlMxhlg3G6/Q8StZwRp4lzs4iVbsk+uqS8crCO
	Vz2SR7ko7YHhAuOyBhDUSJNku/7o/vFrN2sZBIljscLwj+4TN4sR2N6bwE0kCz2pnUcLiEYYJ4+3F
	NjKCJ1aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBuC-0000000AibJ-3BR7;
	Tue, 06 May 2025 06:35:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBg8-0000000AeMX-07ys
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:21:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBg6-0005wX-L2; Tue, 06 May 2025 08:21:18 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBg6-001LjH-1V;
	Tue, 06 May 2025 08:21:18 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBg6-00Cy46-2i;
	Tue, 06 May 2025 08:21:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 08:21:17 +0200
Message-Id: <20250506062117.3090793-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_232120_064598_FDAA160F 
X-CRM114-Status: GOOD (  11.50  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fb: generate mode name if missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If a mode name is not set, the device parameters will format the NULL
mode name as <NULL>. Instead, let's just generate a name and use that.

If multiple modes have the same resolution and refresh rate, we will end
up with duplicate names, but that's ok as this is just a fallback.
Drivers can always assign proper names to their modes and most do.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/fb.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index fade873d1efa..64ca68e14513 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -291,6 +291,11 @@ static int fb_set_shadowfb(struct param_d *p, void *priv)
 	return fb_alloc_shadowfb(info);
 }
 
+static const char *mode_name(struct fb_videomode *mode)
+{
+	return basprintf("%dx%d@%d", mode->xres, mode->yres, mode->refresh);
+}
+
 int register_framebuffer(struct fb_info *info)
 {
 	int id;
@@ -351,10 +356,18 @@ int register_framebuffer(struct fb_info *info)
 
 	names = xzalloc(sizeof(char *) * num_modes);
 
-	for (i = 0; i < info->modes.num_modes; i++)
+	for (i = 0; i < info->modes.num_modes; i++) {
+		if (!info->modes.modes[i].name)
+			info->modes.modes[i].name = mode_name(&info->modes.modes[i]);
 		names[i] = info->modes.modes[i].name;
-	for (i = 0; i < info->edid_modes.num_modes; i++)
+	}
+
+	for (i = 0; i < info->edid_modes.num_modes; i++) {
+		if (!info->edid_modes.modes[i].name)
+			info->modes.modes[i].name = mode_name(&info->edid_modes.modes[i]);
 		names[i + info->modes.num_modes] = info->edid_modes.modes[i].name;
+	}
+
 	dev_add_param_enum(dev, "mode_name", fb_set_modename, NULL, &info->current_mode, names, num_modes, info);
 	info->shadowfb = 1;
 	dev_add_param_bool(dev, "shadowfb", fb_set_shadowfb, NULL, &info->shadowfb, info);
-- 
2.39.5



