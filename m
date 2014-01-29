Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8RX5-0004GP-5V
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 09:34:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Jan 2014 10:33:36 +0100
Message-Id: <1390988019-31405-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: Make thumb2 compilation only visible on CPUs that
 support it
To: barebox@lists.infradead.org

Thumb2 can't be used if one of CPU_32v4T, CPU_32v5 or CPU_32v6 is
selected.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 93619d5..ce8d3fd 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -216,7 +216,7 @@ config AEABI
 config THUMB2_BAREBOX
 	select ARM_ASM_UNIFIED
 	select AEABI
-	depends on CPU_V7
+	depends on CPU_V7 && !CPU_32v4T && !CPU_32v5 && !CPU_32v6
 	bool "Compile barebox in thumb-2 mode (read help)"
 	help
 	  This enables compilation of barebox in thumb-2 mode which generates
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
