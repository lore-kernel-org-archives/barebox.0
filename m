Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQa4J-0005Bv-FQ
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 13:00:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bQa3x-0001fI-NV
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 15:00:22 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 22 Jul 2016 15:00:20 +0200
Message-Id: <1469192421-15748-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1469192421-15748-1-git-send-email-l.stach@pengutronix.de>
References: <1469192421-15748-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] commands: fbtest: select IMAGE_RENDERER
To: barebox@lists.infradead.org

2D_PRIMITIVES needs IMAGE_RENDERER.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 commands/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index 3a0977b9806b..17020b2401d8 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1421,6 +1421,7 @@ config CMD_FBTEST
 	bool
 	depends on VIDEO
 	select 2D_PRIMITIVES
+	select IMAGE_RENDERER
 	prompt "FB test"
 	help
 	  Framebuffer test command that allows to produce a number of
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
