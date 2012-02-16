Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ry602-00009Z-Ve
 for barebox@lists.infradead.org; Thu, 16 Feb 2012 18:24:12 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 16 Feb 2012 19:23:48 +0100
Message-Id: <1329416628-19781-3-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1329416628-19781-1-git-send-email-robert.jarzmik@free.fr>
References: <20120216074031.GG3852@pengutronix.de>
 <1329416628-19781-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH V3 3/3] drivers/video: remove pxafb enable on load
To: barebox@lists.infradead.org

As pxafb can rely on a PWM to control backlight, and because
driver dependencies are hard to deal with, remove automatic
enable of PXAFB on probe.

The user should in its environment do a :
 - fb0.enable=1

This way, the PWM has been probed and is ready to work, and
the pxafb backlight control works.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/mach-pxa/include/mach/pxafb.h |    1 -
 drivers/video/pxa.c                    |    3 ---
 2 files changed, 0 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-pxa/include/mach/pxafb.h b/arch/arm/mach-pxa/include/mach/pxafb.h
index 1730fbf..23cbea9 100644
--- a/arch/arm/mach-pxa/include/mach/pxafb.h
+++ b/arch/arm/mach-pxa/include/mach/pxafb.h
@@ -64,7 +64,6 @@ struct pxafb_videomode {
 struct pxafb_platform_data {
 	struct pxafb_videomode	*mode;
 	unsigned int		lcd_conn;
-	int			enable_on_load;
 
 	/** force a memory area to be used, else NULL for dynamic allocation */
 	void			*framebuffer;
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
index ddd7087..900ae80 100644
--- a/drivers/video/pxa.c
+++ b/drivers/video/pxa.c
@@ -538,9 +538,6 @@ static int pxafb_probe(struct device_d *dev)
 		return ret;
 	}
 
-	if (pdata->enable_on_load)
-		info->fbops->fb_enable(info);
-
 	return 0;
 }
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
