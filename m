Delivery-date: Thu, 20 Mar 2025 21:31:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvMYS-0022Bn-32
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 21:31:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvMYR-0005O8-QC
	for lore@pengutronix.de; Thu, 20 Mar 2025 21:31:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=88GQCfkO+EQn0nNpuU6HayaawfSskXvDx2+oPMoXCR4=; b=aMFxCH+WBvRwOt+ngUKa/Y7IHd
	3TuzQSPXIeJwjYLYiZBvgBmqVC5ZwNASdQo0Q69ooAMvXtz2FycZqExvd0OGgk+80au4nQIEf4x3/
	igOdWgVNqcy2i4omDJAAsAI1HDFFPtNEM7XG10nQVSd9LAexBQ8SAIgHxcOzwuP8/V13w7z18Ffri
	8F52zzw/91/kp+yfp5jd5m1nzLuHSP0UABspYNu0meDyflx2+Y9kd4mizOHkQnlFaicIYlodZlNGX
	mgmMrbs8Ko8IWKNyXR977hX6IgvC7k6UhCgc3qoMrughr+Xjx7rXuMpTV+Koh24ERgxzUEFHSZiF2
	CKRMHIlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvMXg-0000000DAWV-18Mh;
	Thu, 20 Mar 2025 20:31:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvMXd-0000000DAVq-1NZB
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 20:31:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tvMXb-00057E-9a; Thu, 20 Mar 2025 21:30:59 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tvMXa-000oVM-2C;
	Thu, 20 Mar 2025 21:30:59 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tvMXb-00EKwG-03;
	Thu, 20 Mar 2025 21:30:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 21:30:57 +0100
Message-Id: <20250320203057.3417065-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_133101_363074_D0A1E86F 
X-CRM114-Status: GOOD (  11.41  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] video: ssd1307fb: set default mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The framebuffer support will refuse modification of the fbX.enable
parameter if there are no modes. The ssd1307fb is the only driver
that has no provisions for populating modes and thus always runs
into this case.

The display is normally used as a small framebuffer console and the
frame buffer console support will call fb_enable sidestepping the check
in the device parameter, which caused the issue to fly under the radar
so far. If used without framebuffer console, however, the problem
becomes quickly apparent.

Reported-by: @jakthree:matrix.org
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/ssd1307fb.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index fb50e895c59a..5880f2b4a57a 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -77,6 +77,7 @@ struct ssd1307fb_par {
 	struct spi_device *spi;
 	u32 height;
 	struct fb_info *info;
+	struct fb_videomode mode;
 	u32 page_offset;
 	u32 prechargep1;
 	u32 prechargep2;
@@ -594,6 +595,11 @@ static int ssd1307fb_probe(struct device *dev)
 	if (ret)
 		goto reset_oled_error;
 
+	par->mode.xres = par->width;
+	par->mode.yres = par->height;
+	par->mode.name = "default";
+
+	info->mode = &par->mode;
 	info->dev.parent = dev;
 	ret = register_framebuffer(info);
 	if (ret) {
-- 
2.39.5



