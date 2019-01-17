Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp37.i.mail.ru ([94.100.177.97])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk8YE-0007ZT-9I
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 14:21:48 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 17 Jan 2019 17:21:38 +0300
Message-Id: <20190117142138.21679-2-shc_work@mail.ru>
In-Reply-To: <20190117142138.21679-1-shc_work@mail.ru>
References: <20190117142138.21679-1-shc_work@mail.ru>
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
Subject: [PATCH 2/2] ARN: Remove duplicate includes
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/imx27.c    | 1 -
 arch/arm/mach-imx/imx6.c     | 4 ----
 arch/arm/mach-nomadik/8815.c | 1 -
 3 files changed, 6 deletions(-)

diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 81b9f53..1c62449 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -20,7 +20,6 @@
 #include <mach/generic.h>
 #include <init.h>
 #include <io.h>
-#include <mach/generic.h>
 
 static int imx27_silicon_revision(void)
 {
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index cc368c5..01b4274 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -23,15 +23,11 @@
 #include <mach/reset-reason.h>
 #include <mach/imx6-anadig.h>
 #include <mach/imx6-regs.h>
-#include <mach/generic.h>
 #include <mach/usb.h>
 #include <asm/mmu.h>
 #include <asm/cache-l2x0.h>
 
 #include <poweroff.h>
-#include <mach/imx6-regs.h>
-#include <mach/clock-imx6.h>
-#include <io.h>
 
 #define CLPCR				0x54
 #define BP_CLPCR_LPM(mode)		((mode) & 0x3)
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index af32c9c..dc1bcd2 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -18,7 +18,6 @@
 #include <init.h>
 #include <linux/clkdev.h>
 #include <mach/hardware.h>
-#include <mach/hardware.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <linux/amba/bus.h>
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
