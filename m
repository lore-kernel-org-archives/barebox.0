Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6nOc-0006m6-8i
 for barebox@lists.infradead.org; Thu, 21 Mar 2019 02:25:32 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 21 Mar 2019 11:24:55 +0900
Message-Id: <1553135095-18453-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH] treewide: surround Kconfig file paths with double quotes
To: barebox@lists.infradead.org

Based on Linux commit 8636a1f9677db4f883f29a072f401303acfc2edd

This will be needed when you sync Kconfig with Linux 5.0 or later.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 Kconfig                         | 16 ++++++-------
 arch/arm/Kconfig                | 50 ++++++++++++++++++++---------------------
 arch/arm/mach-omap/Kconfig      |  2 +-
 arch/arm/mach-samsung/Kconfig   |  4 ++--
 arch/arm/mach-versatile/Kconfig |  2 +-
 arch/mips/Kconfig               | 12 +++++-----
 arch/ppc/Kconfig                |  4 ++--
 arch/riscv/Kconfig              |  2 +-
 arch/x86/Kconfig                |  4 ++--
 common/Kconfig                  |  4 ++--
 drivers/crypto/Kconfig          |  2 +-
 drivers/i2c/Kconfig             |  6 ++---
 drivers/pinctrl/Kconfig         |  2 +-
 drivers/usb/Kconfig             | 13 +++++------
 drivers/video/Kconfig           |  2 +-
 drivers/w1/Kconfig              |  4 ++--
 fs/Kconfig                      | 10 ++++-----
 lib/Kconfig                     | 10 ++++-----
 scripts/Kconfig                 |  2 +-
 19 files changed, 75 insertions(+), 76 deletions(-)

diff --git a/Kconfig b/Kconfig
index 2f2f1a6..29c3246 100644
--- a/Kconfig
+++ b/Kconfig
@@ -6,12 +6,12 @@ mainmenu "Barebox/$(ARCH) $(KERNELVERSION) Configuration"
 
 source "arch/$(SRCARCH)/Kconfig"
 
-source common/Kconfig
-source commands/Kconfig
-source net/Kconfig
-source drivers/Kconfig
-source fs/Kconfig
-source lib/Kconfig
-source crypto/Kconfig
-source firmware/Kconfig
+source "common/Kconfig"
+source "commands/Kconfig"
+source "net/Kconfig"
+source "drivers/Kconfig"
+source "fs/Kconfig"
+source "lib/Kconfig"
+source "crypto/Kconfig"
+source "firmware/Kconfig"
 source "scripts/Kconfig"
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 9d3f5b2..6fc7612 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -266,31 +266,31 @@ config ARCH_QEMU
 
 endchoice
 
-source arch/arm/cpu/Kconfig
-source arch/arm/mach-at91/Kconfig
-source arch/arm/mach-bcm283x/Kconfig
-source arch/arm/mach-clps711x/Kconfig
-source arch/arm/mach-davinci/Kconfig
-source arch/arm/mach-digic/Kconfig
-source arch/arm/mach-ep93xx/Kconfig
-source arch/arm/mach-highbank/Kconfig
-source arch/arm/mach-imx/Kconfig
-source arch/arm/mach-mxs/Kconfig
-source arch/arm/mach-mvebu/Kconfig
-source arch/arm/mach-netx/Kconfig
-source arch/arm/mach-nomadik/Kconfig
-source arch/arm/mach-omap/Kconfig
-source arch/arm/mach-pxa/Kconfig
-source arch/arm/mach-rockchip/Kconfig
-source arch/arm/mach-samsung/Kconfig
-source arch/arm/mach-socfpga/Kconfig
-source arch/arm/mach-versatile/Kconfig
-source arch/arm/mach-vexpress/Kconfig
-source arch/arm/mach-tegra/Kconfig
-source arch/arm/mach-uemd/Kconfig
-source arch/arm/mach-zynq/Kconfig
-source arch/arm/mach-qemu/Kconfig
-source arch/arm/mach-zynqmp/Kconfig
+source "arch/arm/cpu/Kconfig"
+source "arch/arm/mach-at91/Kconfig"
+source "arch/arm/mach-bcm283x/Kconfig"
+source "arch/arm/mach-clps711x/Kconfig"
+source "arch/arm/mach-davinci/Kconfig"
+source "arch/arm/mach-digic/Kconfig"
+source "arch/arm/mach-ep93xx/Kconfig"
+source "arch/arm/mach-highbank/Kconfig"
+source "arch/arm/mach-imx/Kconfig"
+source "arch/arm/mach-mxs/Kconfig"
+source "arch/arm/mach-mvebu/Kconfig"
+source "arch/arm/mach-netx/Kconfig"
+source "arch/arm/mach-nomadik/Kconfig"
+source "arch/arm/mach-omap/Kconfig"
+source "arch/arm/mach-pxa/Kconfig"
+source "arch/arm/mach-rockchip/Kconfig"
+source "arch/arm/mach-samsung/Kconfig"
+source "arch/arm/mach-socfpga/Kconfig"
+source "arch/arm/mach-versatile/Kconfig"
+source "arch/arm/mach-vexpress/Kconfig"
+source "arch/arm/mach-tegra/Kconfig"
+source "arch/arm/mach-uemd/Kconfig"
+source "arch/arm/mach-zynq/Kconfig"
+source "arch/arm/mach-qemu/Kconfig"
+source "arch/arm/mach-zynqmp/Kconfig"
 
 config ARM_ASM_UNIFIED
 	bool
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 49ca0ee..e922880 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -193,7 +193,7 @@ config MACH_WAGO_PFC_AM35XX
 
 endif
 
-source arch/arm/boards/phytec-som-am335x/Kconfig
+source "arch/arm/boards/phytec-som-am335x/Kconfig"
 
 choice
 	prompt "Select OMAP board"
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index a2ddabf..fa1a3dd 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -73,7 +73,7 @@ config MACH_A9M2410DEV
 
 endchoice
 
-source arch/arm/boards/friendlyarm-mini2440/Kconfig
+source "arch/arm/boards/friendlyarm-mini2440/Kconfig"
 
 endmenu
 
@@ -106,7 +106,7 @@ endchoice
 
 menu "Board specific settings"
 
-source arch/arm/boards/friendlyarm-tiny6410/Kconfig
+source "arch/arm/boards/friendlyarm-tiny6410/Kconfig"
 
 endmenu
 
diff --git a/arch/arm/mach-versatile/Kconfig b/arch/arm/mach-versatile/Kconfig
index 3c5cced..95172cf 100644
--- a/arch/arm/mach-versatile/Kconfig
+++ b/arch/arm/mach-versatile/Kconfig
@@ -23,6 +23,6 @@ config MACH_VERSATILEPB_ARM1176
 
 endchoice
 
-source arch/arm/boards/versatile/Kconfig
+source "arch/arm/boards/versatile/Kconfig"
 
 endif
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index eab9452..a4070cf 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -109,12 +109,12 @@ config MACH_MIPS_XBURST
 	select GPIOLIB
 endchoice
 
-source arch/mips/mach-malta/Kconfig
-source arch/mips/mach-ar231x/Kconfig
-source arch/mips/mach-ath79/Kconfig
-source arch/mips/mach-bcm47xx/Kconfig
-source arch/mips/mach-loongson/Kconfig
-source arch/mips/mach-xburst/Kconfig
+source "arch/mips/mach-malta/Kconfig"
+source "arch/mips/mach-ar231x/Kconfig"
+source "arch/mips/mach-ath79/Kconfig"
+source "arch/mips/mach-bcm47xx/Kconfig"
+source "arch/mips/mach-loongson/Kconfig"
+source "arch/mips/mach-xburst/Kconfig"
 
 endmenu
 
diff --git a/arch/ppc/Kconfig b/arch/ppc/Kconfig
index 7a45ced..798f342 100644
--- a/arch/ppc/Kconfig
+++ b/arch/ppc/Kconfig
@@ -18,5 +18,5 @@ config ARCH_MPC85XX
 	bool "Freescale MPC85xx"
 endchoice
 
-source arch/ppc/mach-mpc5xxx/Kconfig
-source arch/ppc/mach-mpc85xx/Kconfig
+source "arch/ppc/mach-mpc5xxx/Kconfig"
+source "arch/ppc/mach-mpc85xx/Kconfig"
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index c435cc8..16c3eec 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -62,7 +62,7 @@ config BUILTIN_DTB_NAME
 	string "DTB to build into the barebox image"
 	depends on BUILTIN_DTB
 
-source arch/riscv/mach-erizo/Kconfig
+source "arch/riscv/mach-erizo/Kconfig"
 
 endmenu
 
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 3f91585..1793055 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -95,5 +95,5 @@ choice
 
 endchoice
 
-source arch/x86/boot/Kconfig
-source arch/x86/mach-i386/Kconfig
+source "arch/x86/boot/Kconfig"
+source "arch/x86/mach-i386/Kconfig"
diff --git a/common/Kconfig b/common/Kconfig
index 43b6570..76b6dd5 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -762,13 +762,13 @@ config PBL_CONSOLE
 	  must be running at the address it's linked at and bss must
 	  be cleared. On ARM that would be after setup_c().
 
-source common/ratp/Kconfig
+source "common/ratp/Kconfig"
 
 config PARTITION
 	bool
 	prompt "Enable Partitions"
 
-source common/partitions/Kconfig
+source "common/partitions/Kconfig"
 
 config ENV_HANDLING
 	select CRC32
diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index d1687e3..b2709f0 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -4,6 +4,6 @@ menuconfig CRYPTO_HW
 
 if CRYPTO_HW
 
-source drivers/crypto/caam/Kconfig
+source "drivers/crypto/caam/Kconfig"
 
 endif
diff --git a/drivers/i2c/Kconfig b/drivers/i2c/Kconfig
index fc314ec..0bd8be0 100644
--- a/drivers/i2c/Kconfig
+++ b/drivers/i2c/Kconfig
@@ -3,8 +3,8 @@ menuconfig I2C
 
 if I2C
 
-source drivers/i2c/algos/Kconfig
-source drivers/i2c/busses/Kconfig
+source "drivers/i2c/algos/Kconfig"
+source "drivers/i2c/busses/Kconfig"
 
 config I2C_MUX
 	tristate "I2C bus multiplexing support"
@@ -13,7 +13,7 @@ config I2C_MUX
 	  handle multiplexed I2C bus topologies, by presenting each
 	  multiplexed segment as a I2C adapter.
 
-source drivers/i2c/muxes/Kconfig
+source "drivers/i2c/muxes/Kconfig"
 
 endif
 
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 45c3b35..46badee 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -83,7 +83,7 @@ config PINCTRL_TEGRA_XUSB
 	  The pinmux controller found on the Tegra 124 line of SoCs used for
 	  the SerDes lanes.
 
-source drivers/pinctrl/mvebu/Kconfig
+source "drivers/pinctrl/mvebu/Kconfig"
 
 config PINCTRL_VF610
 	bool
diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
index 8ff3d18..99eff1c 100644
--- a/drivers/usb/Kconfig
+++ b/drivers/usb/Kconfig
@@ -7,21 +7,20 @@ menuconfig USB_HOST
 
 if USB_HOST
 
-source drivers/usb/imx/Kconfig
+source "drivers/usb/imx/Kconfig"
 
 source "drivers/usb/dwc3/Kconfig"
 
-source drivers/usb/host/Kconfig
+source "drivers/usb/host/Kconfig"
 
-source drivers/usb/otg/Kconfig
+source "drivers/usb/otg/Kconfig"
 
-source drivers/usb/storage/Kconfig
+source "drivers/usb/storage/Kconfig"
 
 source "drivers/usb/misc/Kconfig"
 
 endif
 
-source drivers/usb/gadget/Kconfig
-
-source drivers/usb/musb/Kconfig
+source "drivers/usb/gadget/Kconfig"
 
+source "drivers/usb/musb/Kconfig"
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 79de32c..a26bace 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -96,7 +96,7 @@ config DRIVER_VIDEO_BCM283X
 	help
 	  Add support for the BCM283X/VideoCore frame buffer device.
 
-source drivers/video/imx-ipu-v3/Kconfig
+source "drivers/video/imx-ipu-v3/Kconfig"
 
 config DRIVER_VIDEO_SIMPLEFB
 	bool "Simple framebuffer support"
diff --git a/drivers/w1/Kconfig b/drivers/w1/Kconfig
index dbc1e3c..4a16197 100644
--- a/drivers/w1/Kconfig
+++ b/drivers/w1/Kconfig
@@ -8,8 +8,8 @@ menuconfig W1
 
 if W1
 
-source drivers/w1/masters/Kconfig
-source drivers/w1/slaves/Kconfig
+source "drivers/w1/masters/Kconfig"
+source "drivers/w1/slaves/Kconfig"
 
 config W1_DUAL_SEARCH
 	bool "dual search"
diff --git a/fs/Kconfig b/fs/Kconfig
index 76a3846..e3a9532 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -25,7 +25,7 @@ config FS_CRAMFS
 	select ZLIB
 	prompt "cramfs support"
 
-source fs/ext4/Kconfig
+source "fs/ext4/Kconfig"
 
 config FS_RAMFS
 	bool
@@ -70,8 +70,8 @@ config FS_EFIVARFS
 	help
 	  This filesystem driver provides access to EFI variables.
 
-source fs/fat/Kconfig
-source fs/ubifs/Kconfig
+source "fs/fat/Kconfig"
+source "fs/ubifs/Kconfig"
 
 config FS_BPKFS
 	bool
@@ -106,8 +106,8 @@ config FS_SMHFS
 	  located on a debugging host connected to the target running
 	  Barebox
 
-source fs/pstore/Kconfig
-source fs/squashfs/Kconfig
+source "fs/pstore/Kconfig"
+source "fs/squashfs/Kconfig"
 
 config FS_RATP
 	bool
diff --git a/lib/Kconfig b/lib/Kconfig
index b0839e6..03c61f7 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -63,7 +63,7 @@ config GENERIC_FIND_NEXT_BIT
 config PROCESS_ESCAPE_SEQUENCE
 	def_bool n
 
-source lib/lzo/Kconfig
+source "lib/lzo/Kconfig"
 
 config BCH
 	bool
@@ -125,13 +125,13 @@ config CRC8
 	  when they need to do cyclic redundancy check according CRC8
 	  algorithm. Module will be called crc8.
 
-source lib/gui/Kconfig
+source "lib/gui/Kconfig"
 
-source lib/fonts/Kconfig
+source "lib/fonts/Kconfig"
 
-source lib/logo/Kconfig
+source "lib/logo/Kconfig"
 
-source lib/bootstrap/Kconfig
+source "lib/bootstrap/Kconfig"
 
 config PRINTF_UUID
 	bool
diff --git a/scripts/Kconfig b/scripts/Kconfig
index 14a577a..20530b9 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -10,7 +10,7 @@ config COMPILE_HOST_TOOLS
 	  This is usefull for compile coverage testing and for packaging the
 	  host tools.
 
-source scripts/imx/Kconfig
+source "scripts/imx/Kconfig"
 
 config MVEBU_HOSTTOOLS
 	bool "mvebu hosttools" if COMPILE_HOST_TOOLS
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
