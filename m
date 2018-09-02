Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwZoY-0000EX-Vp
 for barebox@lists.infradead.org; Sun, 02 Sep 2018 21:21:51 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Sun,  2 Sep 2018 23:21:22 +0200
Message-Id: <20180902212123.16405-4-r.hieber@pengutronix.de>
In-Reply-To: <20180902212123.16405-1-r.hieber@pengutronix.de>
References: <20180902212123.16405-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: i.MX: add defconfig for the Kindle i.MX50 boards
To: barebox@lists.infradead.org
Cc: Roland Hieber <rohieb@rohieb.name>

From: Roland Hieber <rohieb@rohieb.name>

Pin down the minimal config needed for a Kindle 4/5 device to boot into
the vendor Linux.

As the board documentation says, there is an upper limit of ~240 KB for
the bootloader partition on those devices. Using XZ image compression
instead of the default LZO reduced the file size from 214 KB to 172 KB,
so enabling that too.

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 arch/arm/configs/kindle-mx50_defconfig | 70 ++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 arch/arm/configs/kindle-mx50_defconfig

diff --git a/arch/arm/configs/kindle-mx50_defconfig b/arch/arm/configs/kindle-mx50_defconfig
new file mode 100644
index 0000000000..31bfc9c06b
--- /dev/null
+++ b/arch/arm/configs/kindle-mx50_defconfig
@@ -0,0 +1,70 @@
+CONFIG_ARCH_IMX=y
+CONFIG_IMX_MULTI_BOARDS=y
+CONFIG_MACH_KINDLE_MX50=y
+CONFIG_THUMB2_BAREBOX=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_MMU_EARLY=y
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_FLEXIBLE_BOOTARGS=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_AUTOMOUNT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_GLOBAL=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_USB=y
+CONFIG_CMD_USBGADGET=y
+CONFIG_CMD_OF_DUMP=y
+CONFIG_CMD_OFTREE=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_GPIO=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_MTD=y
+CONFIG_MTD_WRITE=y
+CONFIG_MTD_M25P80=y
+CONFIG_MTD_SPI_NOR=y
+CONFIG_USB=y
+CONFIG_USB_HOST=y
+CONFIG_USB_IMX_CHIPIDEA=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DRIVER_ARC=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_USB_GADGET_FASTBOOT=y
+CONFIG_MCI=y
+CONFIG_MCI_INFO=y
+CONFIG_MCI_WRITE=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_PINCTRL=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
+CONFIG_GENERIC_PHY=y
+CONFIG_USB_NOP_XCEIV=y
+CONFIG_FS_AUTOMOUNT=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
