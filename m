Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC3lN-0002TC-Tj
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 10:36:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Jul 2015 12:36:12 +0200
Message-Id: <1436178974-20064-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1436178974-20064-1-git-send-email-s.hauer@pengutronix.de>
References: <1436178974-20064-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] video: stm: honor display_flags
To: Barebox List <barebox@lists.infradead.org>

stmfb uses custom flags FB_SYNC_DE_HIGH_ACT and FB_SYNC_CLK_INVERT.
These have generic counterparts in display_flags. Honor them aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/stm.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 3d64238..f0f5ce0 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -449,9 +449,11 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 		reg |= VDCTRL0_HSYNC_POL;
 	if (mode->sync & FB_SYNC_VERT_HIGH_ACT)
 		reg |= VDCTRL0_VSYNC_POL;
-	if (mode->sync & FB_SYNC_DE_HIGH_ACT)
+	if (mode->sync & FB_SYNC_DE_HIGH_ACT ||
+			mode->display_flags & DISPLAY_FLAGS_DE_LOW)
 		reg |= VDCTRL0_ENABLE_POL;
-	if (mode->sync & FB_SYNC_CLK_INVERT)
+	if (mode->sync & FB_SYNC_CLK_INVERT ||
+			mode->display_flags & DISPLAY_FLAGS_PIXDATA_NEGEDGE)
 		reg |= VDCTRL0_DOTCLK_POL;
 
 	reg |= SET_VSYNC_PULSE_WIDTH(mode->vsync_len);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
