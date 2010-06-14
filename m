Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OO6He-0007wT-J9
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 09:48:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Jun 2010 11:48:31 +0200
Message-Id: <1276508921-3264-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
References: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/11] pcm037: Add MMU support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |    2 ++
 board/pcm037/pcm037.c     |   31 +++++++++++++++++++++++++++++++
 2 files changed, 33 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 419daab..721264b 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -206,7 +206,9 @@ choice
 config MACH_PCM037
 	bool "phyCORE-i.MX31"
 	select MACH_HAS_LOWLEVEL_INIT
+	select HAVE_MMU
 	select USB_ISP1504 if USB
+	select ARCH_HAS_L2X0
 	help
 	  Say Y here if you are using Phytec's phyCORE-i.MX31 (pcm037) equipped
 	  with a Freescale i.MX31 Processor
diff --git a/board/pcm037/pcm037.c b/board/pcm037/pcm037.c
index aee40c6..2e6968b 100644
--- a/board/pcm037/pcm037.c
+++ b/board/pcm037/pcm037.c
@@ -33,6 +33,7 @@
 #include <asm/armlinux.h>
 #include <mach/gpio.h>
 #include <asm/io.h>
+#include <asm/mmu.h>
 #include <partition.h>
 #include <asm/mach-types.h>
 #include <mach/imx-nand.h>
@@ -117,6 +118,7 @@ static struct device_d sdram1_dev = {
 struct imx_nand_platform_data nand_info = {
 	.width = 1,
 	.hw_ecc = 1,
+	.flash_bbt = 1,
 };
 
 static struct device_d nand_dev = {
@@ -226,8 +228,37 @@ static void pcm037_usb_init(void)
 }
 #endif
 
+#ifdef CONFIG_MMU
+static void pcm037_mmu_init(void)
+{
+	mmu_init();
+
+	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
+	arm_create_section(0x90000000, 0x80000000, 128, PMD_SECT_DEF_UNCACHED);
+
+	setup_dma_coherent(0x10000000);
+
+#if TEXT_BASE & (0x100000 - 1)
+#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
+#else
+	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
+#endif
+	mmu_enable();
+
+#ifdef CONFIG_CACHE_L2X0
+	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
+#endif
+}
+#else
+static void pcm037_mmu_init(void)
+{
+}
+#endif
+
 static int imx31_devices_init(void)
 {
+	pcm037_mmu_init();
+
 	__REG(CSCR_U(0)) = 0x0000cf03; /* CS0: Nor Flash */
 	__REG(CSCR_L(0)) = 0x10000d03;
 	__REG(CSCR_A(0)) = 0x00720900;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
