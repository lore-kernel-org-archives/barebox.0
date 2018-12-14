Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXkuB-0003uX-DX
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 10:41:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 11:40:58 +0100
Message-Id: <20181214104100.6296-4-s.hauer@pengutronix.de>
In-Reply-To: <20181214104100.6296-1-s.hauer@pengutronix.de>
References: <20181214104100.6296-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] ARM: omap: fix missing prototypes warnings
To: Barebox List <barebox@lists.infradead.org>

- make locally used function static
- include mach/omap4-generic.h to get prototypes

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/omap4-generic.h | 1 +
 arch/arm/mach-omap/omap4_generic.c              | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/include/mach/omap4-generic.h b/arch/arm/mach-omap/include/mach/omap4-generic.h
index 7ec41d880b..c1d0a3c900 100644
--- a/arch/arm/mach-omap/include/mach/omap4-generic.h
+++ b/arch/arm/mach-omap/include/mach/omap4-generic.h
@@ -1,6 +1,7 @@
 #ifndef __MACH_OMAP4_GENERIC_H
 #define __MACH_OMAP4_GENERIC_H
 
+#include <linux/sizes.h>
 #include <mach/generic.h>
 #include <mach/omap4-silicon.h>
 
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index a3f370df8f..ed3bb7524e 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -10,6 +10,7 @@
 #include <mach/generic.h>
 #include <mach/gpmc.h>
 #include <mach/omap4_rom_usb.h>
+#include <mach/omap4-generic.h>
 
 /*
  *  The following several lines are taken from U-Boot to support
@@ -179,7 +180,7 @@ static inline void delay(unsigned long loops)
 			  "bne 1b" : "=r" (loops) : "0"(loops));
 }
 
-int omap4_emif_config(unsigned int base, const struct ddr_regs *ddr_regs)
+static int omap4_emif_config(unsigned int base, const struct ddr_regs *ddr_regs)
 {
 	/*
 	 * set SDRAM CONFIG register
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
