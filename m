Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Smrra-0002Da-PE
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:37:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 21:36:46 +0200
Message-Id: <1341517020-5581-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
References: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 16/30] ARM Samsung S5P: Disable support until we have a board
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig |   14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index af4cb59..9590db9 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -72,12 +72,14 @@ config ARCH_S3C24xx
 	select ARCH_SAMSUNG
 	select CPU_ARM920T
 	select GENERIC_GPIO
-
-config ARCH_S5PCxx
-	bool "Samsung S5PC110, S5PV210"
-	select ARCH_SAMSUNG
-	select CPU_V7
-	select GENERIC_GPIO
+#
+# Currently no board support
+#
+#config ARCH_S5PCxx
+#	bool "Samsung S5PC110, S5PV210"
+#	select ARCH_SAMSUNG
+#	select CPU_V7
+#	select GENERIC_GPIO
 
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
