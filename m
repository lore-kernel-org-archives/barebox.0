Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UL9w8-0001en-9k
 for barebox@lists.infradead.org; Thu, 28 Mar 2013 10:20:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 27C20BF0F4
 for <barebox@lists.infradead.org>; Thu, 28 Mar 2013 11:19:48 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Thu, 28 Mar 2013 11:19:50 +0100
Message-Id: <1364465990-9494-1-git-send-email-j.weitzel@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fb: calculate resource end
To: barebox@lists.infradead.org

commit 5f03074 changed storing struct resource end insted of size.
Fix calculation of end in fb

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 drivers/video/fb.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index ee53272..be29695 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -86,7 +86,7 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
 	if (!ret) {
 		dev->resource[0].start = (resource_size_t)info->screen_base;
 		info->cdev.size = info->xres * info->yres * (info->bits_per_pixel >> 3);
-		dev->resource[0].end = info->cdev.size - 1;
+		dev->resource[0].end = dev->resource[0].start + info->cdev.size - 1;
 		dev_param_set_generic(dev, param, val);
 	} else
 		info->cdev.size = 0;
@@ -116,7 +116,7 @@ int register_framebuffer(struct fb_info *info)
 	info->cdev.priv = info;
 	dev->resource = xzalloc(sizeof(struct resource));
 	dev->resource[0].start = (resource_size_t)info->screen_base;
-	dev->resource[0].end = info->cdev.size - 1;
+	dev->resource[0].end = dev->resource[0].start + info->cdev.size - 1;
 	dev->resource[0].flags = IORESOURCE_MEM;
 	dev->num_resources = 1;
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
