Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoSw-0007oG-Ex
 for barebox@lists.infradead.org; Wed, 14 Aug 2019 08:17:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Aug 2019 10:16:59 +0200
Message-Id: <20190814081659.22670-5-s.hauer@pengutronix.de>
In-Reply-To: <20190814081659.22670-1-s.hauer@pengutronix.de>
References: <20190814081659.22670-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: i.MX: scb9328: refurbish board suport
To: Barebox List <barebox@lists.infradead.org>

- switch the i.MX1 based scb9328 board to device tree
- Remove scb9328_defconfig and enable scb9328 board support in
  imx_defconfig
- Remove old environment and switch to new default environment

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/scb9328/Makefile              |   4 +-
 .../boards/scb9328/defaultenv-scb9328/config  |  50 --------
 arch/arm/boards/scb9328/lowlevel.c            |  23 ++++
 arch/arm/boards/scb9328/lowlevel_init.S       |   8 +-
 arch/arm/boards/scb9328/scb9328.c             |  64 +---------
 arch/arm/configs/imx_defconfig                |   1 +
 arch/arm/configs/scb9328_defconfig            |  60 ---------
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/imx1-scb9328.dts                 | 117 ++++++++++++++++++
 arch/arm/mach-imx/Kconfig                     |  17 ++-
 drivers/i2c/busses/Kconfig                    |   2 +-
 images/Makefile.imx                           |   5 +
 12 files changed, 163 insertions(+), 189 deletions(-)
 delete mode 100644 arch/arm/boards/scb9328/defaultenv-scb9328/config
 create mode 100644 arch/arm/boards/scb9328/lowlevel.c
 delete mode 100644 arch/arm/configs/scb9328_defconfig
 create mode 100644 arch/arm/dts/imx1-scb9328.dts

diff --git a/arch/arm/boards/scb9328/Makefile b/arch/arm/boards/scb9328/Makefile
index 7ef6c3fe62..e98c0459f3 100644
--- a/arch/arm/boards/scb9328/Makefile
+++ b/arch/arm/boards/scb9328/Makefile
@@ -1,4 +1,4 @@
 
-lwl-y += lowlevel_init.o
+lwl-y += lowlevel_init.o lowlevel.o
 obj-y += scb9328.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-scb9328
+bbenv-y += defaultenv-scb9328
diff --git a/arch/arm/boards/scb9328/defaultenv-scb9328/config b/arch/arm/boards/scb9328/defaultenv-scb9328/config
deleted file mode 100644
index c3cbce57d4..0000000000
--- a/arch/arm/boards/scb9328/defaultenv-scb9328/config
+++ /dev/null
@@ -1,50 +0,0 @@
-#!/bin/sh
-
-eth0.serverip=
-user=
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
-
-# can be either 'net', 'nor' or 'nand'
-kernel_loc=net
-# can be either 'net', 'nor', 'nand' or 'initrd'
-rootfs_loc=net
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root-${global.hostname}.$rootfs_type
-
-kernelimage=zImage-${global.hostname}
-#kernelimage=uImage-${global.hostname}
-#kernelimage=Image-${global.hostname}
-#kernelimage=Image-${global.hostname}.lzo
-
-if [ -n $user ]; then
-	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
-	rootfsimage="$user"-"$rootfsimage"
-else
-	nfsroot="$eth0.serverip:/path/to/nfs/root"
-fi
-
-autoboot_timeout=3
-
-bootargs="console=ttymxc0,115200"
-
-nor_parts="256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
-rootfs_mtdblock_nor=3
-
-nand_parts="256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
-rootfs_mtdblock_nand=7
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-
diff --git a/arch/arm/boards/scb9328/lowlevel.c b/arch/arm/boards/scb9328/lowlevel.c
new file mode 100644
index 0000000000..a2057f0c6b
--- /dev/null
+++ b/arch/arm/boards/scb9328/lowlevel.c
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <common.h>
+#include <mach/imx1-regs.h>
+#include <mach/iomux-v1.h>
+#include <mach/iomux-mx1.h>
+#include <asm/barebox-arm.h>
+#include <mach/esdctl.h>
+
+extern char __dtb_imx1_scb9328_start[];
+
+/* Called from assembly */
+void scb9328_start(void);
+
+void scb9328_start(void)
+{
+	void *fdt;
+
+	fdt = __dtb_imx1_scb9328_start + get_runtime_offset();
+
+	imx1_gpio_mode(PA23_PF_CS5);
+
+	imx1_barebox_entry(fdt);
+}
diff --git a/arch/arm/boards/scb9328/lowlevel_init.S b/arch/arm/boards/scb9328/lowlevel_init.S
index 73afc09b70..e20e3b92da 100644
--- a/arch/arm/boards/scb9328/lowlevel_init.S
+++ b/arch/arm/boards/scb9328/lowlevel_init.S
@@ -25,8 +25,10 @@
 	ldr		r1,	=val;	\
 	str		r1,   [r0];
 
-.globl barebox_arm_reset_vector
-barebox_arm_reset_vector:
+.section .text_head_entry_start_scb9328
+
+.globl start_scb9328
+start_scb9328:
 
 	bl arm_cpu_lowlevel_init
 
@@ -132,4 +134,4 @@ barebox_arm_reset_vector:
 2:
 	ldr     sp, =0x08100000 - 4;
 
-	b imx1_barebox_entry
+	b scb9328_start
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index fcdb3de49d..0ef6196b99 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -26,81 +26,19 @@
 #include <partition.h>
 #include <fs.h>
 #include <envfs.h>
-#include <fcntl.h>
-#include <platform_data/eth-dm9000.h>
-#include <led.h>
 #include <mach/iomux-mx1.h>
 #include <mach/devices-imx1.h>
 
-static struct dm9000_platform_data dm9000_data = {
-	.srom     = 1,
-};
-
-struct gpio_led leds[] = {
-	{
-		.gpio = 32 + 21,
-	}, {
-		.gpio = 32 + 22,
-	}, {
-		.gpio = 32 + 23,
-	}, {
-		.gpio = 32 + 24,
-	},
-};
-
 static int scb9328_devices_init(void)
 {
-	int i;
-
-	imx1_gpio_mode(PA23_PF_CS5);
-	imx1_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 21);
-	imx1_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 22);
-	imx1_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 23);
-	imx1_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 24);
-
-	for (i = 0; i < ARRAY_SIZE(leds); i++)
-		led_gpio_register(&leds[i]);
-
 	/* CS3 becomes CS3 by clearing reset default bit 1 in FMCR */
 	writel(0x1, MX1_SCM_BASE_ADDR + MX1_FMCR);
 
-	imx1_setup_eimcs(0, 0x000F2000, 0x11110d01);
-	imx1_setup_eimcs(1, 0x000F0a00, 0x11110601);
-	imx1_setup_eimcs(3, 0x000FFFFF, 0x00000303);
-	imx1_setup_eimcs(4, 0x000F0a00, 0x11110301);
-	imx1_setup_eimcs(5, 0x00008400, 0x00000D03);
-
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0x10000000, 16 * 1024 * 1024, 0);
-	add_dm9000_device(DEVICE_ID_DYNAMIC, 0x16000000, 0x16000004,
-			  IORESOURCE_MEM_16BIT, &dm9000_data);
-
-	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
-	protect_file("/dev/env0", 1);
-
 	armlinux_set_architecture(MACH_TYPE_SCB9328);
 
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_scb9328);
+	defaultenv_append_directory(defaultenv_scb9328);
 
 	return 0;
 }
 
 device_initcall(scb9328_devices_init);
-
-static int scb9328_console_init(void)
-{
-	/* init gpios for serial port */
-	imx1_gpio_mode(PC11_PF_UART1_TXD);
-	imx1_gpio_mode(PC12_PF_UART1_RXD);
-
-	barebox_set_model("Synertronixx scb9328");
-	barebox_set_hostname("scb9328");
-
-	imx1_add_uart0();
-
-	return 0;
-}
-
-console_initcall(scb9328_console_init);
-
diff --git a/arch/arm/configs/imx_defconfig b/arch/arm/configs/imx_defconfig
index 4edca607f9..ede70d7eaf 100644
--- a/arch/arm/configs/imx_defconfig
+++ b/arch/arm/configs/imx_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_IMX=y
 CONFIG_IMX_MULTI_BOARDS=y
+CONFIG_MACH_SCB9328=y
 CONFIG_MACH_TX25=y
 CONFIG_MACH_PCA100=y
 CONFIG_MACH_PCM038=y
diff --git a/arch/arm/configs/scb9328_defconfig b/arch/arm/configs/scb9328_defconfig
deleted file mode 100644
index 1a4646430a..0000000000
--- a/arch/arm/configs/scb9328_defconfig
+++ /dev/null
@@ -1,60 +0,0 @@
-CONFIG_ARCH_IMX=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_KALLSYMS=y
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
-CONFIG_DRIVER_NET_DM9K=y
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_FS_TFTP=y
-CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index e66d25eeb7..f33e6a4989 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -95,6 +95,7 @@ pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-humm
 				imx6dl-hummingboard2.dtb.o imx6q-hummingboard2.dtb.o \
 				imx6q-h100.dtb.o
 pbl-dtb-$(CONFIG_MACH_STM32MP157C_DK2) += stm32mp157c-dk2.dtb.o
+pbl-dtb-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
 pbl-dtb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
 pbl-dtb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += imx6ul-pico-hobbit.dtb.o
 pbl-dtb-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += imx6ull-14x14-evk.dtb.o
diff --git a/arch/arm/dts/imx1-scb9328.dts b/arch/arm/dts/imx1-scb9328.dts
new file mode 100644
index 0000000000..aac82d0afd
--- /dev/null
+++ b/arch/arm/dts/imx1-scb9328.dts
@@ -0,0 +1,117 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2014 Alexander Shiyan <shc_work@mail.ru>
+ */
+
+/dts-v1/;
+#include <arm/imx1.dtsi>
+
+/ {
+	model = "Synertronix scb9328";
+	compatible = "stx,scb9328", "fsl,imx1";
+
+	chosen {
+		stdout-path = &uart1;
+
+		environment {
+			compatible = "barebox,environment";
+			device-path = &environment_nor;
+		};
+	};
+
+	memory@8000000 {
+		device_type = "memory";
+		reg = <0x08000000 0x01000000>;
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&weim {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_weim>;
+	status = "okay";
+
+	nor: nor@0,0 {
+		compatible = "cfi-flash";
+		reg = <0 0x00000000 0x01000000>;
+		bank-width = <2>;
+		fsl,weim-cs-timing = <0x000F2000 0x11110d01>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "boot";
+				reg = <0x00000000 0x00080000>;
+			};
+
+			environment_nor: partition@80000 {
+				label = "env";
+				reg = <0x00080000 0x00020000>;
+			};
+		};
+	};
+
+	eth: eth@5,600000 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_eth>;
+		compatible = "davicom,dm9000";
+		reg = <
+			5 0x0 0x2
+			5 0x4 0x2
+		>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+		fsl,weim-cs-timing = <0x00008400 0x00000d03>;
+		reg-io-width = <2>;
+	};
+};
+
+&iomuxc {
+	scb9328 {
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX1_PAD_UART1_TXD__UART1_TXD	0x0
+				MX1_PAD_UART1_RXD__UART1_RXD	0x0
+				MX1_PAD_UART1_CTS__UART1_CTS	0x0
+				MX1_PAD_UART1_RTS__UART1_RTS	0x0
+			>;
+		};
+
+		pinctrl_eth: ethgrp {
+			fsl,pins = <
+				MX1_PAD_SSI_RXFS__GPIO3_3	0x0
+			>;
+		};
+
+		pinctrl_weim: weimgrp {
+			fsl,pins = <
+				MX1_PAD_A0__A0			0x0
+				MX1_PAD_A16__A16		0x0
+				MX1_PAD_A17__A17		0x0
+				MX1_PAD_A18__A18		0x0
+				MX1_PAD_A19__A19		0x0
+				MX1_PAD_A20__A20		0x0
+				MX1_PAD_A21__A21		0x0
+				MX1_PAD_A22__A22		0x0
+				MX1_PAD_A23__A23		0x0
+				MX1_PAD_A24__A24		0x0
+				MX1_PAD_BCLK__BCLK		0x0
+				MX1_PAD_CS4__CS4		0x0
+				MX1_PAD_DTACK__DTACK		0x0
+				MX1_PAD_ECB__ECB		0x0
+				MX1_PAD_LBA__LBA		0x0
+			>;
+		};
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index b9374fe1db..553d11a793 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -16,7 +16,6 @@ config ARCH_TEXT_BASE
 	default 0x87f00000 if MACH_PCM037
 	default 0x87f00000 if MACH_MX31MOBOARD
 	default 0x87f00000 if MACH_PCM043
-	default 0x08f80000 if MACH_SCB9328
 	default 0xa7e00000 if MACH_NESO
 	default 0x97f00000 if MACH_FREESCALE_MX51_PDK
 	default 0x7ff00000 if MACH_FREESCALE_MX53_LOCO
@@ -205,6 +204,13 @@ config IMX_MULTI_BOARDS
 
 if IMX_MULTI_BOARDS
 
+config MACH_SCB9328
+	bool "Synertronixx scb9328"
+	select ARCH_IMX1
+	select HAS_DM9000
+	help
+	  Say Y here if you are using the Synertronixx scb9328 board
+
 config MACH_TX25
 	bool "Ka-Ro TX25"
 	select ARCH_IMX25
@@ -519,15 +525,6 @@ choice
 	prompt "Select Board"
 	depends on !IMX_MULTI_BOARDS
 
-comment "i.MX1 Boards"
-
-config MACH_SCB9328
-	bool "Synertronixx scb9328"
-	select ARCH_IMX1
-	select HAS_DM9000
-	help
-	  Say Y here if you are using the Synertronixx scb9328 board
-
 # ----------------------------------------------------------
 
 comment "i.MX21 Boards"
diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index 6d874357b7..2e47cdb491 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -18,7 +18,7 @@ config I2C_AT91
 
 config I2C_IMX
 	bool "MPC85xx/MPC5200/i.MX I2C Master driver"
-	depends on (ARCH_IMX && !ARCH_IMX1) || ARCH_MPC85XX || ARCH_MPC5200 || ARCH_LAYERSCAPE
+	depends on ARCH_IMX || ARCH_MPC85XX || ARCH_MPC5200 || ARCH_LAYERSCAPE
 	help
 	  If you say yes to this option, support will be included for many
 	  built-in I2C master controllers found in Freescale SoCs. This is true
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 42c194ba63..dcec181779 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -22,6 +22,11 @@ $(obj)/%.img.dek: $(obj)/$$(FILE_$$(@F))
 	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
 	$(call if_changed,shipped)
 
+# ----------------------- i.MX1 based boards ---------------------------
+pblb-$(CONFIG_MACH_SCB9328) += start_scb9328
+FILE_barebox-synertronix-scb9328.img = start_scb9328.pblb
+image-$(CONFIG_MACH_SCB9328) += barebox-synertronix-scb9328.img
+
 # ----------------------- i.MX25 based boards ---------------------------
 pblb-$(CONFIG_MACH_TX25) += start_imx25_karo_tx25
 FILE_barebox-karo-tx25.img = start_imx25_karo_tx25.pblb
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
