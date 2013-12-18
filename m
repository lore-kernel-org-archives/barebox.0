Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJH7-0001RJ-Ou
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:43:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:42:39 +0100
Message-Id: <1387381362-7780-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1387381362-7780-1-git-send-email-s.hauer@pengutronix.de>
References: <1387381362-7780-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] video: imx-ipu-fb: Do not modify pwm register
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-fb.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 2e65fde..4b9aae7 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -782,11 +782,6 @@ static void ipu_fb_enable(struct fb_info *info)
 	reg_write(fbi, 0x00100010L, DI_HSP_CLK_PER);
 	/* Might need to trigger HSP clock change - see 44.3.3.8.5 */
 
-	/* mx3fb.c::sdc_set_brightness() */
-
-	/* This might be board-specific */
-	reg_write(fbi, 0x03000000UL | 255 << 16, SDC_PWM_CTRL);
-
 	/* mx3fb.c::sdc_set_global_alpha() */
 
 	/* Use global - not per-pixel - Alpha-blending */
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
