Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OwSlg-000362-Ki
	for barebox@lists.infradead.org; Fri, 17 Sep 2010 04:41:50 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 17 Sep 2010 06:40:35 +0200
Message-Id: <1284698436-1097-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1284698436-1097-1-git-send-email-plagnioj@jcrosoft.com>
References: <1284698436-1097-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/5] arm: move mach-types.h to include/generated/
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                                 |    4 ++--
 arch/arm/boards/a9m2410/a9m2410.c                 |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                 |    2 +-
 arch/arm/boards/at91sam9260ek/init.c              |    2 +-
 arch/arm/boards/at91sam9263ek/init.c              |    2 +-
 arch/arm/boards/edb93xx/edb93xx.c                 |    2 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    2 +-
 arch/arm/boards/guf-neso/board.c                  |    2 +-
 arch/arm/boards/imx21ads/imx21ads.c               |    2 +-
 arch/arm/boards/imx27ads/imx27ads.c               |    2 +-
 arch/arm/boards/mmccpu/init.c                     |    2 +-
 arch/arm/boards/netx/netx.c                       |    2 +-
 arch/arm/boards/nhk8815/setup.c                   |    2 +-
 arch/arm/boards/omap/board-beagle.c               |    2 +-
 arch/arm/boards/pcm037/pcm037.c                   |    2 +-
 arch/arm/boards/pcm038/pcm038.c                   |    2 +-
 arch/arm/boards/pcm043/pcm043.c                   |    2 +-
 arch/arm/boards/phycard-i.MX27/pca100.c           |    2 +-
 arch/arm/boards/pm9263/init.c                     |    2 +-
 arch/arm/boards/scb9328/scb9328.c                 |    2 +-
 arch/arm/include/asm/.gitignore                   |    1 -
 arch/arm/mach-nomadik/8815.c                      |    2 +-
 arch/arm/tools/Makefile                           |    2 +-
 arch/arm/tools/gen-mach-types                     |    2 +-
 28 files changed, 28 insertions(+), 29 deletions(-)
 delete mode 100644 arch/arm/include/asm/.gitignore

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index e542c03..0fb3adc 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -114,7 +114,7 @@ all: $(KBUILD_IMAGE)
 
 archprepare: maketools
 maketools:
-	$(Q)$(MAKE) $(build)=arch/arm/tools arch/arm/include/asm/mach-types.h
+	$(Q)$(MAKE) $(build)=arch/arm/tools include/generated/mach-types.h
 
 PHONY += maketools
 
@@ -136,4 +136,4 @@ common-y += arch/arm/lib/ arch/arm/cpu/ arch/arm/common/
 lds-$(CONFIG_GENERIC_LINKER_SCRIPT)	:= arch/arm/lib/barebox.lds
 lds-$(CONFIG_BOARD_LINKER_SCRIPT)	:= $(BOARD)/barebox.lds
 
-CLEAN_FILES += arch/arm/include/asm/mach-types.h arch/arm/lib/barebox.lds
+CLEAN_FILES += include/generated/mach-types.h arch/arm/lib/barebox.lds
diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index f327f82..2c08125 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -28,7 +28,7 @@
 #include <driver.h>
 #include <init.h>
 #include <asm/armlinux.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <partition.h>
 #include <nand.h>
 #include <asm/io.h>
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 2567f5e..59918e9 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -28,7 +28,7 @@
 #include <driver.h>
 #include <init.h>
 #include <asm/armlinux.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <partition.h>
 #include <nand.h>
 #include <asm/io.h>
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 9fd7525..7bb3c45 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -24,7 +24,7 @@
 #include <environment.h>
 #include <fec.h>
 #include <asm/armlinux.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 61cd295..0705af4 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -25,7 +25,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index b0078a5..e106798 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -28,7 +28,7 @@
 #include <partition.h>
 #include <asm/armlinux.h>
 #include <asm/io.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <mach/ep93xx-regs.h>
 #include "edb93xx.h"
 
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index caeb46e..1fd0afd 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -33,7 +33,7 @@
 #include <asm/mmu.h>
 
 #include <partition.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <mach/imx-nand.h>
 #include <mach/imxfb.h>
 #include <fec.h>
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 1937d21..ebacd9a 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -30,7 +30,7 @@
 #include <notifier.h>
 #include <mach/gpio.h>
 #include <asm/armlinux.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <mach/pmic.h>
 #include <partition.h>
 #include <fs.h>
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index d41d9b5..4509e72 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -40,7 +40,7 @@
 
 #include <asm/armlinux.h>
 #include <asm/io.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <asm/mmu.h>
 
 #include <mach/gpio.h>
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index cd228cc..cb95107 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -30,7 +30,7 @@
 #include <mach/gpio.h>
 #include <asm/io.h>
 #include <partition.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <mach/imx-nand.h>
 #include <fec.h>
 #include <nand.h>
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 9a66976..544262f 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -38,7 +38,7 @@
 
 #include <asm/armlinux.h>
 #include <asm/io.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 
 #include <mach/gpio.h>
 #include <mach/imx-nand.h>
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 2f53d34..d2fb345 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -35,7 +35,7 @@
 #include <asm/io.h>
 #include <asm/mmu.h>
 #include <asm/armlinux.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 
 #include <mach/gpio.h>
 #include <mach/spi.h>
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 5e88af4..ff8e6c2 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -32,7 +32,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <mach/imx-nand.h>
 #include <mach/imxfb.h>
 #include <mach/iomux-mx21.h>
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index 6f31520..5dbb1e0 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -30,7 +30,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <mach/iomux-mx27.h>
 
 static struct device_d cfi_dev = {
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 9a7d930..4e61387 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -24,7 +24,7 @@
 #include <environment.h>
 #include <fec.h>
 #include <asm/armlinux.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index d6bfcca..a689005 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -27,7 +27,7 @@
 #include <asm/armlinux.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <mach/netx-eth.h>
 
 static struct device_d cfi_dev = {
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index e9295f6..1cb1ff1 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -25,7 +25,7 @@
 #include <partition.h>
 #include <nand.h>
 #include <asm/armlinux.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <asm/io.h>
 
 #include <mach/hardware.h>
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index e9d3072..0908b8a 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -59,7 +59,7 @@
 #include <asm/io.h>
 #include <ns16550.h>
 #include <asm/armlinux.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <mach/silicon.h>
 #include <mach/sdrc.h>
 #include <mach/sys_info.h>
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 2e6968b..4022cf4 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -35,7 +35,7 @@
 #include <asm/io.h>
 #include <asm/mmu.h>
 #include <partition.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <mach/imx-nand.h>
 
 
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 03794fc..7621320 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -27,7 +27,7 @@
 #include <notifier.h>
 #include <mach/gpio.h>
 #include <asm/armlinux.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <mach/pmic.h>
 #include <partition.h>
 #include <fs.h>
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 497149d..7db3b54 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -35,7 +35,7 @@
 #include <asm/io.h>
 #include <partition.h>
 #include <nand.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <mach/imx-nand.h>
 #include <fec.h>
 #include <fb.h>
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index ce59960..1707a06 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -26,7 +26,7 @@
 #include <fec.h>
 #include <mach/gpio.h>
 #include <asm/armlinux.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index d5ed921..9fde288 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -24,7 +24,7 @@
 #include <environment.h>
 #include <fec.h>
 #include <asm/armlinux.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 3c04996..c0d4199 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -22,7 +22,7 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <mach/imx-regs.h>
 #include <asm/armlinux.h>
 #include <mach/gpio.h>
diff --git a/arch/arm/include/asm/.gitignore b/arch/arm/include/asm/.gitignore
deleted file mode 100644
index 9cc4155..0000000
--- a/arch/arm/include/asm/.gitignore
+++ /dev/null
@@ -1 +0,0 @@
-/mach-types.h
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index 8598f14..5cf5d14 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -23,7 +23,7 @@
 #include <asm/hardware.h>
 #include <mach/hardware.h>
 #include <asm/armlinux.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 
 #include "clock.h"
 
diff --git a/arch/arm/tools/Makefile b/arch/arm/tools/Makefile
index 5243a98..635cb18 100644
--- a/arch/arm/tools/Makefile
+++ b/arch/arm/tools/Makefile
@@ -4,7 +4,7 @@
 # Copyright (C) 2001 Russell King
 #
 
-arch/arm/include/asm/mach-types.h: $(src)/gen-mach-types $(src)/mach-types
+include/generated/mach-types.h: $(src)/gen-mach-types $(src)/mach-types
 	@echo '  Generating $@'
 	@mkdir -p $(dir $@)
 	$(Q)$(AWK) -f $^ > $@ || { rm -f $@; /bin/false; }
diff --git a/arch/arm/tools/gen-mach-types b/arch/arm/tools/gen-mach-types
index ce319ef..04fef71 100644
--- a/arch/arm/tools/gen-mach-types
+++ b/arch/arm/tools/gen-mach-types
@@ -1,6 +1,6 @@
 #!/bin/awk
 #
-# Awk script to generate include/asm-arm/mach-types.h
+# Awk script to generate include/generated/mach-types.h
 #
 BEGIN	{ nr = 0 }
 /^#/	{ next }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
