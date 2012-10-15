Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNkkB-0003nb-JE
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 13:30:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Oct 2012 15:30:04 +0200
Message-Id: <1350307804-5365-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350307804-5365-1-git-send-email-s.hauer@pengutronix.de>
References: <1350307804-5365-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM samsung S5P: Enable board support
To: barebox@lists.infradead.org

This was once disabled because we had no board support. This has
changed, so enable the S5P board support in the config so that
the friendlyarm_tiny210_defconfig actually builds for the correct
machine.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig |   14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8278c82..c1a963d 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -71,14 +71,12 @@ config ARCH_S3C24xx
 	select ARCH_SAMSUNG
 	select CPU_ARM920T
 	select GENERIC_GPIO
-#
-# Currently no board support
-#
-#config ARCH_S5PCxx
-#	bool "Samsung S5PC110, S5PV210"
-#	select ARCH_SAMSUNG
-#	select CPU_V7
-#	select GENERIC_GPIO
+
+config ARCH_S5PCxx
+	bool "Samsung S5PC110, S5PV210"
+	select ARCH_SAMSUNG
+	select CPU_V7
+	select GENERIC_GPIO
 
 config ARCH_S3C64xx
 	bool "Samsung S3C64xx"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
