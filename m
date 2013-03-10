Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEdLj-0004PK-LL
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 10:19:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 10 Mar 2013 11:19:18 +0100
Message-Id: <1362910761-1732-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362910761-1732-1-git-send-email-s.hauer@pengutronix.de>
References: <1362910761-1732-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] include asm/sections.h instead of asm-generic/sections.h
To: barebox@lists.infradead.org

To let the architectures override asm-generic/sections.h

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/a9m2410/a9m2410.c                 | 2 +-
 arch/arm/boards/a9m2440/a9m2440.c                 | 2 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c | 2 +-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c        | 2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c | 2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c        | 2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   | 2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   | 2 +-
 arch/arm/boards/friendlyarm-mini2440/mini2440.c   | 2 +-
 arch/arm/boards/guf-cupid/lowlevel.c              | 2 +-
 arch/arm/boards/guf-neso/lowlevel.c               | 2 +-
 arch/arm/boards/imx21ads/imx21ads.c               | 2 +-
 arch/arm/boards/karo-tx25/board.c                 | 2 +-
 arch/arm/boards/karo-tx25/lowlevel.c              | 2 +-
 arch/arm/boards/pcm037/pcm037.c                   | 2 +-
 arch/arm/boards/pcm038/lowlevel.c                 | 2 +-
 arch/arm/boards/pcm043/lowlevel.c                 | 2 +-
 arch/arm/boards/phycard-i.MX27/pca100.c           | 2 +-
 arch/arm/lib/unwind.c                             | 2 +-
 arch/arm/mach-imx/include/mach/imx-flash-header.h | 2 +-
 common/kallsyms.c                                 | 2 +-
 common/meminfo.c                                  | 2 +-
 drivers/mtd/nand/nand_s3c24xx.c                   | 2 +-
 23 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index f1ad594..537e1e9 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -25,7 +25,7 @@
 #include <init.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <partition.h>
 #include <nand.h>
 #include <io.h>
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index ff5d513..36216aa 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -24,7 +24,7 @@
 #include <driver.h>
 #include <init.h>
 #include <asm/armlinux.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <nand.h>
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 98c9b43..2ea6913 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -25,7 +25,7 @@
 #include <mach/imx25-regs.h>
 #include <asm/armlinux.h>
 #include <asm/barebox-arm.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <mach/gpio.h>
 #include <io.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index bda1b22..11d990d 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -26,7 +26,7 @@
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/system.h>
 
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index d690581..dc53272 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -26,7 +26,7 @@
 #include <notifier.h>
 #include <mach/gpio.h>
 #include <asm/armlinux.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <generated/mach-types.h>
 #include <partition.h>
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index 88e9b28..a667e4c 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -26,7 +26,7 @@
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/system.h>
 
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 4d048be..1909582 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -23,7 +23,7 @@
 #include <environment.h>
 #include <mach/imx25-regs.h>
 #include <asm/armlinux.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <mach/gpio.h>
 #include <io.h>
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index e1cb73c..f8656f1 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -34,7 +34,7 @@
 #include <partition.h>
 
 #include <asm/armlinux.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <io.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/friendlyarm-mini2440/mini2440.c b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
index 9f4363c..c4b97a2 100644
--- a/arch/arm/boards/friendlyarm-mini2440/mini2440.c
+++ b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
@@ -32,7 +32,7 @@
 #include <mci.h>
 #include <fb.h>
 #include <asm/armlinux.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <io.h>
 #include <mach/gpio.h>
 #include <mach/s3c-iomap.h>
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index 774dd55..d5298c1 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -26,7 +26,7 @@
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/system.h>
 
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index 56bafa9..386751d 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -27,7 +27,7 @@
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/system.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <asm-generic/memory_layout.h>
 
 #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 6087ad4..8717774 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -23,7 +23,7 @@
 #include <environment.h>
 #include <mach/imx21-regs.h>
 #include <asm/armlinux.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <io.h>
 #include <mach/gpio.h>
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index e581886..cdbb0c5 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -24,7 +24,7 @@
 #include <environment.h>
 #include <mach/imx25-regs.h>
 #include <asm/armlinux.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <mach/gpio.h>
 #include <io.h>
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 6c7614b..d010043 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -27,7 +27,7 @@
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/system.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <asm-generic/memory_layout.h>
 
 static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl,
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 959cc8a..276f9cd 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -27,7 +27,7 @@
 #include <mach/imx31-regs.h>
 #include <mach/iomux-mx31.h>
 #include <asm/armlinux.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <mach/gpio.h>
 #include <mach/weim.h>
 #include <io.h>
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index 77b7bf5..0ea2939 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -26,7 +26,7 @@
 #include <asm/barebox-arm.h>
 #include <asm/system.h>
 #include <asm-generic/memory_layout.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <asm/barebox-arm-head.h>
 
 #include "pll.h"
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index 9485a9b..ebd6b29 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -26,7 +26,7 @@
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/system.h>
 
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 1a21c8a..0ebc0cd 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -22,7 +22,7 @@
 #include <fec.h>
 #include <mach/gpio.h>
 #include <asm/armlinux.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
diff --git a/arch/arm/lib/unwind.c b/arch/arm/lib/unwind.c
index 62d26af..7932bca 100644
--- a/arch/arm/lib/unwind.c
+++ b/arch/arm/lib/unwind.c
@@ -2,7 +2,7 @@
 #include <init.h>
 #include <asm/stacktrace.h>
 #include <asm/unwind.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 
 /* Dummy functions to avoid linker complaints */
 void __aeabi_unwind_cpp_pr0(void)
diff --git a/arch/arm/mach-imx/include/mach/imx-flash-header.h b/arch/arm/mach-imx/include/mach/imx-flash-header.h
index a1f4a48..7a8d5cc 100644
--- a/arch/arm/mach-imx/include/mach/imx-flash-header.h
+++ b/arch/arm/mach-imx/include/mach/imx-flash-header.h
@@ -1,7 +1,7 @@
 #ifndef __MACH_FLASH_HEADER_H
 #define __MACH_FLASH_HEADER_H
 
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 
 #define __flash_header_start		__section(.flash_header_start)
 
diff --git a/common/kallsyms.c b/common/kallsyms.c
index 0218991..94dfcdc 100644
--- a/common/kallsyms.c
+++ b/common/kallsyms.c
@@ -1,7 +1,7 @@
 #include <common.h>
 #include <init.h>
 #include <kallsyms.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 
 #ifndef DOXYGEN_SHOULD_SKIP_THIS
 
diff --git a/common/meminfo.c b/common/meminfo.c
index 5e3ff71..ad9bbd9 100644
--- a/common/meminfo.c
+++ b/common/meminfo.c
@@ -2,7 +2,7 @@
 #include <init.h>
 #include <memory.h>
 #include <asm-generic/memory_layout.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 
 static int display_meminfo(void)
 {
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index fef9432..e41d9bf 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -602,7 +602,7 @@ void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page)
 	disable_nand_controller(host);
 }
 
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 
 void __nand_boot_init nand_boot(void)
 {
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
