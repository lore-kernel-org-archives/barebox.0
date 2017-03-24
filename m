Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1crG5c-00061R-NY
 for barebox@lists.infradead.org; Fri, 24 Mar 2017 03:40:38 +0000
Received: by mail-lf0-x241.google.com with SMTP id y193so232201lfd.1
 for <barebox@lists.infradead.org>; Thu, 23 Mar 2017 20:40:12 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 24 Mar 2017 06:40:06 +0300
Message-Id: <20170324034006.2429-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] video: edid.c: fix "no previous prototype" warning
To: barebox@lists.infradead.org

The patch fixes this compiler's warning:

drivers/video/edid.c:390:5: warning: no previous prototype
        for 'fb_get_mode' [-Wmissing-prototypes]
 int fb_get_mode(int flags, u32 val, struct fb_videomode *var)
     ^

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/video/edid.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/edid.c b/drivers/video/edid.c
index 258526433..bee459411 100644
--- a/drivers/video/edid.c
+++ b/drivers/video/edid.c
@@ -387,7 +387,7 @@ static void fb_timings_vfreq(struct __fb_timings *timings)
  * REQUIRES:
  * A valid info->monspecs, otherwise 'safe numbers' will be used.
  */
-int fb_get_mode(int flags, u32 val, struct fb_videomode *var)
+static int fb_get_mode(int flags, u32 val, struct fb_videomode *var)
 {
 	struct __fb_timings *timings;
 	u32 interlace = 1, dscan = 1;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
