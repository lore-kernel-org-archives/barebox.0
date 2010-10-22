Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9Ks2-00028N-Od
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:53:35 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 22 Oct 2010 18:53:16 +0200
Message-Id: <1287766405-1646-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1287766405-1646-1-git-send-email-jbe@pengutronix.de>
References: <1287766405-1646-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 02/11] Add more flags for sync control
To: barebox@lists.infradead.org

In order to make video mode setup and initializing a runtime job (currently
it is a compile time job) this patch tries to make the 'fb_videomode' structure
more generic. It should also carry special settings required only for some LC
displays. So, I add some additional sync flags to control the DE and CLCK to
the display (something a regular CRT does not know). Also the possibility to
stop the clock when outside active display data (required for (C)STN display).

Further suggestions for flags?

What about the special settings for some kind of Sharp displays the i.MX
processor family supports?

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 include/fb.h |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/include/fb.h b/include/fb.h
index 379f931..218b244 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -17,11 +17,21 @@
 					/* vtotal = 144d/288n/576i => PAL  */
 					/* vtotal = 121d/242n/484i => NTSC */
 #define FB_SYNC_ON_GREEN	32	/* sync on green */
+/* LC display related settings */
+#define FB_SYNC_DE_HIGH_ACT	(1 << 6)
+#define FB_SYNC_CLK_INVERT	(1 << 7)
+#define FB_SYNC_DATA_INVERT	(1 << 8)
+#define FB_SYNC_CLK_IDLE_EN	(1 << 9)
+#define FB_SYNC_SWAP_RGB	(1 << 10)
+#define FB_SYNC_CLK_SEL_EN	(1 << 11)
+#define FB_SYNC_SHARP_MODE	(1 << 31)
 
 #define FB_VMODE_NONINTERLACED  0	/* non interlaced */
 #define FB_VMODE_INTERLACED	1	/* interlaced	*/
 #define FB_VMODE_DOUBLE		2	/* double scan */
 #define FB_VMODE_ODD_FLD_FIRST	4	/* interlaced: top line first */
+/* LC display related settings */
+#define FB_VMODE_DUAL_SCAN	8
 #define FB_VMODE_MASK		255
 
 #define FB_VMODE_YWRAP		256	/* ywrap instead of panning     */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
