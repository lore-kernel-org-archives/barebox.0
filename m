Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f4TDG-0003tm-82
 for barebox@lists.infradead.org; Fri, 06 Apr 2018 15:23:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1f4TD2-0002Ym-Ml
 for barebox@lists.infradead.org; Fri, 06 Apr 2018 17:23:24 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri,  6 Apr 2018 17:23:23 +0200
Message-Id: <20180406152323.16879-1-l.stach@pengutronix.de>
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
Subject: [PATCH] fb: reject enable request when framebuffer has no mode
To: barebox@lists.infradead.org

If no display is connected or the display modes are incompatible with
the scanout hardware we might end up with a registered framebuffer with
no modes. Trying to enable such a framebuffer will blow up with NULL
ptr dereferences in various places, so just don't do it.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/fb.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 004df1e604d6..599ac5b75e0a 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -124,6 +124,9 @@ static int fb_enable_set(struct param_d *param, void *priv)
 	struct fb_info *info = priv;
 	int enable;
 
+	if (!info->mode)
+		return -EINVAL;
+
 	enable = info->p_enable;
 
 	if (enable)
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
