Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d2wGE-0007u8-Gu
 for barebox@lists.infradead.org; Tue, 25 Apr 2017 08:55:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1d2wFq-0005VB-N0
 for barebox@lists.infradead.org; Tue, 25 Apr 2017 10:55:26 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 25 Apr 2017 10:55:23 +0200
Message-Id: <20170425085526.4037-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/4] common: BLSPEC needs boot infrastructure and at least
 simple command support
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index b075e582adae..8d026b41f9a1 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -645,6 +645,9 @@ config BOOTM_FORCE_SIGNED_IMAGES
 config BLSPEC
 	depends on BLOCK
 	depends on FLEXIBLE_BOOTARGS
+	depends on !SHELL_NONE
+	select BOOT
+	select BOOTM
 	select OFTREE
 	bool
 	prompt "Support bootloader spec"
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
