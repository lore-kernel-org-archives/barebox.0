Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSp4z-0002Mu-T8
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 21:12:39 +0000
Received: from astat.fritz.box (a89-183-53-44.net-htp.de [89.183.53.44])
 by lynxeye.de (Postfix) with ESMTPA id 58705E742AB
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2019 22:11:28 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Nov 2019 22:11:19 +0100
Message-Id: <20191107211119.68064-19-dev@lynxeye.de>
In-Reply-To: <20191107211119.68064-1-dev@lynxeye.de>
References: <20191107211119.68064-1-dev@lynxeye.de>
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
Subject: [PATCH 18/18] ARM: zynq: add bootsource detection
To: barebox@lists.infradead.org

Implement the bootsource detection by reading the BOOT_MODE SLCR register
which holds the strap values used to select the boot source.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 .../mach-zynq/include/mach/zynq7000-regs.h    |  1 +
 arch/arm/mach-zynq/zynq.c                     | 27 +++++++++++++++++--
 2 files changed, 26 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-zynq/include/mach/zynq7000-regs.h b/arch/arm/mach-zynq/include/mach/zynq7000-regs.h
index dd02f5b4072a..eeecfe1ded43 100644
--- a/arch/arm/mach-zynq/include/mach/zynq7000-regs.h
+++ b/arch/arm/mach-zynq/include/mach/zynq7000-regs.h
@@ -63,6 +63,7 @@
 #define ZYNQ_FPGA3_CLK_CTRL		0x0A0
 #define ZYNQ_CLK_621_TRUE		0x0C4
 #define ZYNQ_RST_CTRL_BASE		(ZYNQ_SLCR_BASE + 0x200)
+#define ZYNQ_SLCR_BOOT_MODE		(ZYNQ_SLCR_BASE + 0x25C)
 #define ZYNQ_PSS_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x000)
 #define ZYNQ_DDR_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x004)
 #define ZYNQ_TOPSW_RST_CTRL		(ZYNQ_RST_CTRL_BASE + 0x008)
diff --git a/arch/arm/mach-zynq/zynq.c b/arch/arm/mach-zynq/zynq.c
index ad06c624d90b..79a6b908e000 100644
--- a/arch/arm/mach-zynq/zynq.c
+++ b/arch/arm/mach-zynq/zynq.c
@@ -14,11 +14,12 @@
  */
 
 #include <asm/system.h>
-#include <io.h>
+#include <bootsource.h>
 #include <common.h>
 #include <init.h>
-#include <restart.h>
+#include <io.h>
 #include <mach/zynq7000-regs.h>
+#include <restart.h>
 
 static void __noreturn zynq_restart_soc(struct restart_handler *rst)
 {
@@ -30,6 +31,26 @@ static void __noreturn zynq_restart_soc(struct restart_handler *rst)
 	hang();
 }
 
+static enum bootsource zynq_bootsource_get(void)
+{
+	u32 boot_mode = readl(ZYNQ_SLCR_BOOT_MODE);
+
+	switch (boot_mode & 0x7) {
+	case 0x0:
+		return BOOTSOURCE_JTAG;
+	case 0x1:
+		return BOOTSOURCE_SPI;
+	case 0x2:
+		return BOOTSOURCE_NOR;
+	case 0x4:
+		return BOOTSOURCE_NAND;
+	case 0x5:
+		return BOOTSOURCE_MMC;
+	default:
+		return BOOTSOURCE_UNKNOWN;
+	}
+}
+
 static int zynq_init(void)
 {
 	u32 val;
@@ -50,6 +71,8 @@ static int zynq_init(void)
 
 	restart_handler_register_fn(zynq_restart_soc);
 
+	bootsource_set(zynq_bootsource_get());
+
 	return 0;
 }
 postcore_initcall(zynq_init);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
