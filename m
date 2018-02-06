Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eiyER-0003cQ-SD
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 08:04:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Feb 2018 09:03:47 +0100
Message-Id: <20180206080347.23967-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] bootchooser: Drop SHELL_NONE conflict
To: Barebox List <barebox@lists.infradead.org>

Earlier versions of the bootchooser code executed scripts,
thus had to depend on shell support. We do not need this anymore, so
the dependency can be dropped.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 57418cadc6..93b1d89274 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -947,7 +947,6 @@ config STATE_BACKWARD_COMPATIBLE
 
 config BOOTCHOOSER
 	bool "bootchooser infrastructure"
-	depends on !SHELL_NONE
 	select BOOT
 	select BOOTM
 	select ENVIRONMENT_VARIABLES
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
