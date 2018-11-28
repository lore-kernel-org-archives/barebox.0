Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRwfS-0003Kz-87
 for barebox@lists.infradead.org; Wed, 28 Nov 2018 10:02:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 3C71827E0327
 for <barebox@lists.infradead.org>; Wed, 28 Nov 2018 11:01:47 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 28 Nov 2018 11:01:18 +0100
Message-Id: <20181128100118.28873-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Kconfig: Add clocksource menu
To: barebox@lists.infradead.org
Cc: cleger@kalray.eu, Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/clocksource/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 3caf72503..02659d86a 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -1,3 +1,5 @@
+menu "Clocksource"
+
 config ARCH_HAS_IMX_GPT
        bool
 
@@ -80,3 +82,5 @@ config CLOCKSOURCE_ARM_GLOBAL_TIMER
 config CLOCKSOURCE_IMX_GPT
 	def_bool y
 	depends on ARCH_HAS_IMX_GPT
+
+endmenu
-- 
2.19.1.1052.gd166e6a


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
