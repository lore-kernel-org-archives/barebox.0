Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo173.mail-out.ovh.net ([178.33.251.49])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cklJs-0000Nf-V0
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 05:36:30 +0000
Received: from player791.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id 9B2A02A362
 for <barebox@lists.infradead.org>; Mon,  6 Mar 2017 06:36:05 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  6 Mar 2017 06:42:13 +0100
Message-Id: <1488778933-8452-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] video: sdl fix typo
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/video/sdl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/sdl.c b/drivers/video/sdl.c
index 5e1dc8e57..8f5b409ef 100644
--- a/drivers/video/sdl.c
+++ b/drivers/video/sdl.c
@@ -53,7 +53,7 @@ static int sdlfb_probe(struct device_d *dev)
 	fb->yres = fb->mode->yres;
 
 	fb->priv = fb;
-	fb->fbops = &sdlfb_ops,
+	fb->fbops = &sdlfb_ops;
 
 	fb->dev.parent = dev;
 	fb->screen_base = xzalloc(fb->xres * fb->yres *
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
