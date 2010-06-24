Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiu2-00043N-E9
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:39:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:39:16 +0200
Message-Id: <1277372356-32370-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/11] fb: add a usage counter to prevent double enable/disable
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c |    5 +++++
 include/fb.h       |    4 +++-
 2 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 841c3af..f9a425e 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -39,6 +39,9 @@ static int fb_enable_set(struct device_d *dev, struct param_d *param,
 
 	enable = simple_strtoul(val, NULL, 0);
 
+	if (info->enabled == !!enable)
+		return 0;
+
 	if (enable) {
 		info->fbops->fb_enable(info);
 		new = "1";
@@ -49,6 +52,8 @@ static int fb_enable_set(struct device_d *dev, struct param_d *param,
 
 	dev_param_set_generic(dev, param, new);
 
+	info->enabled = !!enable;
+
 	return 0;
 }
 
diff --git a/include/fb.h b/include/fb.h
index 218500b..379f931 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -96,7 +96,9 @@ struct fb_info {
 	struct fb_bitfield red;		/* bitfield in fb mem if true color, */
 	struct fb_bitfield green;	/* else only length is significant */
 	struct fb_bitfield blue;
-	struct fb_bitfield transp;	/* transparency			*/	
+	struct fb_bitfield transp;	/* transparency			*/
+
+	int enabled;
 };
 
 int register_framebuffer(struct fb_info *info);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
