Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bG5HS-0000lo-AQ
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 14:06:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bG5H5-0004An-0l
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 16:06:31 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 23 Jun 2016 16:06:29 +0200
Message-Id: <1466690790-12107-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] defaultenv-2: select BOOTM
To: barebox@lists.infradead.org

defualtenv-2 selects CMD_BOOT, which in turn needs BOOTM.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index 679954e4db2e..e17e54b6fe5d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -830,6 +830,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	bool
 	depends on DEFAULT_ENVIRONMENT
 	depends on SHELL_HUSH
+	select BOOTM
 	select COMMAND_SUPPORT
 	select CMD_GETOPT
 	select GLOB
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
