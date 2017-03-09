Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clvG7-0004Wx-Ma
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 10:25:25 +0000
Received: from player730.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id 121925E498
 for <barebox@lists.infradead.org>; Thu,  9 Mar 2017 11:25:01 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Mar 2017 11:31:11 +0100
Message-Id: <1489055471-12836-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1489055471-12836-1-git-send-email-plagnioj@jcrosoft.com>
References: <1489055471-12836-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] fbcon: use __iowrite{32/64} to speedup the framebuffer
 console scrolling
To: barebox@lists.infradead.org

this devide the time by 4 on x86

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/video/fbconsole.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index b261f1704..b5e951e23 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -6,6 +6,7 @@
 #include <gui/image_renderer.h>
 #include <gui/graphic_utils.h>
 #include <linux/font.h>
+#include <linux/io.h>
 
 enum state_t {
 	LIT,				/* Literal input */
@@ -202,7 +203,7 @@ static void printchar(struct fbc_priv *priv, int c)
 
 		buf = gui_screen_render_buffer(priv->sc);
 
-		memcpy(buf, buf + line_height, line_height * priv->rows);
+		__iowrite64_copy(buf, buf + line_height, (line_height * priv->rows) >> 2);
 		memset(buf + line_height * priv->rows, 0, line_height);
 
 		gu_screen_blit(priv->sc);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
