Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cyIRH-0005lG-Vu
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 13:36:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cyIQt-000833-E2
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 15:35:39 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 12 Apr 2017 15:35:37 +0200
Message-Id: <20170412133539.32000-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] common: bootchooser: add dependencies
To: barebox@lists.infradead.org

Bootchooser isn't worth much without the boot infrastructure, also
it needs at least the simple shell variant to be enabled.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 852b7a10ab47..b075e582adae 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -937,6 +937,9 @@ config STATE_CRYPTO
 
 config BOOTCHOOSER
 	bool "bootchooser infrastructure"
+	depends on !SHELL_NONE
+	select BOOT
+	select BOOTM
 	select ENVIRONMENT_VARIABLES
 	select OFTREE
 	select PARAMETER
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
