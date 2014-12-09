Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyQ56-0008BE-3v
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 19:04:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 20:03:35 +0100
Message-Id: <1418151816-24593-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
References: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/13] ARM: MXS: Update Karo TX28 board support
To: barebox@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>

- enable multiimage support to generate bootstream, sd-card and 2nd
  stage images
- Enable new defaultenv support
- Enable more features

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/mxs/KaRo-TX28.rst | 19 ++------
 arch/arm/boards/karo-tx28/lowlevel.c   | 58 ++++++++++++++++++++++-
 arch/arm/configs/tx28stk5_defconfig    | 84 ++++++++++++++++++++++++----------
 arch/arm/mach-mxs/Kconfig              |  2 +
 images/Makefile.mxs                    | 16 +++++++
 5 files changed, 137 insertions(+), 42 deletions(-)

diff --git a/Documentation/boards/mxs/KaRo-TX28.rst b/Documentation/boards/mxs/KaRo-TX28.rst
index 0fbd4df..0c5dc71 100644
--- a/Documentation/boards/mxs/KaRo-TX28.rst
+++ b/Documentation/boards/mxs/KaRo-TX28.rst
@@ -34,20 +34,9 @@ Build the binary image::
 
 **NOTE:** replace the armv5compiler with your ARM v5 cross compiler.
 
-**NOTE:** to use the result, you also need the following resources from Freescale:
+This produces the following images:
 
-  * the 'bootlets' archive
-  * the 'elftosb2' encryption tool
-  * in the case you want to start barebox from an attached SD card
-    the 'sdimage' tool from Freescale's 'uuc' archive.
+ * barebox-karo-tx28-bootstream.img - Use with the bcb command
+ * barebox-karo-tx28-sd.img - Use for SD cards
+ * barebox-karo-tx28-2nd.img - Use for 2nd stage booting (with bootm)
 
-Memory layout when barebox is running
--------------------------------------
-
-  * 0x40000000 start of SDRAM
-  * 0x40000100 start of kernel's boot parameters
-
-    * below malloc area: stack area
-    * below barebox: malloc area
-
-  * 0x47000000 start of barebox
diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
index aa3b09b..f747f3f 100644
--- a/arch/arm/boards/karo-tx28/lowlevel.c
+++ b/arch/arm/boards/karo-tx28/lowlevel.c
@@ -1,11 +1,65 @@
+#define pr_fmt(fmt) "KARO TX28: " fmt
+#define DEBUG
+
 #include <common.h>
 #include <sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx28-regs.h>
+#include <mach/init.h>
+#include <io.h>
+#include <debug_ll.h>
+#include <mach/iomux.h>
+#include <stmp-device.h>
 
-void __naked barebox_arm_reset_vector(void)
+ENTRY_FUNCTION(start_barebox_karo_tx28, r0, r1, r2)
 {
-	arm_cpu_lowlevel_init();
 	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, NULL);
 }
+
+static const uint32_t iomux_pads[] = {
+	/* EMI */
+	EMI_DATA0, EMI_DATA1, EMI_DATA2, EMI_DATA3, EMI_DATA4, EMI_DATA5,
+	EMI_DATA6, EMI_DATA7, EMI_DATA8, EMI_DATA9, EMI_DATA10, EMI_DATA11,
+	EMI_DATA12, EMI_DATA13, EMI_DATA14, EMI_DATA15, EMI_ODT0, EMI_DQM0,
+	EMI_ODT1, EMI_DQM1, EMI_DDR_OPEN_FB, EMI_CLK, EMI_DSQ0, EMI_DSQ1,
+	EMI_DDR_OPEN, EMI_A0, EMI_A1, EMI_A2, EMI_A3, EMI_A4, EMI_A5,
+	EMI_A6, EMI_A7, EMI_A8, EMI_A9, EMI_A10, EMI_A11, EMI_A12, EMI_A13,
+	EMI_A14, EMI_BA0, EMI_BA1, EMI_BA2, EMI_CASN, EMI_RASN, EMI_WEN,
+	EMI_CE0N, EMI_CE1N, EMI_CKE,
+
+	/* Debug UART */
+	AUART0_RTS_DUART_TX | VE_3_3V | STRENGTH(S8MA),
+	AUART0_CTS_DUART_RX | VE_3_3V | STRENGTH(S8MA),
+};
+
+static noinline void karo_tx28_init(void)
+{
+	int i;
+
+	/* initialize muxing */
+	for (i = 0; i < ARRAY_SIZE(iomux_pads); i++)
+		imx_gpio_mode(iomux_pads[i]);
+
+	pr_debug("initializing power...\n");
+
+	mx28_power_init_battery_input();
+
+	pr_debug("initializing SDRAM...\n");
+
+	mx28_mem_init();
+
+	pr_debug("DONE\n");
+}
+
+ENTRY_FUNCTION(prep_start_barebox_karo_tx28, r0, r1, r2)
+{
+	void (*back)(unsigned long) = (void *)get_lr();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	karo_tx28_init();
+
+	back(0);
+}
diff --git a/arch/arm/configs/tx28stk5_defconfig b/arch/arm/configs/tx28stk5_defconfig
index fe80d98..d5714f2 100644
--- a/arch/arm/configs/tx28stk5_defconfig
+++ b/arch/arm/configs/tx28stk5_defconfig
@@ -4,58 +4,92 @@ CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x01000000
-CONFIG_BROKEN=y
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
-CONFIG_GLOB=y
+CONFIG_RELOCATABLE=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/karo-tx28/env"
+CONFIG_BLSPEC=y
+CONFIG_IMD=y
+CONFIG_DEFAULT_COMPRESSION_LZO=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_ECHO_E=y
+CONFIG_DEBUG_LL=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_CMP=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA224SUM=y
+CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_NET=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
+CONFIG_CMD_HOST=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
-CONFIG_NET_RESOLV=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_2048=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_DRIVER_SERIAL_AUART=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
+CONFIG_MTD=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_STM=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MXS=y
+CONFIG_MXS_APBH_DMA=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index 997e326..6ef055e 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -59,6 +59,8 @@ choice
 
 config MACH_TX28
 	bool "KARO tx28"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using the KARO TX28 CPU module.
 
diff --git a/images/Makefile.mxs b/images/Makefile.mxs
index c6056e6..a21fa08 100644
--- a/images/Makefile.mxs
+++ b/images/Makefile.mxs
@@ -20,3 +20,19 @@ $(obj)/%.mxssd: $(obj)/%
 
 board = $(srctree)/arch/$(ARCH)/boards
 mxscfg = $(srctree)/arch/arm/mach-mxs/mxsimg.cfg
+
+pblx-$(CONFIG_MACH_BOSCH_SCM) += start_barebox_bosch_scm prep_start_barebox_bosch_scm
+PREP_start_barebox_bosch_scm.pblx.mxsbs = start_barebox_bosch_scm_prep
+CFG_start_barebox_bosch_scm.mxsbs = $(mxscfg)
+FILE_barebox-bosch-scm.img = start_barebox_bosch_scm.mxsbs
+image-$(CONFIG_MACH_BOSCH_SCM) += barebox-bosch-scm.img
+
+pblx-$(CONFIG_MACH_TX28) += start_barebox_karo_tx28 prep_start_barebox_karo_tx28
+PREP_start_barebox_karo_tx28.pblx.mxsbs = start_barebox_karo_tx28_prep
+CFG_start_barebox_karo_tx28.mxsbs = $(mxscfg)
+FILE_barebox-karo-tx28-bootstream.img = start_barebox_karo_tx28.mxsbs
+image-$(CONFIG_MACH_TX28) += barebox-karo-tx28-bootstream.img
+FILE_barebox-karo-tx28-sd.img = start_barebox_karo_tx28.mxsbs.mxssd
+image-$(CONFIG_MACH_TX28) += barebox-karo-tx28-sd.img
+FILE_barebox-karo-tx28-2nd.img = start_barebox_karo_tx28.pblx
+image-$(CONFIG_MACH_TX28) += barebox-karo-tx28-2nd.img
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
