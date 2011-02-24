Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PsdX5-00044y-0z
	for barebox@lists.infradead.org; Thu, 24 Feb 2011 15:55:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Feb 2011 16:55:07 +0100
Message-Id: <1298562907-9870-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1298562907-9870-1-git-send-email-s.hauer@pengutronix.de>
References: <1298562907-9870-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM i.MX: cleanup boot modes
To: barebox@lists.infradead.org

The i.MX Processors support two different boot modes, the internal
boot mode and the external boot mode. Traditionally the external
NAND boot mode is handled in drivers/mtd/nand and the internal
boot mode is handled in arch/arm/mach-imx. This patch consolidates
the handling of both boot modes in arch/arm/mach-imx so that
the user does not have to look in the mtd kconfig section for
booting from NAND. Also, selecting between internal and external
boot mode now is a clear choice.
The external NAND boot mode has been independent of the mtd nand
driver, but as the code was contained in the NAND driver it was
not possible to support booting from NAND without a mtd nand driver.
This is changed with this patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig                 |   51 +++++
 arch/arm/mach-imx/Makefile                |    1 +
 arch/arm/mach-imx/include/mach/imx-nand.h |   56 +++++-
 arch/arm/mach-imx/internal-nand-boot.c    |  269 +++++++++++++++++++++++++
 drivers/mtd/nand/Kconfig                  |   21 --
 drivers/mtd/nand/nand_imx.c               |  307 -----------------------------
 6 files changed, 376 insertions(+), 329 deletions(-)
 create mode 100644 arch/arm/mach-imx/internal-nand-boot.c

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 235f644..5454505 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -39,10 +39,35 @@ config BOARDINFO
 	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
 	default "Ka-Ro tx25" if MACH_TX25
 
+choice
+	prompt "Select boot mode"
+	help
+	  i.MX processors support two different boot modes. With the internal
+	  boot mode the boot medium contains a header describing the image to
+	  load. The header also contains a register/value table which can be
+	  used to setup SDRAM. The internal ROM code then initializes SDRAM
+	  using the register/value table, loads the whole barebox image to
+	  SDRAM and starts it. The internal boot mode is available on newer
+	  i.MX processors (i.MX25, i.MX35 and i.MX51). and supports booting
+	  from NOR, NAND, MMC/SD and serial ROMs.
+	  The external boot mode only supports booting from NAND and NOR. With
+	  NOR flash the image is just started in NOR flash. With NAND flash
+	  the NAND controller loads the first 2kbyte from NAND into the NAND
+	  controllers internal SRAM where it is then started. It's the
+	  responsibility of these 2kbyte to load the rest of the boot image.
+	  The external boot mode is supported on older i.MX processors (i.MX1,
+	  i.MX21, i.MX25, i.MX27, i.MX21, i.MX35).
+
 config ARCH_IMX_INTERNAL_BOOT
 	bool "support internal boot mode"
 	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX51
 
+config ARCH_IMX_EXTERNAL_BOOT
+	bool "support external boot mode"
+	depends on ARCH_IMX1 || ARCH_IMX21 || ARCH_IMX25 || ARCH_IMX27 || ARCH_IMX31 || ARCH_IMX35
+
+endchoice
+
 choice
 	depends on ARCH_IMX_INTERNAL_BOOT
 	prompt "Internal boot source"
@@ -64,6 +89,32 @@ config ARCH_IMX_INTERNAL_BOOT_ONENAND
 
 endchoice
 
+config NAND_IMX_BOOT
+	bool
+	depends on ARCH_IMX_EXTERNAL_BOOT_NAND
+	default y
+
+config ARCH_IMX_EXTERNAL_BOOT_NAND
+	bool
+	prompt "Support Starting barebox from NAND"
+	depends on ARCH_IMX_EXTERNAL_BOOT
+
+choice
+	depends on ARCH_IMX_EXTERNAL_BOOT_NAND
+	default NAND_IMX_BOOT_512_2K
+	prompt "select nand pagesize you want to support booting from"
+
+config NAND_IMX_BOOT_512
+	bool "512 byte page size"
+
+config NAND_IMX_BOOT_2K
+	bool "2048 byte page size"
+
+config NAND_IMX_BOOT_512_2K
+	bool "512 byte and 2048 byte pagesize"
+
+endchoice
+
 comment "Freescale i.MX System-on-Chip"
 
 choice
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 3b2deaf..5fcaac9 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_ARCH_IMX51) += speed-imx51.o imx51.o iomux-v3.o
 obj-$(CONFIG_IMX_CLKO)	+= clko.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
+obj-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += internal-nand-boot.o
 obj-y += speed.o
 obj-y += devices.o
 obj-y += boot.o
diff --git a/arch/arm/mach-imx/include/mach/imx-nand.h b/arch/arm/mach-imx/include/mach/imx-nand.h
index eb583a2..22462b2 100644
--- a/arch/arm/mach-imx/include/mach/imx-nand.h
+++ b/arch/arm/mach-imx/include/mach/imx-nand.h
@@ -11,5 +11,59 @@ struct imx_nand_platform_data {
 	unsigned int hw_ecc:1;
 	unsigned int flash_bbt:1;
 };
-#endif /* __ASM_ARCH_NAND_H */
 
+#define nfc_is_v21()		(cpu_is_mx25() || cpu_is_mx35())
+#define nfc_is_v1()		(cpu_is_mx31() || cpu_is_mx27() || cpu_is_mx21())
+#define nfc_is_v3_2()		cpu_is_mx51()
+#define nfc_is_v3()		nfc_is_v3_2()
+
+#define NFC_V1_ECC_STATUS_RESULT	0x0c
+#define NFC_V1_RSLTMAIN_AREA		0x0e
+#define NFC_V1_RSLTSPARE_AREA		0x10
+
+#define NFC_V2_ECC_STATUS_RESULT1	0x0c
+#define NFC_V2_ECC_STATUS_RESULT2	0x0e
+#define NFC_V2_SPAS			0x10
+
+#define NFC_V1_V2_BUF_SIZE		0x00
+#define NFC_V1_V2_BUF_ADDR		0x04
+#define NFC_V1_V2_FLASH_ADDR		0x06
+#define NFC_V1_V2_FLASH_CMD		0x08
+#define NFC_V1_V2_CONFIG		0x0a
+
+#define NFC_V1_V2_WRPROT		0x12
+#define NFC_V1_UNLOCKSTART_BLKADDR	0x14
+#define NFC_V1_UNLOCKEND_BLKADDR	0x16
+#define NFC_V21_UNLOCKSTART_BLKADDR	0x20
+#define NFC_V21_UNLOCKEND_BLKADDR	0x22
+#define NFC_V1_V2_NF_WRPRST		0x18
+#define NFC_V1_V2_CONFIG1		0x1a
+#define NFC_V1_V2_CONFIG2		0x1c
+
+#define NFC_V2_CONFIG1_ECC_MODE_4       (1 << 0)
+#define NFC_V1_V2_CONFIG1_SP_EN		(1 << 2)
+#define NFC_V1_V2_CONFIG1_ECC_EN	(1 << 3)
+#define NFC_V1_V2_CONFIG1_INT_MSK	(1 << 4)
+#define NFC_V1_V2_CONFIG1_BIG		(1 << 5)
+#define NFC_V1_V2_CONFIG1_RST		(1 << 6)
+#define NFC_V1_V2_CONFIG1_CE		(1 << 7)
+#define NFC_V1_V2_CONFIG1_ONE_CYCLE	(1 << 8)
+#define NFC_V2_CONFIG1_PPB(x)		(((x) & 0x3) << 9)
+#define NFC_V2_CONFIG1_FP_INT		(1 << 11)
+
+#define NFC_V1_V2_CONFIG2_INT		(1 << 15)
+
+#define NFC_V2_SPAS_SPARESIZE(spas)	((spas) >> 1)
+
+/*
+ * Operation modes for the NFC. Valid for v1, v2 and v3
+ * type controllers.
+ */
+#define NFC_CMD				(1 << 0)
+#define NFC_ADDR			(1 << 1)
+#define NFC_INPUT			(1 << 2)
+#define NFC_OUTPUT			(1 << 3)
+#define NFC_ID				(1 << 4)
+#define NFC_STATUS			(1 << 5)
+
+#endif /* __ASM_ARCH_NAND_H */
diff --git a/arch/arm/mach-imx/internal-nand-boot.c b/arch/arm/mach-imx/internal-nand-boot.c
new file mode 100644
index 0000000..0d71b99
--- /dev/null
+++ b/arch/arm/mach-imx/internal-nand-boot.c
@@ -0,0 +1,269 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <init.h>
+#include <asm/io.h>
+#include <linux/mtd/nand.h>
+#include <mach/imx-nand.h>
+#include <mach/generic.h>
+#include <mach/imx-regs.h>
+
+static void __bare_init noinline imx_nandboot_wait_op_done(void *regs)
+{
+	u32 r;
+
+	while (1) {
+		r = readw(regs + NFC_V1_V2_CONFIG2);
+		if (r & NFC_V1_V2_CONFIG2_INT)
+			break;
+	};
+
+	r &= ~NFC_V1_V2_CONFIG2_INT;
+
+	writew(r, regs + NFC_V1_V2_CONFIG2);
+}
+
+/*
+ * This function issues the specified command to the NAND device and
+ * waits for completion.
+ *
+ * @param       cmd     command for NAND Flash
+ */
+static void __bare_init imx_nandboot_send_cmd(void *regs, u16 cmd)
+{
+	writew(cmd, regs + NFC_V1_V2_FLASH_CMD);
+	writew(NFC_CMD, regs + NFC_V1_V2_CONFIG2);
+
+	imx_nandboot_wait_op_done(regs);
+}
+
+/*
+ * This function sends an address (or partial address) to the
+ * NAND device.  The address is used to select the source/destination for
+ * a NAND command.
+ *
+ * @param       addr    address to be written to NFC.
+ * @param       islast  True if this is the last address cycle for command
+ */
+static void __bare_init noinline imx_nandboot_send_addr(void *regs, u16 addr)
+{
+	writew(addr, regs + NFC_V1_V2_FLASH_ADDR);
+	writew(NFC_ADDR, regs + NFC_V1_V2_CONFIG2);
+
+	/* Wait for operation to complete */
+	imx_nandboot_wait_op_done(regs);
+}
+
+static void __bare_init imx_nandboot_nfc_addr(void *regs, u32 offs, int pagesize_2k)
+{
+	imx_nandboot_send_addr(regs, offs & 0xff);
+
+	if (pagesize_2k) {
+		imx_nandboot_send_addr(regs, offs & 0xff);
+		imx_nandboot_send_addr(regs, (offs >> 11) & 0xff);
+		imx_nandboot_send_addr(regs, (offs >> 19) & 0xff);
+		imx_nandboot_send_addr(regs, (offs >> 27) & 0xff);
+		imx_nandboot_send_cmd(regs, NAND_CMD_READSTART);
+	} else {
+		imx_nandboot_send_addr(regs, (offs >> 9) & 0xff);
+		imx_nandboot_send_addr(regs, (offs >> 17) & 0xff);
+		imx_nandboot_send_addr(regs, (offs >> 25) & 0xff);
+	}
+}
+
+static void __bare_init imx_nandboot_send_page(void *regs,
+		unsigned int ops, int pagesize_2k)
+{
+	int bufs, i;
+
+	if (nfc_is_v1() && pagesize_2k)
+		bufs = 4;
+	else
+		bufs = 1;
+
+	for (i = 0; i < bufs; i++) {
+		/* NANDFC buffer 0 is used for page read/write */
+		writew(i, regs + NFC_V1_V2_BUF_ADDR);
+
+		writew(ops, regs + NFC_V1_V2_CONFIG2);
+
+		/* Wait for operation to complete */
+		imx_nandboot_wait_op_done(regs);
+	}
+}
+
+static void __bare_init __memcpy32(void *trg, const void *src, int size)
+{
+	int i;
+	unsigned int *t = trg;
+	unsigned const int *s = src;
+
+	for (i = 0; i < (size >> 2); i++)
+		*t++ = *s++;
+}
+
+static int __maybe_unused is_pagesize_2k(void)
+{
+#ifdef CONFIG_ARCH_IMX21
+	if (readl(IMX_SYSTEM_CTL_BASE + 0x14) & (1 << 5))
+		return 1;
+	else
+		return 0;
+#endif
+#ifdef CONFIG_ARCH_IMX27
+	if (readl(IMX_SYSTEM_CTL_BASE + 0x14) & (1 << 5))
+		return 1;
+	else
+		return 0;
+#endif
+#ifdef CONFIG_ARCH_IMX31
+	if (readl(IMX_CCM_BASE + CCM_RCSR) & RCSR_NFMS)
+		return 1;
+	else
+		return 0;
+#endif
+#if defined(CONFIG_ARCH_IMX35) || defined(CONFIG_ARCH_IMX25)
+	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 8))
+		return 1;
+	else
+		return 0;
+#endif
+}
+
+void __bare_init imx_nand_load_image(void *dest, int size)
+{
+	u32 tmp, page, block, blocksize, pagesize;
+	int pagesize_2k = 1;
+	void *regs, *base, *spare0;
+
+#if defined(CONFIG_NAND_IMX_BOOT_512)
+	pagesize_2k = 0;
+#elif defined(CONFIG_NAND_IMX_BOOT_2K)
+	pagesize_2k = 1;
+#else
+	pagesize_2k = is_pagesize_2k();
+#endif
+
+	if (pagesize_2k) {
+		pagesize = 2048;
+		blocksize = 128 * 1024;
+	} else {
+		pagesize = 512;
+		blocksize = 16 * 1024;
+	}
+
+	base = (void __iomem *)IMX_NFC_BASE;
+	if (nfc_is_v21()) {
+		regs = base + 0x1e00;
+		spare0 = base + 0x1000;
+	} else if (nfc_is_v1()) {
+		regs = base + 0xe00;
+		spare0 = base + 0x800;
+	}
+
+	imx_nandboot_send_cmd(regs, NAND_CMD_RESET);
+
+	/* preset operation */
+	/* Unlock the internal RAM Buffer */
+	writew(0x2, regs + NFC_V1_V2_CONFIG);
+
+	/* Unlock Block Command for given address range */
+	writew(0x4, regs + NFC_V1_V2_WRPROT);
+
+	tmp = readw(regs + NFC_V1_V2_CONFIG1);
+	tmp |= NFC_V1_V2_CONFIG1_ECC_EN;
+	if (nfc_is_v21())
+		/* currently no support for 218 byte OOB with stronger ECC */
+		tmp |= NFC_V2_CONFIG1_ECC_MODE_4;
+	tmp &= ~(NFC_V1_V2_CONFIG1_SP_EN | NFC_V1_V2_CONFIG1_INT_MSK);
+	writew(tmp, regs + NFC_V1_V2_CONFIG1);
+
+	if (nfc_is_v21()) {
+		if (pagesize_2k)
+			writew(NFC_V2_SPAS_SPARESIZE(64), regs + NFC_V2_SPAS);
+		else
+			writew(NFC_V2_SPAS_SPARESIZE(16), regs + NFC_V2_SPAS);
+	}
+
+	block = page = 0;
+
+	while (1) {
+		page = 0;
+		while (page * pagesize < blocksize) {
+			debug("page: %d block: %d dest: %p src "
+					"0x%08x\n",
+					page, block, dest,
+					block * blocksize +
+					page * pagesize);
+
+			imx_nandboot_send_cmd(regs, NAND_CMD_READ0);
+			imx_nandboot_nfc_addr(regs, block * blocksize +
+					page * pagesize, pagesize_2k);
+			imx_nandboot_send_page(regs, NFC_OUTPUT, pagesize_2k);
+			page++;
+
+			if (pagesize_2k) {
+				if ((readw(spare0) & 0xff) != 0xff)
+					continue;
+			} else {
+				if ((readw(spare0 + 4) & 0xff00) != 0xff00)
+					continue;
+			}
+
+			__memcpy32(dest, base, pagesize);
+			dest += pagesize;
+			size -= pagesize;
+
+			if (size <= 0)
+				return;
+		}
+		block++;
+	}
+}
+
+#define CONFIG_NAND_IMX_BOOT_DEBUG
+#ifdef CONFIG_NAND_IMX_BOOT_DEBUG
+#include <command.h>
+
+static int do_nand_boot_test(struct command *cmdtp, int argc, char *argv[])
+{
+	void *dest;
+	int size;
+
+	if (argc < 3)
+		return COMMAND_ERROR_USAGE;
+
+	dest = (void *)strtoul_suffix(argv[1], NULL, 0);
+	size = strtoul_suffix(argv[2], NULL, 0);
+
+	imx_nand_load_image(dest, size);
+
+	return 0;
+}
+
+static const __maybe_unused char cmd_nand_boot_test_help[] =
+"Usage: nand_boot_test <dest> <size>\n"
+"This command loads the booloader from the NAND memory like the reset\n"
+"routine does. Its intended for development tests only";
+
+BAREBOX_CMD_START(nand_boot_test)
+	.cmd		= do_nand_boot_test,
+	.usage		= "load bootloader from NAND",
+	BAREBOX_CMD_HELP(cmd_nand_boot_test_help)
+BAREBOX_CMD_END
+#endif
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 034bb6f..12e1237 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -13,27 +13,6 @@ config NAND_IMX
 	prompt "i.MX NAND driver"
 	depends on ARCH_IMX21 || ARCH_IMX27 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX25 || ARCH_IMX51
 
-config NAND_IMX_BOOT
-	bool
-	prompt "Support Starting barebox from NAND"
-	depends on NAND_IMX && !ARCH_IMX51
-
-choice
-	depends on NAND_IMX_BOOT
-	default NAND_IMX_BOOT_512_2K
-	prompt "select nand pagesize you want to support booting from"
-
-config NAND_IMX_BOOT_512
-	bool "512 byte page size"
-
-config NAND_IMX_BOOT_2K
-	bool "2048 byte page size"
-
-config NAND_IMX_BOOT_512_2K
-	bool "512 byte and 2048 byte pagesize"
-
-endchoice
-
 config NAND_OMAP_GPMC
 	tristate "NAND Flash Support for GPMC based OMAP platforms"
 	depends on ((ARCH_OMAP2 || ARCH_OMAP3) && GPMC)
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 9a15ab2..ca6e55b 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -30,60 +30,6 @@
 #include <asm/io.h>
 #include <errno.h>
 
-#define nfc_is_v21()		(cpu_is_mx25() || cpu_is_mx35())
-#define nfc_is_v1()		(cpu_is_mx31() || cpu_is_mx27() || cpu_is_mx21())
-#define nfc_is_v3_2()		cpu_is_mx51()
-#define nfc_is_v3()		nfc_is_v3_2()
-
-#define NFC_V1_ECC_STATUS_RESULT	0x0c
-#define NFC_V1_RSLTMAIN_AREA		0x0e
-#define NFC_V1_RSLTSPARE_AREA		0x10
-
-#define NFC_V2_ECC_STATUS_RESULT1	0x0c
-#define NFC_V2_ECC_STATUS_RESULT2	0x0e
-#define NFC_V2_SPAS			0x10
-
-#define NFC_V1_V2_BUF_SIZE		0x00
-#define NFC_V1_V2_BUF_ADDR		0x04
-#define NFC_V1_V2_FLASH_ADDR		0x06
-#define NFC_V1_V2_FLASH_CMD		0x08
-#define NFC_V1_V2_CONFIG		0x0a
-
-#define NFC_V1_V2_WRPROT		0x12
-#define NFC_V1_UNLOCKSTART_BLKADDR	0x14
-#define NFC_V1_UNLOCKEND_BLKADDR	0x16
-#define NFC_V21_UNLOCKSTART_BLKADDR	0x20
-#define NFC_V21_UNLOCKEND_BLKADDR	0x22
-#define NFC_V1_V2_NF_WRPRST		0x18
-#define NFC_V1_V2_CONFIG1		0x1a
-#define NFC_V1_V2_CONFIG2		0x1c
-
-#define NFC_V2_CONFIG1_ECC_MODE_4       (1 << 0)
-#define NFC_V1_V2_CONFIG1_SP_EN		(1 << 2)
-#define NFC_V1_V2_CONFIG1_ECC_EN	(1 << 3)
-#define NFC_V1_V2_CONFIG1_INT_MSK	(1 << 4)
-#define NFC_V1_V2_CONFIG1_BIG		(1 << 5)
-#define NFC_V1_V2_CONFIG1_RST		(1 << 6)
-#define NFC_V1_V2_CONFIG1_CE		(1 << 7)
-#define NFC_V1_V2_CONFIG1_ONE_CYCLE	(1 << 8)
-#define NFC_V2_CONFIG1_PPB(x)		(((x) & 0x3) << 9)
-#define NFC_V2_CONFIG1_FP_INT		(1 << 11)
-
-#define NFC_V1_V2_CONFIG2_INT		(1 << 15)
-
-#define NFC_V2_SPAS_SPARESIZE(spas)	((spas) >> 1)
-
-/*
- * Operation modes for the NFC. Valid for v1, v2 and v3
- * type controllers.
- */
-#define NFC_CMD				(1 << 0)
-#define NFC_ADDR			(1 << 1)
-#define NFC_INPUT			(1 << 2)
-#define NFC_OUTPUT			(1 << 3)
-#define NFC_ID				(1 << 4)
-#define NFC_STATUS			(1 << 5)
-
 #define NFC_V3_FLASH_CMD		(host->regs_axi + 0x00)
 #define NFC_V3_FLASH_ADDR0		(host->regs_axi + 0x04)
 
@@ -132,12 +78,6 @@
 
 #define NFC_V3_DELAY_LINE		(host->regs_ip + 0x34)
 
-#ifdef CONFIG_NAND_IMX_BOOT
-#define __nand_boot_init __bare_init
-#else
-#define __nand_boot_init
-#endif
-
 struct imx_nand_host {
 	struct mtd_info		mtd;		
 	struct nand_chip	nand;
@@ -1239,253 +1179,6 @@ static struct driver_d imx_nand_driver = {
 	.probe = imxnd_probe,
 };
 
-#ifdef CONFIG_NAND_IMX_BOOT
-static void __nand_boot_init noinline imx_nandboot_wait_op_done(void *regs)
-{
-	u32 r;
-
-	while (1) {
-		r = readw(regs + NFC_V1_V2_CONFIG2);
-		if (r & NFC_V1_V2_CONFIG2_INT)
-			break;
-	};
-
-	r &= ~NFC_V1_V2_CONFIG2_INT;
-
-	writew(r, regs + NFC_V1_V2_CONFIG2);
-}
-
-/*
- * This function issues the specified command to the NAND device and
- * waits for completion.
- *
- * @param       cmd     command for NAND Flash
- */
-static void __nand_boot_init imx_nandboot_send_cmd(void *regs, u16 cmd)
-{
-	writew(cmd, regs + NFC_V1_V2_FLASH_CMD);
-	writew(NFC_CMD, regs + NFC_V1_V2_CONFIG2);
-
-	imx_nandboot_wait_op_done(regs);
-}
-
-/*
- * This function sends an address (or partial address) to the
- * NAND device.  The address is used to select the source/destination for
- * a NAND command.
- *
- * @param       addr    address to be written to NFC.
- * @param       islast  True if this is the last address cycle for command
- */
-static void __nand_boot_init noinline imx_nandboot_send_addr(void *regs, u16 addr)
-{
-	writew(addr, regs + NFC_V1_V2_FLASH_ADDR);
-	writew(NFC_ADDR, regs + NFC_V1_V2_CONFIG2);
-
-	/* Wait for operation to complete */
-	imx_nandboot_wait_op_done(regs);
-}
-
-static void __nand_boot_init imx_nandboot_nfc_addr(void *regs, u32 offs, int pagesize_2k)
-{
-	imx_nandboot_send_addr(regs, offs & 0xff);
-
-	if (pagesize_2k) {
-		imx_nandboot_send_addr(regs, offs & 0xff);
-		imx_nandboot_send_addr(regs, (offs >> 11) & 0xff);
-		imx_nandboot_send_addr(regs, (offs >> 19) & 0xff);
-		imx_nandboot_send_addr(regs, (offs >> 27) & 0xff);
-		imx_nandboot_send_cmd(regs, NAND_CMD_READSTART);
-	} else {
-		imx_nandboot_send_addr(regs, (offs >> 9) & 0xff);
-		imx_nandboot_send_addr(regs, (offs >> 17) & 0xff);
-		imx_nandboot_send_addr(regs, (offs >> 25) & 0xff);
-	}
-}
-
-static void __nand_boot_init imx_nandboot_send_page(void *regs,
-		unsigned int ops, int pagesize_2k)
-{
-	int bufs, i;
-
-	if (nfc_is_v1() && pagesize_2k)
-		bufs = 4;
-	else
-		bufs = 1;
-
-	for (i = 0; i < bufs; i++) {
-		/* NANDFC buffer 0 is used for page read/write */
-		writew(i, regs + NFC_V1_V2_BUF_ADDR);
-
-		writew(ops, regs + NFC_V1_V2_CONFIG2);
-
-		/* Wait for operation to complete */
-		imx_nandboot_wait_op_done(regs);
-	}
-}
-
-static void __nand_boot_init __memcpy32(void *trg, const void *src, int size)
-{
-	int i;
-	unsigned int *t = trg;
-	unsigned const int *s = src;
-
-	for (i = 0; i < (size >> 2); i++)
-		*t++ = *s++;
-}
-
-static int __maybe_unused is_pagesize_2k(void)
-{
-#ifdef CONFIG_ARCH_IMX21
-	if (readl(IMX_SYSTEM_CTL_BASE + 0x14) & (1 << 5))
-		return 1;
-	else
-		return 0;
-#endif
-#ifdef CONFIG_ARCH_IMX27
-	if (readl(IMX_SYSTEM_CTL_BASE + 0x14) & (1 << 5))
-		return 1;
-	else
-		return 0;
-#endif
-#ifdef CONFIG_ARCH_IMX31
-	if (readl(IMX_CCM_BASE + CCM_RCSR) & RCSR_NFMS)
-		return 1;
-	else
-		return 0;
-#endif
-#if defined(CONFIG_ARCH_IMX35) || defined(CONFIG_ARCH_IMX25)
-	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 8))
-		return 1;
-	else
-		return 0;
-#endif
-}
-
-void __nand_boot_init imx_nand_load_image(void *dest, int size)
-{
-	u32 tmp, page, block, blocksize, pagesize;
-	int pagesize_2k = 1;
-	void *regs, *base, *spare0;
-
-#if defined(CONFIG_NAND_IMX_BOOT_512)
-	pagesize_2k = 0;
-#elif defined(CONFIG_NAND_IMX_BOOT_2K)
-	pagesize_2k = 1;
-#else
-	pagesize_2k = is_pagesize_2k();
-#endif
-
-	if (pagesize_2k) {
-		pagesize = 2048;
-		blocksize = 128 * 1024;
-	} else {
-		pagesize = 512;
-		blocksize = 16 * 1024;
-	}
-
-	base = (void __iomem *)IMX_NFC_BASE;
-	if (nfc_is_v21()) {
-		regs = base + 0x1e00;
-		spare0 = base + 0x1000;
-	} else if (nfc_is_v1()) {
-		regs = base + 0xe00;
-		spare0 = base + 0x800;
-	}
-
-	imx_nandboot_send_cmd(regs, NAND_CMD_RESET);
-
-	/* preset operation */
-	/* Unlock the internal RAM Buffer */
-	writew(0x2, regs + NFC_V1_V2_CONFIG);
-
-	/* Unlock Block Command for given address range */
-	writew(0x4, regs + NFC_V1_V2_WRPROT);
-
-	tmp = readw(regs + NFC_V1_V2_CONFIG1);
-	tmp |= NFC_V1_V2_CONFIG1_ECC_EN;
-	if (nfc_is_v21())
-		/* currently no support for 218 byte OOB with stronger ECC */
-		tmp |= NFC_V2_CONFIG1_ECC_MODE_4;
-	tmp &= ~(NFC_V1_V2_CONFIG1_SP_EN | NFC_V1_V2_CONFIG1_INT_MSK);
-	writew(tmp, regs + NFC_V1_V2_CONFIG1);
-
-	if (nfc_is_v21()) {
-		if (pagesize_2k)
-			writew(NFC_V2_SPAS_SPARESIZE(64), regs + NFC_V2_SPAS);
-		else
-			writew(NFC_V2_SPAS_SPARESIZE(16), regs + NFC_V2_SPAS);
-	}
-
-	block = page = 0;
-
-	while (1) {
-		page = 0;
-		while (page * pagesize < blocksize) {
-			debug("page: %d block: %d dest: %p src "
-					"0x%08x\n",
-					page, block, dest,
-					block * blocksize +
-					page * pagesize);
-
-			imx_nandboot_send_cmd(regs, NAND_CMD_READ0);
-			imx_nandboot_nfc_addr(regs, block * blocksize +
-					page * pagesize, pagesize_2k);
-			imx_nandboot_send_page(regs, NFC_OUTPUT, pagesize_2k);
-			page++;
-
-			if (pagesize_2k) {
-				if ((readw(spare0) & 0xff) != 0xff)
-					continue;
-			} else {
-				if ((readw(spare0 + 4) & 0xff00) != 0xff00)
-					continue;
-			}
-
-			__memcpy32(dest, base, pagesize);
-			dest += pagesize;
-			size -= pagesize;
-
-			if (size <= 0)
-				return;
-		}
-		block++;
-	}
-}
-#define CONFIG_NAND_IMX_BOOT_DEBUG
-#ifdef CONFIG_NAND_IMX_BOOT_DEBUG
-#include <command.h>
-
-static int do_nand_boot_test(struct command *cmdtp, int argc, char *argv[])
-{
-	void *dest;
-	int size;
-
-	if (argc < 3)
-		return COMMAND_ERROR_USAGE;
-
-	dest = (void *)strtoul_suffix(argv[1], NULL, 0);
-	size = strtoul_suffix(argv[2], NULL, 0);
-
-	imx_nand_load_image(dest, size);
-
-	return 0;
-}
-
-static const __maybe_unused char cmd_nand_boot_test_help[] =
-"Usage: nand_boot_test <dest> <size>\n"
-"This command loads the booloader from the NAND memory like the reset\n"
-"routine does. Its intended for development tests only";
-
-BAREBOX_CMD_START(nand_boot_test)
-	.cmd		= do_nand_boot_test,
-	.usage		= "load bootloader from NAND",
-	BAREBOX_CMD_HELP(cmd_nand_boot_test_help)
-BAREBOX_CMD_END
-#endif
-
-#endif /* CONFIG_NAND_IMX_BOOT */
-
 /*
  * Main initialization routine
  * @return  0 if successful; non-zero otherwise
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
