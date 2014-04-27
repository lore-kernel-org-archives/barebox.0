Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22c.google.com ([2a00:1450:4013:c00::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WeLR4-0007sS-5B
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 09:31:47 +0000
Received: by mail-ee0-f44.google.com with SMTP id e49so3887869eek.17
 for <barebox@lists.infradead.org>; Sun, 27 Apr 2014 02:31:23 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Sun, 27 Apr 2014 11:30:44 +0200
Message-Id: <1398591044-3616-12-git-send-email-b.galvani@gmail.com>
In-Reply-To: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
References: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 11/11] ARM: rockchip: add radxa-rock board
To: barebox@lists.infradead.org


Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
---
 arch/arm/boards/Makefile                    |    1 +
 arch/arm/boards/radxa-rock/Makefile         |    2 +
 arch/arm/boards/radxa-rock/board.c          |   78 +++++++++++++++++++++++++++
 arch/arm/boards/radxa-rock/env/config-board |    6 +++
 arch/arm/boards/radxa-rock/lowlevel.c       |   23 ++++++++
 arch/arm/configs/radxa-rock_defconfig       |   62 +++++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig              |    8 +++
 7 files changed, 180 insertions(+)
 create mode 100644 arch/arm/boards/radxa-rock/Makefile
 create mode 100644 arch/arm/boards/radxa-rock/board.c
 create mode 100644 arch/arm/boards/radxa-rock/env/config-board
 create mode 100644 arch/arm/boards/radxa-rock/lowlevel.c
 create mode 100644 arch/arm/configs/radxa-rock_defconfig

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 0c1497f..06e7f2c 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -74,6 +74,7 @@ obj-$(CONFIG_MACH_PM9263)			+= pm9263/
 obj-$(CONFIG_MACH_PM9G45)			+= pm9g45/
 obj-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x/
 obj-$(CONFIG_MACH_QIL_A9G20)			+= qil-a926x/
+obj-$(CONFIG_MACH_RADXA_ROCK)			+= radxa-rock/
 obj-$(CONFIG_MACH_REALQ7)			+= datamodul-edm-qmx6/
 obj-$(CONFIG_MACH_RPI)				+= raspberry-pi/
 obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
diff --git a/arch/arm/boards/radxa-rock/Makefile b/arch/arm/boards/radxa-rock/Makefile
new file mode 100644
index 0000000..79c8aec
--- /dev/null
+++ b/arch/arm/boards/radxa-rock/Makefile
@@ -0,0 +1,2 @@
+obj-$(CONFIG_MACH_RADXA_ROCK) += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/radxa-rock/board.c b/arch/arm/boards/radxa-rock/board.c
new file mode 100644
index 0000000..55b4d23
--- /dev/null
+++ b/arch/arm/boards/radxa-rock/board.c
@@ -0,0 +1,78 @@
+/*
+ * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <i2c/i2c.h>
+#include <i2c/i2c-gpio.h>
+#include <mach/rockchip-pll.h>
+#include <mfd/act8846.h>
+
+static struct i2c_board_info radxa_rock_i2c_devices[] = {
+	{
+		I2C_BOARD_INFO("act8846", 0x5a)
+	},
+};
+
+static struct i2c_gpio_platform_data i2c_gpio_pdata = {
+	.sda_pin		= 58,
+	.scl_pin		= 59,
+	.udelay			= 5,
+};
+
+static void radxa_rock_pmic_init(void)
+{
+	struct act8846 *pmic;
+
+	pmic = act8846_get();
+	if (pmic == NULL)
+		return;
+
+	/* Power on ethernet PHY */
+	act8846_set_bits(pmic, ACT8846_LDO9_CTRL, BIT(7), BIT(7));
+}
+
+static int setup_plls(void)
+{
+	/* Codec PLL frequency: 594 MHz */
+	rk3188_pll_set_parameters(RK3188_CPLL, 2, 198, 4);
+	/* General PLL frequency: 300 MHz */
+	rk3188_pll_set_parameters(RK3188_GPLL, 1, 50, 4);
+
+	return 0;
+}
+coredevice_initcall(setup_plls);
+
+static int devices_init(void)
+{
+	i2c_register_board_info(0, radxa_rock_i2c_devices,
+				ARRAY_SIZE(radxa_rock_i2c_devices));
+	add_generic_device_res("i2c-gpio", 0, NULL, 0, &i2c_gpio_pdata);
+
+	radxa_rock_pmic_init();
+
+	/* Set mac_pll divisor to 6 (50MHz output) */
+	writel((5 << 8) | (0x1f << 24), 0x20000098);
+
+	return 0;
+}
+device_initcall(devices_init);
+
+static int hostname_init(void)
+{
+	barebox_set_hostname("radxa-rock");
+
+	return 0;
+}
+core_initcall(hostname_init);
diff --git a/arch/arm/boards/radxa-rock/env/config-board b/arch/arm/boards/radxa-rock/env/config-board
new file mode 100644
index 0000000..d986e30
--- /dev/null
+++ b/arch/arm/boards/radxa-rock/env/config-board
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.linux.bootargs.base="console=ttyS2,115200"
\ No newline at end of file
diff --git a/arch/arm/boards/radxa-rock/lowlevel.c b/arch/arm/boards/radxa-rock/lowlevel.c
new file mode 100644
index 0000000..c68d229
--- /dev/null
+++ b/arch/arm/boards/radxa-rock/lowlevel.c
@@ -0,0 +1,23 @@
+/*
+ * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+void __naked barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+	barebox_arm_entry(0x60000000, SZ_2G, 0);
+}
diff --git a/arch/arm/configs/radxa-rock_defconfig b/arch/arm/configs/radxa-rock_defconfig
new file mode 100644
index 0000000..ab45cb9
--- /dev/null
+++ b/arch/arm/configs/radxa-rock_defconfig
@@ -0,0 +1,62 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="rk3188-radxarock"
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MALLOC_SIZE=0x4000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_MMU=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/radxa-rock/env"
+CONFIG_PROMPT="radxa-rock:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MM=y
+CONFIG_NET_CMD_IFUP=y
+CONFIG_CMD_BOOTM=y
+CONFIG_CMD_BOOTU=y
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_CLK=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_NET=y
+CONFIG_NET_PING=y
+CONFIG_NET_DHCP=y
+CONFIG_PINCTRL=y
+CONFIG_PINCTRL_ROCKCHIP=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_MFD_ACT8846=y
+CONFIG_DRIVER_NET_ARC_EMAC=y
+CONFIG_SMSC_PHY=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index dfaf146..9348651 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -4,4 +4,12 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x68000000
 
+choice
+	prompt "Board type"
+
+config MACH_RADXA_ROCK
+	bool "Radxa rock board"
+
+endchoice
+
 endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
