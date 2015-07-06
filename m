Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC3lN-0002T3-Ti
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 10:36:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Jul 2015 12:36:06 +0200
Message-Id: <1436178974-20064-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] video: stm: remove unnecessary info function
To: Barebox List <barebox@lists.infradead.org>

devinfo will show the information without the help of the driver anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/stm.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index bf913f1..abaaf5d 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -453,17 +453,6 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 	return 0;
 }
 
-static void stmfb_info(struct device_d *hw_dev)
-{
-	struct imx_fb_platformdata *pdata = hw_dev->platform_data;
-	unsigned u;
-
-	printf(" Supported video modes:\n");
-	for (u = 0; u < pdata->mode_cnt; u++)
-		printf("  - '%s': %u x %u\n", pdata->mode_list[u].name,
-			pdata->mode_list[u].xres, pdata->mode_list[u].yres);
-}
-
 /*
  * There is only one video hardware instance available.
  * It makes no sense to dynamically allocate this data
@@ -529,8 +518,6 @@ static int stmfb_probe(struct device_d *hw_dev)
 		fbi.info.modes.num_modes = modes->num_modes;
 	}
 
-	hw_dev->info = stmfb_info;
-
 	ret = register_framebuffer(&fbi.info);
 	if (ret != 0) {
 		dev_err(hw_dev, "Failed to register framebuffer\n");
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
