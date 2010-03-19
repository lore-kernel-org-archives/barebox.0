Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4-g21.free.fr ([212.27.42.4])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NsdSb-0002Eq-Ny
	for barebox@lists.infradead.org; Fri, 19 Mar 2010 14:46:06 +0000
Received: from smtp4-g21.free.fr (localhost [127.0.0.1])
	by smtp4-g21.free.fr (Postfix) with ESMTP id 742344C8173
	for <barebox@lists.infradead.org>; Fri, 19 Mar 2010 15:45:57 +0100 (CET)
Received: from localhost.localdomain (pac33-2-82-240-38-71.fbx.proxad.net
	[82.240.38.71])
	by smtp4-g21.free.fr (Postfix) with ESMTP id 7D0024C8192
	for <barebox@lists.infradead.org>; Fri, 19 Mar 2010 15:45:55 +0100 (CET)
From: Eric Benard <eric@eukrea.com>
Date: Fri, 19 Mar 2010 15:45:55 +0100
Message-Id: <1269009955-18797-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH] i.MX25 : fix define name for clock frequency
To: barebox@lists.infradead.org

CONFIG_MX35_HCLK_FREQ -> CONFIG_MX25_HCLK_FREQ

Signed-off-by: Eric Benard <eric@eukrea.com>
---
 arch/arm/mach-imx/speed-imx25.c       |    4 ++--
 board/eukrea_cpuimx25/config.h        |    2 ++
 board/freescale-mx25-3-stack/config.h |    2 +-
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/speed-imx25.c b/arch/arm/mach-imx/speed-imx25.c
index beb7efe..a615017 100644
--- a/arch/arm/mach-imx/speed-imx25.c
+++ b/arch/arm/mach-imx/speed-imx25.c
@@ -7,13 +7,13 @@
 unsigned long imx_get_mpllclk(void)
 {
 	ulong mpctl = readl(IMX_CCM_BASE + CCM_MPCTL);
-	return imx_decode_pll(mpctl, CONFIG_MX35_HCLK_FREQ);
+	return imx_decode_pll(mpctl, CONFIG_MX25_HCLK_FREQ);
 }
 
 unsigned long imx_get_upllclk(void)
 {
 	ulong ppctl = readl(IMX_CCM_BASE + CCM_UPCTL);
-	return imx_decode_pll(ppctl, CONFIG_MX35_HCLK_FREQ);
+	return imx_decode_pll(ppctl, CONFIG_MX25_HCLK_FREQ);
 }
 
 unsigned long imx_get_armclk(void)
diff --git a/board/eukrea_cpuimx25/config.h b/board/eukrea_cpuimx25/config.h
index 460239d..982c406 100644
--- a/board/eukrea_cpuimx25/config.h
+++ b/board/eukrea_cpuimx25/config.h
@@ -20,6 +20,8 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
+#define CONFIG_MX25_HCLK_FREQ	24000000
+
 #endif
 
 /* nothing to do here yet */
diff --git a/board/freescale-mx25-3-stack/config.h b/board/freescale-mx25-3-stack/config.h
index 0e3b175..f35e8a0 100644
--- a/board/freescale-mx25-3-stack/config.h
+++ b/board/freescale-mx25-3-stack/config.h
@@ -24,7 +24,7 @@
  * Definitions related to passing arguments to kernel.
  */
 
-#define CONFIG_MX35_HCLK_FREQ	24000000
+#define CONFIG_MX25_HCLK_FREQ	24000000
 
 #endif
 
-- 
1.6.3.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
