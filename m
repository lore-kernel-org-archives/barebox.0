Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSp50-0002PS-7n
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 21:12:42 +0000
Received: from astat.fritz.box (a89-183-53-44.net-htp.de [89.183.53.44])
 by lynxeye.de (Postfix) with ESMTPA id DA84DE74283
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2019 22:11:27 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Nov 2019 22:11:17 +0100
Message-Id: <20191107211119.68064-17-dev@lynxeye.de>
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
Subject: [PATCH 16/18] ARM: zynq: switch to multi-image build
To: barebox@lists.infradead.org

Finally move over to a multi-image based build.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c      |  2 +-
 .../{zedboard_defconfig => zynq_defconfig}     |  2 ++
 arch/arm/mach-zynq/Kconfig                     | 18 +++++++-----------
 images/Makefile.zynq                           |  4 ++--
 4 files changed, 12 insertions(+), 14 deletions(-)
 rename arch/arm/configs/{zedboard_defconfig => zynq_defconfig} (95%)

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index ae279e4e64af..93e4da96ecd4 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -29,7 +29,7 @@
 
 extern char __dtb_zynq_zed_start[];
 
-void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_avnet_zedboard, r0, r1, r2)
 {
 
 	void *fdt = __dtb_zynq_zed_start + get_runtime_offset();
diff --git a/arch/arm/configs/zedboard_defconfig b/arch/arm/configs/zynq_defconfig
similarity index 95%
rename from arch/arm/configs/zedboard_defconfig
rename to arch/arm/configs/zynq_defconfig
index 0e5078c40246..a16c57d5cebb 100644
--- a/arch/arm/configs/zedboard_defconfig
+++ b/arch/arm/configs/zynq_defconfig
@@ -1,4 +1,5 @@
 CONFIG_ARCH_ZYNQ=y
+CONFIG_MACH_ZEDBOARD=y
 CONFIG_AEABI=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
@@ -41,5 +42,6 @@ CONFIG_NET=y
 CONFIG_DRIVER_SERIAL_CADENCE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
+# CONFIG_PINCTRL is not set
 CONFIG_FS_TFTP=y
 CONFIG_DIGEST=y
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index 944f325bcc08..3e07633e5f08 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -2,37 +2,33 @@ if ARCH_ZYNQ
 
 config ARCH_TEXT_BASE
 	hex
-	default 0x1ff00000 if MACH_ZEDBOARD
+	default 0x0
 
 config ZYNQ_DEBUG_LL_UART_BASE
 	hex
 	default 0xe0001000 if MACH_ZEDBOARD
 
-choice
-	prompt "Xilinx Zynq type board"
-
 config ARCH_ZYNQ7000
-	bool "Zynq-7000"
+	bool
 	select CPU_V7
 	select CLKDEV_LOOKUP
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select ARM_SMP_TWD
 	select HAS_MACB
+	select HAVE_PBL_MULTI_IMAGES
 	select OFTREE
 	select OFDEVICE
+	select RELOCATABLE
 
-endchoice
 
-if ARCH_ZYNQ7000
 
-choice
-	prompt "Zynq-7000 Board Type"
+menu "select Zynq boards to be built"
 
 config MACH_ZEDBOARD
 	bool "Avnet Zynq-7000 ZedBoard"
+	select ARCH_ZYNQ7000
 
-endchoice
-endif
+endmenu
 
 endif
diff --git a/images/Makefile.zynq b/images/Makefile.zynq
index b089a9fd26f4..062496ac7d41 100644
--- a/images/Makefile.zynq
+++ b/images/Makefile.zynq
@@ -18,6 +18,6 @@ $(obj)/%.zynqimg: $(obj)/% FORCE
 
 #------------------------------------------------------------------------------
 
-CFG_start_pbl.pblb.zynqimg = $(board)/avnet-zedboard/zedboard.zynqcfg
-FILE_barebox-avnet-zedboard.img = start_pbl.pblb.zynqimg
+CFG_start_avnet_zedboard.pblb.zynqimg = $(board)/avnet-zedboard/zedboard.zynqcfg
+FILE_barebox-avnet-zedboard.img = start_avnet_zedboard.pblb.zynqimg
 image-$(CONFIG_MACH_ZEDBOARD) += barebox-avnet-zedboard.img
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
