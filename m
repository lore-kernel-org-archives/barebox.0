Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XuMY8-0000VC-3M
 for barebox@lists.infradead.org; Fri, 28 Nov 2014 14:29:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Nov 2014 15:28:53 +0100
Message-Id: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/14] ARM: friendlyarm-mini2440: fix compilation for some
 displays
To: barebox@lists.infradead.org

struct fb_videomode does not have a flag member, so do not initialize
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/friendlyarm-mini2440/mini2440.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boards/friendlyarm-mini2440/mini2440.c b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
index 4034de5..2dcb7db 100644
--- a/arch/arm/boards/friendlyarm-mini2440/mini2440.c
+++ b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
@@ -96,7 +96,6 @@ static struct fb_videomode s3c24x0_fb_modes[] = {
 		.pixclock	= 41848,
 		.sync		= FB_SYNC_USE_PWREN | FB_SYNC_DE_HIGH_ACT,
 		.vmode		= FB_VMODE_NONINTERLACED,
-		.flag		= 0,
 	},
 #endif
 #ifdef CONFIG_MINI2440_VIDEO_SVGA
@@ -115,7 +114,6 @@ static struct fb_videomode s3c24x0_fb_modes[] = {
 		.sync		= FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT | FB_SYNC_DE_HIGH_ACT
                                   /* | FB_SYNC_SWAP_HW */ /* FIXME maybe */ ,
 		.vmode		= FB_VMODE_NONINTERLACED,
-		.flag		= 0,
 	},
 #endif
 };
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
