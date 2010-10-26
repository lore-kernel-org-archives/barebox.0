Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PAhl3-0007mh-RE
	for barebox@lists.infradead.org; Tue, 26 Oct 2010 11:32:04 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 26 Oct 2010 13:31:46 +0200
Message-Id: <1288092708-5187-11-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
References: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 10/12] Remove variable size restrictions
To: barebox@lists.infradead.org

There is no really need for special variable types in these structures. Replace
them by standard C types with the same behaviour.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 include/fb.h |   41 ++++++++++++++++++++---------------------
 1 files changed, 20 insertions(+), 21 deletions(-)

diff --git a/include/fb.h b/include/fb.h
index c94c1d0..b42532e 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -43,19 +43,19 @@
 
 struct fb_videomode {
 	const char *name;	/* optional */
-	u32 refresh;		/* optional */
-	u32 xres;
-	u32 yres;
-	u32 pixclock;
-	u32 left_margin;
-	u32 right_margin;
-	u32 upper_margin;
-	u32 lower_margin;
-	u32 hsync_len;
-	u32 vsync_len;
-	u32 sync;
-	u32 vmode;
-	u32 flag;
+	unsigned refresh;		/* optional */
+	unsigned xres;
+	unsigned yres;
+	unsigned pixclock;
+	unsigned left_margin;
+	unsigned right_margin;
+	unsigned upper_margin;
+	unsigned lower_margin;
+	unsigned hsync_len;
+	unsigned vsync_len;
+	unsigned sync;
+	unsigned vmode;
+	unsigned flag;
 };
 
 /* Interpretation of offset for color fields: All offsets are from the right,
@@ -69,10 +69,9 @@ struct fb_videomode {
  * of available palette entries (i.e. # of entries = 1 << length).
  */
 struct fb_bitfield {
-	u32 offset;			/* beginning of bitfield	*/
-	u32 length;			/* length of bitfield		*/
-	u32 msb_right;			/* != 0 : Most significant bit is */ 
-					/* right */ 
+	unsigned offset;		/* beginning of bitfield	*/
+	unsigned length;		/* length of bitfield		*/
+	int msb_right;			/* != 0 : Most significant bit is right */
 };
 
 struct fb_info;
@@ -97,11 +96,11 @@ struct fb_info {
 	struct device_d *fb_dev;
 	const struct fb_videomode *active_mode;
 
-	u32 xres;			/* visible resolution		*/
-	u32 yres;
-	u32 bits_per_pixel;		/* guess what			*/
+	unsigned xres;			/* visible resolution		*/
+	unsigned yres;
+	unsigned bits_per_pixel;	/* guess what			*/
 
-	u32 grayscale;			/* != 0 Graylevels instead of colors */
+	int grayscale;			/* != 0 Graylevels instead of colors */
 
 	struct fb_bitfield red;		/* bitfield in fb mem if true color, */
 	struct fb_bitfield green;	/* else only length is significant */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
