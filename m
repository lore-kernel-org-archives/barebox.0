Delivery-date: Tue, 24 Aug 2021 11:53:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIT7d-0002n0-7m
	for lore@lore.pengutronix.de; Tue, 24 Aug 2021 11:53:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIT7b-0006gC-2Q
	for lore@pengutronix.de; Tue, 24 Aug 2021 11:53:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hC9QqtpdCkFftji9aIlOpDLBjRdgHBGdkYzhj5kWlKE=; b=00yrPLfdR4rJAB
	x38fWNAzuX2C1GmLC/64pdeHkjdfG/9P8aH2cgfH/G0YOBVxUB4It5PNIm5w4AtGiPzN12IEc5/jc
	wrYJosrYwvVcFg2f36m1C517agT3SiS4VPrcMyDMSxIzxN72GjGHNUuozILOcvoCVnHVRpSRMxdVX
	5UxzIDaffzq+vqucx6ydFvlo4JaETUPesBfSfdQV+NkD/kYJO7P2t/2cw5tOQCDGkD5R+thii2pnO
	c5m7dCFehPSNxm7C33/qgzioDNee58npkfoAp0y598/uXolj1sTn1l3txWd3JxHqseDZdAIt4G/bd
	NAGw4BZI9DBxqWPat3Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIT5f-002Mqf-MB; Tue, 24 Aug 2021 09:51:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIT5X-002Mpi-W6
 for barebox@lists.infradead.org; Tue, 24 Aug 2021 09:51:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mIT5U-0006PS-4F; Tue, 24 Aug 2021 11:51:20 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mIT5T-00049R-Rn; Tue, 24 Aug 2021 11:51:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 24 Aug 2021 11:51:18 +0200
Message-Id: <20210824095119.15907-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_025124_077284_D252B62E 
X-CRM114-Status: GOOD (  12.19  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] video: simplefb-client: populate video mode field
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Video drivers should initialize fb_info->mode, so device parameters for
mode and enable/disable can function as expected. This wasn't done in
the simplefb driver so far, fix this.

This also lets us drop some initialization of the fb_info, because it
can be calculated from the mode. The very verbose mode info print
can be dropped as well, because it's now available in devinfo.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/simplefb-client.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/video/simplefb-client.c b/drivers/video/simplefb-client.c
index 1f26ac506741..e1f241d4d874 100644
--- a/drivers/video/simplefb-client.c
+++ b/drivers/video/simplefb-client.c
@@ -30,6 +30,11 @@ struct simplefb_params {
 	struct simplefb_format *format;
 };
 
+struct simplefb {
+	struct fb_info info;
+	struct fb_videomode mode;
+};
+
 static int simplefb_parse_dt(struct device_d *dev,
 			   struct simplefb_params *params)
 {
@@ -80,6 +85,7 @@ static int simplefb_probe(struct device_d *dev)
 {
 	int ret;
 	struct simplefb_params params;
+	struct simplefb *simplefb;
 	struct fb_info *info;
 	struct resource *mem;
 
@@ -96,17 +102,19 @@ static int simplefb_probe(struct device_d *dev)
 		return PTR_ERR(mem);
 	}
 
-	info = xzalloc(sizeof(*info));
-	dev->priv = info;
+	simplefb = xzalloc(sizeof(*simplefb));
+
+	simplefb->mode.name = params.format->name;
+	simplefb->mode.xres = params.width;
+	simplefb->mode.yres = params.height;
 
-	info->xres = params.width;
-	info->yres = params.height;
+	info = &simplefb->info;
+	info->mode = &simplefb->mode;
 	info->bits_per_pixel = params.format->bits_per_pixel;
 	info->red = params.format->red;
 	info->green = params.format->green;
 	info->blue = params.format->blue;
 	info->transp = params.format->transp;
-	info->line_length = params.stride;
 
 	info->screen_base = (void *)mem->start;
 	info->screen_size = resource_size(mem);
@@ -116,10 +124,6 @@ static int simplefb_probe(struct device_d *dev)
 
 	dev_info(dev, "framebuffer at 0x%p, 0x%lx bytes\n",
 		 info->screen_base, info->screen_size);
-	dev_info(dev, "format=%s, mode=%dx%dx%d, linelength=%d\n",
-		 params.format->name,
-		 info->xres, info->yres,
-		 info->bits_per_pixel, info->line_length);
 
 	info->dev.parent = dev;
 	ret = register_framebuffer(info);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

