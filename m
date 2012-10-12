Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMiTx-0002DA-1j
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 16:53:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Oct 2012 18:52:52 +0200
Message-Id: <1350060774-24779-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350060774-24779-1-git-send-email-s.hauer@pengutronix.de>
References: <1350060774-24779-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM i.MX tx53: Add rev xx30 board support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx53/Makefile                |    3 +
 arch/arm/boards/karo-tx53/board.c                 |    8 +-
 arch/arm/boards/karo-tx53/flash_header.c          |  152 ++++++++++++++++++++-
 arch/arm/configs/tx53stk5_defconfig               |   12 +-
 arch/arm/mach-imx/Kconfig                         |   13 +-
 arch/arm/mach-imx/include/mach/imx-flash-header.h |   33 +++++
 6 files changed, 211 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/karo-tx53/Makefile b/arch/arm/boards/karo-tx53/Makefile
index b56ce7f..2f45976 100644
--- a/arch/arm/boards/karo-tx53/Makefile
+++ b/arch/arm/boards/karo-tx53/Makefile
@@ -1,2 +1,5 @@
 obj-y += board.o
 obj-y += flash_header.o
+pbl-y += flash_header.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index 9829a8f..28840ff 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -99,7 +99,10 @@ static iomux_v3_cfg_t tx53_pads[] = {
 
 static int tx53_mem_init(void)
 {
-	arm_add_mem_device("ram0", 0x70000000, SZ_1G);
+	if (IS_ENABLED(CONFIG_TX53_REV_1011))
+		arm_add_mem_device("ram0", 0x70000000, SZ_1G);
+	else
+		arm_add_mem_device("ram0", 0x70000000, SZ_512M);
 
 	return 0;
 }
@@ -232,7 +235,8 @@ static int tx53_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(tx53_pads, ARRAY_SIZE(tx53_pads));
 
-	imx53_init_lowlevel(1000);
+	if (!IS_ENABLED(CONFIG_TX53_REV_XX30))
+		imx53_init_lowlevel(1000);
 
 	imx53_add_uart0();
 	return 0;
diff --git a/arch/arm/boards/karo-tx53/flash_header.c b/arch/arm/boards/karo-tx53/flash_header.c
index 9b97fab..1e4a167 100644
--- a/arch/arm/boards/karo-tx53/flash_header.c
+++ b/arch/arm/boards/karo-tx53/flash_header.c
@@ -20,13 +20,14 @@
 
 void __naked __flash_header_start go(void)
 {
-	barebox_arm_head();
+	barebox_arm_imx_fcb_head();
 }
 
 /*
  * FIXME: These are the dcd values for a Ka-Ro TX53 1011 which
  *        is not in production. It has 1GB DDR2 memory.
  */
+#ifdef CONFIG_TX53_REV_1011
 struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
 	{ .addr = cpu_to_be32(0x53fd406c), .val = cpu_to_be32(0xffffffff), },
 	{ .addr = cpu_to_be32(0x53fd4070), .val = cpu_to_be32(0xffffffff), },
@@ -121,6 +122,151 @@ struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
 	{ .addr = cpu_to_be32(0x53fa85ac), .val = cpu_to_be32(0x000000e4), },
 	{ .addr = cpu_to_be32(0x53fa85b0), .val = cpu_to_be32(0x00000004), },
 };
+#elif defined(CONFIG_TX53_REV_XX30)
+
+#define DCD_ITEM(adr, val)	cpu_to_be32(adr), cpu_to_be32(val)
+#define DCD_WR_CMD(len)		cpu_to_be32(0xcc << 24 | (len) << 8 | 0x04)
+#define DCD_CHECK_CMD(a, b, c)	cpu_to_be32(a), cpu_to_be32(b), cpu_to_be32(c)
+
+/*
+ * This board uses advanced features of the DCD which do not corporate
+ * well with our flash header defines. The DCD consists of commands which
+ * have the length econded into them. Normally the DCDs only have a single
+ * command (DCD_COMMAND_WRITE_TAG) which is already part of struct
+ * imx_flash_header_v2. Now this board uses multiple commands, so we cannot
+ * calculate the command length using sizeof(dcd_entry).
+ */
+u32 __dcd_entry_section dcd_entry[] = {
+	DCD_ITEM(0x53fd4068, 0xffcc0fff),
+	DCD_ITEM(0x53fd406c, 0x000fffc3),
+	DCD_ITEM(0x53fd4070, 0x033c0000),
+	DCD_ITEM(0x53fd4074, 0x00000000),
+	DCD_ITEM(0x53fd4078, 0x00000000),
+	DCD_ITEM(0x53fd407c, 0x00fff033),
+	DCD_ITEM(0x53fd4080, 0x0f00030f),
+	DCD_ITEM(0x53fd4084, 0xfff00000),
+	DCD_ITEM(0x53fd4088, 0x00000000),
+	DCD_ITEM(0x53fa8174, 0x00000011),
+	DCD_ITEM(0x53fa8318, 0x00000011),
+	DCD_ITEM(0x63fd800c, 0x00000000),
+	DCD_ITEM(0x53fd4014, 0x00888944),
+	DCD_ITEM(0x53fd4018, 0x00016154),
+	DCD_ITEM(0x53fa8724, 0x04000000),
+	DCD_ITEM(0x53fa86f4, 0x00000000),
+	DCD_ITEM(0x53fa8714, 0x00000000),
+	DCD_ITEM(0x53fa86fc, 0x00000080),
+	DCD_ITEM(0x53fa8710, 0x00000000),
+	DCD_ITEM(0x53fa8708, 0x00000040),
+	DCD_ITEM(0x53fa8584, 0x00280000),
+	DCD_ITEM(0x53fa8594, 0x00280000),
+	DCD_ITEM(0x53fa8560, 0x00280000),
+	DCD_ITEM(0x53fa8554, 0x00280000),
+	DCD_ITEM(0x53fa857c, 0x00a80040),
+	DCD_ITEM(0x53fa8590, 0x00a80040),
+	DCD_ITEM(0x53fa8568, 0x00a80040),
+	DCD_ITEM(0x53fa8558, 0x00a80040),
+	DCD_ITEM(0x53fa8580, 0x00280040),
+	DCD_ITEM(0x53fa8578, 0x00280000),
+	DCD_ITEM(0x53fa8564, 0x00280040),
+	DCD_ITEM(0x53fa8570, 0x00280000),
+	DCD_ITEM(0x53fa858c, 0x000000c0),
+	DCD_ITEM(0x53fa855c, 0x000000c0),
+	DCD_ITEM(0x53fa8574, 0x00280000),
+	DCD_ITEM(0x53fa8588, 0x00280000),
+	DCD_ITEM(0x53fa86f0, 0x00280000),
+	DCD_ITEM(0x53fa8720, 0x00280000),
+	DCD_ITEM(0x53fa8718, 0x00280000),
+	DCD_ITEM(0x53fa871c, 0x00280000),
+	DCD_ITEM(0x53fa8728, 0x00280000),
+	DCD_ITEM(0x53fa872c, 0x00280000),
+	DCD_ITEM(0x63fd904c, 0x001f001f),
+	DCD_ITEM(0x63fd9050, 0x001f001f),
+	DCD_ITEM(0x63fd907c, 0x011e011e),
+	DCD_ITEM(0x63fd9080, 0x011f0120),
+	DCD_ITEM(0x63fd9088, 0x3a393d3b),
+	DCD_ITEM(0x63fd9090, 0x3f3f3f3f),
+	DCD_ITEM(0x63fd9018, 0x00011740),
+	DCD_ITEM(0x63fd9000, 0x83190000),
+	DCD_ITEM(0x63fd900c, 0x3f435316),
+	DCD_ITEM(0x63fd9010, 0xb66e0a63),
+	DCD_ITEM(0x63fd9014, 0x01ff00db),
+	DCD_ITEM(0x63fd902c, 0x000026d2),
+	DCD_ITEM(0x63fd9030, 0x00430f24),
+	DCD_ITEM(0x63fd9008, 0x1b221010),
+	DCD_ITEM(0x63fd9004, 0x00030012),
+	DCD_ITEM(0x63fd901c, 0x00008032),
+	DCD_ITEM(0x63fd901c, 0x00008033),
+	DCD_ITEM(0x63fd901c, 0x00408031),
+	DCD_ITEM(0x63fd901c, 0x055080b0),
+	DCD_ITEM(0x63fd9020, 0x00005800),
+	DCD_ITEM(0x63fd9058, 0x00011112),
+	DCD_ITEM(0x63fd90d0, 0x00000003),
+	DCD_ITEM(0x63fd901c, 0x04008010),
+	DCD_ITEM(0x63fd901c, 0x00008040),
+	DCD_ITEM(0x63fd9040, 0x0539002b),
+	DCD_CHECK_CMD(0xcf000c04, 0x63fd9040, 0x00010000),
+	DCD_WR_CMD(0x24),
+	DCD_ITEM(0x63fd901c, 0x00048033),
+	DCD_ITEM(0x63fd901c, 0x00848231),
+	DCD_ITEM(0x63fd901c, 0x00000000),
+	DCD_ITEM(0x63fd9048, 0x00000001),
+	DCD_CHECK_CMD(0xcf000c04, 0x63fd9048, 0x00000001),
+	DCD_WR_CMD(0x2c),
+	DCD_ITEM(0x63fd901c, 0x00048031),
+	DCD_ITEM(0x63fd901c, 0x00008033),
+	DCD_ITEM(0x63fd901c, 0x04008010),
+	DCD_ITEM(0x63fd901c, 0x00048033),
+	DCD_ITEM(0x63fd907c, 0x90000000),
+	DCD_CHECK_CMD(0xcf000c04, 0x63fd907c, 0x90000000),
+	DCD_WR_CMD(0x2c),
+	DCD_ITEM(0x63fd901c, 0x00008033),
+	DCD_ITEM(0x63fd901c, 0x00000000),
+	DCD_ITEM(0x63fd901c, 0x04008010),
+	DCD_ITEM(0x63fd901c, 0x00048033),
+	DCD_ITEM(0x63fd90a4, 0x00000010),
+	DCD_CHECK_CMD(0xcf000c04, 0x63fd90a4, 0x00000010),
+	DCD_WR_CMD(0x24),
+	DCD_ITEM(0x63fd901c, 0x00008033),
+	DCD_ITEM(0x63fd901c, 0x04008010),
+	DCD_ITEM(0x63fd901c, 0x00048033),
+	DCD_ITEM(0x63fd90a0, 0x00000010),
+	DCD_CHECK_CMD(0xcf000c04, 0x63fd90a0, 0x00000010),
+	DCD_WR_CMD(0x010c),
+	DCD_ITEM(0x63fd901c, 0x00008033),
+	DCD_ITEM(0x63fd901c, 0x00000000),
+	DCD_ITEM(0x53fa8004, 0x00194005),
+	DCD_ITEM(0x53fa819c, 0x00000000),
+	DCD_ITEM(0x53fa81a0, 0x00000000),
+	DCD_ITEM(0x53fa81a4, 0x00000000),
+	DCD_ITEM(0x53fa81a8, 0x00000000),
+	DCD_ITEM(0x53fa81ac, 0x00000000),
+	DCD_ITEM(0x53fa81b0, 0x00000000),
+	DCD_ITEM(0x53fa81b4, 0x00000000),
+	DCD_ITEM(0x53fa81b8, 0x00000000),
+	DCD_ITEM(0x53fa81dc, 0x00000000),
+	DCD_ITEM(0x53fa81e0, 0x00000000),
+	DCD_ITEM(0x53fa8228, 0x00000000),
+	DCD_ITEM(0x53fa822c, 0x00000000),
+	DCD_ITEM(0x53fa8230, 0x00000000),
+	DCD_ITEM(0x53fa8234, 0x00000000),
+	DCD_ITEM(0x53fa8238, 0x00000000),
+	DCD_ITEM(0x53fa84ec, 0x000000e4),
+	DCD_ITEM(0x53fa84f0, 0x000000e4),
+	DCD_ITEM(0x53fa84f4, 0x000000e4),
+	DCD_ITEM(0x53fa84f8, 0x000000e4),
+	DCD_ITEM(0x53fa84fc, 0x000000e4),
+	DCD_ITEM(0x53fa8500, 0x000000e4),
+	DCD_ITEM(0x53fa8504, 0x000000e4),
+	DCD_ITEM(0x53fa8508, 0x000000e4),
+	DCD_ITEM(0x53fa852c, 0x00000004),
+	DCD_ITEM(0x53fa8530, 0x00000004),
+	DCD_ITEM(0x53fa85a0, 0x00000004),
+	DCD_ITEM(0x53fa85a4, 0x00000004),
+	DCD_ITEM(0x53fa85a8, 0x000000e4),
+	DCD_ITEM(0x53fa85ac, 0x000000e4),
+	DCD_ITEM(0x53fa85b0, 0x00000004),
+};
+#endif
 
 #define APP_DEST	0x70000000
 
@@ -142,6 +288,10 @@ struct imx_flash_header_v2 __flash_header_section flash_header = {
 	.dcd.header.version	= DCD_VERSION,
 
 	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
+#ifdef CONFIG_TX53_REV_1011
 	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),
+#elif defined(CONFIG_TX53_REV_XX30)
+	.dcd.command.length	= cpu_to_be16(0x21c),
+#endif
 	.dcd.command.param	= DCD_COMMAND_WRITE_PARAM,
 };
diff --git a/arch/arm/configs/tx53stk5_defconfig b/arch/arm/configs/tx53stk5_defconfig
index 95cf460..e0ab9c8 100644
--- a/arch/arm/configs/tx53stk5_defconfig
+++ b/arch/arm/configs/tx53stk5_defconfig
@@ -1,13 +1,16 @@
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX53=y
 CONFIG_MACH_TX53=y
+CONFIG_TX53_REV_XX30=y
 CONFIG_IMX_IIM=y
 CONFIG_AEABI=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_PBL_IMAGE=y
+CONFIG_IMAGE_COMPRESSION_GZIP=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x97f00000
+CONFIG_TEXT_BASE=0x87f00000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
@@ -16,7 +19,6 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/karo-tx53/env"
 CONFIG_RESET_SOURCE=y
@@ -36,8 +38,6 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
@@ -47,6 +47,8 @@ CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
@@ -57,8 +59,6 @@ CONFIG_CMD_LED=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_MTD=y
 CONFIG_NAND=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index d27d4f3..cca8394 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -27,7 +27,7 @@ config ARCH_TEXT_BASE
 	default 0x4fc00000 if MACH_MX6Q_ARM2
 	default 0x97f00000 if MACH_CCMX51
 	default 0x4fc00000 if MACH_SABRELITE
-	default 0x7fe00000 if MACH_TX53
+	default 0x8fe00000 if MACH_TX53
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -464,11 +464,22 @@ config MACH_TQMA53_1GB_RAM
 config MACH_TX53
 	bool "Ka-Ro TX53"
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Ka-Ro tx53 board
 
 endchoice
 
+if MACH_TX53
+choice
+	prompt "TX53 board revision"
+config TX53_REV_1011
+	bool "1011"
+config TX53_REV_XX30
+	bool "8030 / 1030"
+endchoice
+endif
+
 endif
 
 if ARCH_IMX6
diff --git a/arch/arm/mach-imx/include/mach/imx-flash-header.h b/arch/arm/mach-imx/include/mach/imx-flash-header.h
index a51d473..7d048df 100644
--- a/arch/arm/mach-imx/include/mach/imx-flash-header.h
+++ b/arch/arm/mach-imx/include/mach/imx-flash-header.h
@@ -144,4 +144,37 @@ struct imx_flash_header_v2 {
 	struct imx_dcd dcd;
 };
 
+/*
+ * A variant of the standard barebox header in the i.MX FCB
+ * format. Needed for i.MX53 NAND boot
+ */
+static inline void barebox_arm_imx_fcb_head(void)
+{
+	__asm__ __volatile__ (
+		".arm\n"
+		"	b 1f\n"
+		".word 0x20424346\n" /* FCB */
+		".word 0x1\n"
+#ifdef CONFIG_THUMB2_BAREBOX
+		"1:	adr r9, 1f + 1\n"
+		"	bx r9\n"
+		".thumb\n"
+		"1:\n"
+		"bl	reset\n"
+#else
+		"1:	b reset\n"
+		".word 0x0\n"
+		".word 0x0\n"
+#endif
+		".word 0x0\n"
+		".word 0x0\n"
+
+		".asciz \"barebox\"\n"
+		".word _text\n"				/* text base. If copied there,
+							 * barebox can skip relocation
+							 */
+		".word _barebox_image_size\n"		/* image size to copy */
+	);
+}
+
 #endif /* __MACH_FLASH_HEADER_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
