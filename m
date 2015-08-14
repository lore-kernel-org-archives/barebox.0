Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQC2t-0002av-Bt
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 10:17:08 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZQC2X-0005zX-W9
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 12:16:46 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 14 Aug 2015 12:16:44 +0200
Message-Id: <1439547405-12578-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1439547405-12578-1-git-send-email-l.stach@pengutronix.de>
References: <1439547405-12578-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 4/5] video: fbcon: needs console support
To: barebox@lists.infradead.org

Fixes:
In function `register_fbconsole':
drivers/video/fbconsole.c:425: undefined reference to `console_register

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 9a520c586971..bb8bbb539481 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -7,6 +7,7 @@ if VIDEO
 
 config FRAMEBUFFER_CONSOLE
 	bool
+	depends on !CONSOLE_NONE
 	select IMAGE_RENDERER
 	select FONTS
 	prompt "framebuffer console support"
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
