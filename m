Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vnm5G-0005K3-3w
 for barebox@lists.infradead.org; Tue, 03 Dec 2013 09:15:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Dec 2013 10:15:32 +0100
Message-Id: <1386062132-538-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX external NAND boot: Add missing instruction cache
 invalidate
To: barebox@lists.infradead.org

Before we jump to SDRAM where we just copied our code we have to
invalidate the instruction cache.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index b0aeb43..1af46b7 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -15,6 +15,7 @@
 #include <init.h>
 #include <io.h>
 #include <linux/mtd/nand.h>
+#include <asm/cache.h>
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
@@ -244,6 +245,8 @@ void __bare_init imx_nand_load_image(void *dest, int size, void __iomem *base,
  */
 static __bare_init __naked void jump_sdram(unsigned long offset)
 {
+	flush_icache();
+
 	__asm__ __volatile__ (
 			"sub lr, lr, %0;"
 			"mov pc, lr;" : : "r"(offset)
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
