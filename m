Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x229.google.com ([2a00:1450:4013:c00::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VTfNw-0007fp-1x
 for barebox@lists.infradead.org; Tue, 08 Oct 2013 22:04:09 +0000
Received: by mail-ee0-f41.google.com with SMTP id d17so4372481eek.28
 for <barebox@lists.infradead.org>; Tue, 08 Oct 2013 15:03:51 -0700 (PDT)
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Wed,  9 Oct 2013 00:03:36 +0200
Message-Id: <1381269816-12830-2-git-send-email-lisovy@gmail.com>
In-Reply-To: <1381269816-12830-1-git-send-email-lisovy@gmail.com>
References: <1381269816-12830-1-git-send-email-lisovy@gmail.com>
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
Subject: [PATCH] i.MX53: vmx53: Add support for Voipac X53-DMM-668 (aka vmx53)
 module
To: barebox@lists.infradead.org
Cc: Rostislav Lisovy <lisovy@gmail.com>, pisa@cmp.felk.cvut.cz

Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>

 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/Makefile
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/board.c
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/env/config
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 38ef512..90c3100 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -36,6 +36,7 @@ obj-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	+= freescale-mx35-3-stack/
 obj-$(CONFIG_MACH_FREESCALE_MX51_PDK)		+= freescale-mx51-pdk/
 obj-$(CONFIG_MACH_FREESCALE_MX53_LOCO)		+= freescale-mx53-loco/
 obj-$(CONFIG_MACH_FREESCALE_MX53_SMD)		+= freescale-mx53-smd/
+obj-$(CONFIG_MACH_FREESCALE_MX53_VMX53)		+= freescale-mx53-vmx53/
 obj-$(CONFIG_MACH_GE863)			+= telit-evk-pro3/
 obj-$(CONFIG_MACH_GK802)			+= gk802/
 obj-$(CONFIG_MACH_GUF_CUPID)			+= guf-cupid/
diff --git a/arch/arm/boards/freescale-mx53-vmx53/Makefile b/arch/arm/boards/freescale-mx53-vmx53/Makefile
new file mode 100644
index 0000000..d44f697
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-vmx53/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o
+lwl-y += flash_header.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx53-vmx53/board.c b/arch/arm/boards/freescale-mx53-vmx53/board.c
new file mode 100644
index 0000000..60e176d
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-vmx53/board.c
@@ -0,0 +1,183 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
+ * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>
+ * Copyright (C) 2013 Rostislav Lisovy <lisovy@gmail.com>, PiKRON s.r.o.
+ *
+ * Board specific file for Voipac X53-DMM-668 module equipped
+ * with i.MX53 CPU
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <environment.h>
+#include <fcntl.h>
+#include <fec.h>
+#include <fs.h>
+#include <init.h>
+#include <nand.h>
+#include <net.h>
+#include <partition.h>
+#include <sizes.h>
+#include <gpio.h>
+
+#include <generated/mach-types.h>
+
+#include <mach/imx53-regs.h>
+#include <mach/iomux-mx53.h>
+#include <mach/devices-imx53.h>
+#include <mach/generic.h>
+#include <mach/imx-nand.h>
+#include <mach/iim.h>
+#include <mach/imx5.h>
+
+#include <asm/armlinux.h>
+#include <io.h>
+#include <asm/mmu.h>
+
+#ifdef CONFIG_DRIVER_NET_FEC_IMX
+static struct fec_platform_data fec_info = {
+	.xcv_type = PHY_INTERFACE_MODE_RMII,
+	.phy_addr = 0x1F,
+};
+#endif
+
+#ifdef CONFIG_NAND_IMX
+struct imx_nand_platform_data nand_info = {
+        .width          = 1,
+        .hw_ecc         = 1,
+        .flash_bbt      = 1,
+};
+#endif
+
+static iomux_v3_cfg_t vmx53_pads[] = {
+	/* UART1 */
+	MX53_PAD_PATA_DIOW__UART1_TXD_MUX,
+	MX53_PAD_PATA_DMACK__UART1_RXD_MUX,
+	MX53_PAD_PATA_IORDY__UART1_RTS,
+	MX53_PAD_PATA_RESET_B__UART1_CTS,
+
+	/* NAND */
+#ifdef CONFIG_NAND_IMX
+	MX53_PAD_NANDF_WE_B__EMI_NANDF_WE_B,
+	MX53_PAD_NANDF_RE_B__EMI_NANDF_RE_B,
+	MX53_PAD_NANDF_ALE__EMI_NANDF_ALE,
+	MX53_PAD_NANDF_CLE__EMI_NANDF_CLE,
+	MX53_PAD_NANDF_WP_B__EMI_NANDF_WP_B,
+	MX53_PAD_NANDF_RB0__EMI_NANDF_RB_0,
+	MX53_PAD_NANDF_CS0__EMI_NANDF_CS_0,
+	MX53_PAD_PATA_DATA0__EMI_NANDF_D_0,
+	MX53_PAD_PATA_DATA1__EMI_NANDF_D_1,
+	MX53_PAD_PATA_DATA2__EMI_NANDF_D_2,
+	MX53_PAD_PATA_DATA3__EMI_NANDF_D_3,
+	MX53_PAD_PATA_DATA4__EMI_NANDF_D_4,
+	MX53_PAD_PATA_DATA5__EMI_NANDF_D_5,
+	MX53_PAD_PATA_DATA6__EMI_NANDF_D_6,
+	MX53_PAD_PATA_DATA7__EMI_NANDF_D_7,
+#endif
+
+	/* FEC */
+#ifdef CONFIG_DRIVER_NET_FEC_IMX
+	MX53_PAD_FEC_MDC__FEC_MDC,
+	MX53_PAD_FEC_MDIO__FEC_MDIO,
+	MX53_PAD_FEC_REF_CLK__FEC_TX_CLK,
+	MX53_PAD_FEC_RX_ER__FEC_RX_ER,
+	MX53_PAD_FEC_CRS_DV__FEC_RX_DV,
+	MX53_PAD_FEC_RXD1__FEC_RDATA_1,
+	MX53_PAD_FEC_RXD0__FEC_RDATA_0,
+	MX53_PAD_FEC_TX_EN__FEC_TX_EN,
+	MX53_PAD_FEC_TXD1__FEC_TDATA_1,
+	MX53_PAD_FEC_TXD0__FEC_TDATA_0,
+	MX53_PAD_GPIO_11__GPIO4_1,	/* FEC_PEN */
+	MX53_PAD_GPIO_12__GPIO4_2,	/* FEC_RST */
+#endif
+};
+
+#ifdef CONFIG_DRIVER_NET_FEC_IMX
+
+#define VMX53_FEC_PEN				IMX_GPIO_NR(4, 1)
+#define VMX53_FEC_RST				IMX_GPIO_NR(4, 2)
+
+static int vmx53_fec_reset(void)
+{
+	int ret;
+
+	ret = gpio_request(VMX53_FEC_RST, "fec_rst");
+	if (ret) {
+		pr_err("Can not request gpio %d (fec_rst): %d\n", VMX53_FEC_RST, ret);
+		return ret;
+	}
+
+	ret = gpio_request(VMX53_FEC_PEN, "fec_pen");
+	if (ret) {
+		pr_err("Can not request gpio %d (fec_pen): %d\n", VMX53_FEC_PEN, ret);
+		return ret;
+	}
+
+	gpio_direction_output(VMX53_FEC_RST, 0);	/* assert resset */
+	gpio_direction_output(VMX53_FEC_PEN, 1);	/* enable 50MHz oscilator */
+	mdelay(1);
+	gpio_set_value(VMX53_FEC_RST, 1);		/* deassert reset */
+
+	return 0;
+}
+#endif
+
+static int vmx53_devices_init(void)
+{
+	if (IS_ENABLED(CONFIG_DRIVER_NET_FEC_IMX)) {
+		imx53_iim_register_fec_ethaddr();
+		imx53_add_fec(&fec_info);
+		if (vmx53_fec_reset())
+			pr_err("Unable to reset FEC\n");
+	}
+
+	if (IS_ENABLED(CONFIG_NAND_IMX)) {
+		imx53_add_nand(&nand_info);
+	}
+
+	armlinux_set_bootparams((void *)0x70000100);
+	armlinux_set_architecture(MACH_TYPE_VMX53);
+
+	if (IS_ENABLED(CONFIG_NAND_IMX)) {
+		devfs_add_partition("nand0", 0x00000, 0x80000, DEVFS_PARTITION_FIXED, "self_raw");
+		dev_add_bb_dev("self_raw", "self0");
+
+		devfs_add_partition("nand0", 0x80000, 0x80000, DEVFS_PARTITION_FIXED, "env_raw");
+		dev_add_bb_dev("env_raw", "env0");
+	}
+
+	return 0;
+}
+device_initcall(vmx53_devices_init);
+
+static int vmx53_part_init(void)
+{
+
+	return 0;
+}
+late_initcall(vmx53_part_init);
+
+static int vmx53_console_init(void)
+{
+	mxc_iomux_v3_setup_multiple_pads(vmx53_pads, ARRAY_SIZE(vmx53_pads));
+
+	imx53_init_lowlevel(800);
+
+	barebox_set_model("Voipac VMX53");
+	barebox_set_hostname("vmx53");
+
+	imx53_add_uart0();
+
+	return 0;
+}
+console_initcall(vmx53_console_init);
diff --git a/arch/arm/boards/freescale-mx53-vmx53/env/config b/arch/arm/boards/freescale-mx53-vmx53/env/config
new file mode 100644
index 0000000..3d90172
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-vmx53/env/config
@@ -0,0 +1,46 @@
+#!/bin/sh
+
+global.hostname=vmx53
+eth0.serverip=
+user=
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root-${global.hostname}.$rootfs_type
+
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
+
+if [ -n $user ]; then
+	kernelimage="$user"-"$kernelimage"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
+	rootfsimage="$user"-"$rootfsimage"
+else
+	nfsroot="$eth0.serverip:/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+bootargs="console=ttymxc0,115200"
+
+nand_parts="512k(barebox)ro,512k(bareboxenv),4M(kernel),-(rootfs)"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/freescale-mx53-vmx53/flash_header.c b/arch/arm/boards/freescale-mx53-vmx53/flash_header.c
new file mode 100644
index 0000000..a6864a6
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-vmx53/flash_header.c
@@ -0,0 +1,103 @@
+/*
+ * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>
+ * Copyright (C) 2013 Rostislav Lisovy <lisovy@gmail.com>, PiKRON s.r.o.
+ *
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
+ */
+
+#include <common.h>
+#include <asm/byteorder.h>
+#include <mach/imx-flash-header.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked __flash_header_start go(void)
+{
+	barebox_arm_imx_fcb_head();
+}
+
+struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
+	{ .addr = cpu_to_be32(0x53fa8554), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8558), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8560), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8564), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8568), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8570), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8574), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8578), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa857c), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8580), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8584), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8588), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8590), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8594), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa86f0), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa86f4), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa86fc), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8714), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8718), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa871c), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8720), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8724), .val = cpu_to_be32(0x04000000), },
+	{ .addr = cpu_to_be32(0x53fa8728), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa872c), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x63fd9088), .val = cpu_to_be32(0x35343535), },
+	{ .addr = cpu_to_be32(0x63fd9090), .val = cpu_to_be32(0x4d444c44), },
+	{ .addr = cpu_to_be32(0x63fd907c), .val = cpu_to_be32(0x01370138), },
+	{ .addr = cpu_to_be32(0x63fd9080), .val = cpu_to_be32(0x013b013c), },
+	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00011740), },
+	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0xc4190000), },
+	{ .addr = cpu_to_be32(0x63fd900c), .val = cpu_to_be32(0x9f5152e3), },
+	{ .addr = cpu_to_be32(0x63fd9010), .val = cpu_to_be32(0xb68e8a63), },
+	{ .addr = cpu_to_be32(0x63fd9014), .val = cpu_to_be32(0x01ff00db), },
+	{ .addr = cpu_to_be32(0x63fd902c), .val = cpu_to_be32(0x000026d2), },
+	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f0e21), },
+	{ .addr = cpu_to_be32(0x63fd9008), .val = cpu_to_be32(0x12273030), },
+	{ .addr = cpu_to_be32(0x63fd9004), .val = cpu_to_be32(0x0002002d), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008033), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028031), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x052080b0), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008040), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803a), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803b), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028039), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x05208138), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008048), },
+	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
+	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
+	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00022227), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
+};
+
+#define APP_DEST	0x70000000
+
+struct imx_flash_header_v2 __flash_header_section flash_header = {
+	.header.tag		= IVT_HEADER_TAG,
+	.header.length		= cpu_to_be16(32),
+	.header.version		= IVT_VERSION,
+
+	.entry			= APP_DEST + 0x1000,
+	.dcd_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, dcd),
+	.boot_data_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, boot_data),
+	.self			= APP_DEST + 0x400,
+
+	.boot_data.start	= APP_DEST,
+	.boot_data.size		= DCD_BAREBOX_SIZE,
+
+	.dcd.header.tag		= DCD_HEADER_TAG,
+	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
+	.dcd.header.version	= DCD_VERSION,
+
+	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
+	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),
+	.dcd.command.param	= DCD_COMMAND_WRITE_PARAM,
+};
diff --git a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
new file mode 100644
index 0000000..60c28f7
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
@@ -0,0 +1,9 @@
+#include <common.h>
+#include <mach/esdctl.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+	imx53_barebox_entry(0);
+}
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 973aa37..dd32fcd 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -20,6 +20,7 @@ config ARCH_TEXT_BASE
 	default 0x97f00000 if MACH_FREESCALE_MX51_PDK
 	default 0x7ff00000 if MACH_FREESCALE_MX53_LOCO
 	default 0x7ff00000 if MACH_FREESCALE_MX53_SMD
+	default 0x7ff00000 if MACH_FREESCALE_MX53_VMX53
 	default 0x87f00000 if MACH_GUF_CUPID
 	default 0x93d00000 if MACH_TX25
 	default 0x7ff00000 if MACH_TQMA53
@@ -426,6 +427,14 @@ config MACH_FREESCALE_MX53_SMD
 	bool "Freescale i.MX53 SMD"
 	select ARCH_IMX53
 
+config MACH_FREESCALE_MX53_VMX53
+	bool "Voipac i.MX53"
+	select ARCH_IMX53
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	help
+	  Say Y here if you are using the Voipac Technologies VMX53 module
+	  equipped with a Freescale i.MX53 Processor
+
 config MACH_TQMA53
 	bool "TQ i.MX53 TQMa53"
 	select ARCH_IMX53
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
