Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbVf5-0008Hk-Pd
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0003Ox-4M
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0004Dj-2x
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:13 +0200
Message-Id: <1412691738-11145-15-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
References: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 14/19] arch/MPC5xxx: add MPC5125 SoC support
To: barebox@lists.infradead.org

The MPC5125 shares most of the internals with the MPC52000 but differs in
many details. It also differs from the the MPC5121/MPC5123, so the latter
SoCs are not supported yet.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/include/asm/processor.h                 |  11 +
 arch/ppc/lib/Makefile                            |   2 +-
 arch/ppc/lib/nor-bbu.c                           | 141 ++++++++++
 arch/ppc/mach-mpc5xxx/cpu-mpc5125.c              | 174 ++++++++++++
 arch/ppc/mach-mpc5xxx/include/mach/bbu.h         |  18 ++
 arch/ppc/mach-mpc5xxx/include/mach/clocks.h      |   9 +
 arch/ppc/mach-mpc5xxx/include/mach/mpc512x.h     | 321 +++++++++++++++++++++++
 arch/ppc/mach-mpc5xxx/include/mach/mpc512x_fec.h |  46 ++++
 arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h     |   6 +-
 arch/ppc/mach-mpc5xxx/iomux-mpc5125.c            |  39 +++
 arch/ppc/mach-mpc5xxx/lpc-mpc5125.c              |  73 ++++++
 arch/ppc/mach-mpc5xxx/sdram-mpc5125.c            | 269 +++++++++++++++++++
 arch/ppc/mach-mpc5xxx/speed-mpc5125.c            | 209 +++++++++++++++
 arch/ppc/mach-mpc5xxx/start.S                    |  99 ++++++-
 arch/ppc/mach-mpc5xxx/sys-mpc5125.c              | 136 ++++++++++
 15 files changed, 1549 insertions(+), 4 deletions(-)
 create mode 100644 arch/ppc/lib/nor-bbu.c
 create mode 100644 arch/ppc/mach-mpc5xxx/cpu-mpc5125.c
 create mode 100644 arch/ppc/mach-mpc5xxx/include/mach/bbu.h
 create mode 100644 arch/ppc/mach-mpc5xxx/include/mach/mpc512x.h
 create mode 100644 arch/ppc/mach-mpc5xxx/include/mach/mpc512x_fec.h
 create mode 100644 arch/ppc/mach-mpc5xxx/iomux-mpc5125.c
 create mode 100644 arch/ppc/mach-mpc5xxx/lpc-mpc5125.c
 create mode 100644 arch/ppc/mach-mpc5xxx/sdram-mpc5125.c
 create mode 100644 arch/ppc/mach-mpc5xxx/speed-mpc5125.c
 create mode 100644 arch/ppc/mach-mpc5xxx/sys-mpc5125.c

diff --git a/arch/ppc/include/asm/processor.h b/arch/ppc/include/asm/processor.h
index e8a9c14..4d5a10f 100644
--- a/arch/ppc/include/asm/processor.h
+++ b/arch/ppc/include/asm/processor.h
@@ -236,6 +236,16 @@
 #define   HID1_ASTME    (1<<13)		/* Address bus streaming mode */
 #define   HID1_ABE      (1<<12)		/* Address broadcast enable */
 #define   HID1_MBDD     (1<<6)		/* optimized sync instruction */
+#define SPRN_HID2	0x3F3
+#define   HID2_LET      (1 << 27)
+#define   HID2_HBE      (1 << 18)
+#define   HID2_IWLCK_000 (0x0 << 13)	/* no ways locked */
+#define   HID2_IWLCK_001 (0x1 << 13)	/* way 0 locked */
+#define   HID2_IWLCK_010 (0x2 << 13)	/* way 0 through way 1 locked */
+#define   HID2_IWLCK_011 (0x3 << 13)	/* way 0 through way 2 locked */
+#define   HID2_IWLCK_100 (0x4 << 13)	/* way 0 through way 3 locked */
+#define   HID2_IWLCK_101 (0x5 << 13)	/* way 0 through way 4 locked */
+#define   HID2_IWLCK_110 (0x6 << 13)	/* way 0 through way 5 locked */
 #define SPRN_IABR	0x3F2	/* Instruction Address Breakpoint Register */
 #ifndef CONFIG_BOOKE
 #define SPRN_IAC1	0x3F4	/* Instruction Address Compare 1 */
@@ -509,6 +519,7 @@
 #define HASH2	SPRN_HASH2	/* Secondary Hash Address Register */
 #define HID0	SPRN_HID0	/* Hardware Implementation Register 0 */
 #define HID1	SPRN_HID1	/* Hardware Implementation Register 1 */
+#define HID2	SPRN_HID2	/* Hardware Implementation Register 2 */
 #define IABR	SPRN_IABR      	/* Instruction Address Breakpoint Register */
 #define IAC1	SPRN_IAC1	/* Instruction Address Register 1 */
 #define IAC2	SPRN_IAC2	/* Instruction Address Register 2 */
diff --git a/arch/ppc/lib/Makefile b/arch/ppc/lib/Makefile
index ba2f078..99d6225 100644
--- a/arch/ppc/lib/Makefile
+++ b/arch/ppc/lib/Makefile
@@ -9,4 +9,4 @@ obj-$(CONFIG_CMD_BOOTM) += ppclinux.o
 obj-$(CONFIG_MODULES) += module.o
 obj-y += crtsavres.o
 obj-y += reloc.o
-
+obj-$(CONFIG_BAREBOX_UPDATE) += nor-bbu.o
diff --git a/arch/ppc/lib/nor-bbu.c b/arch/ppc/lib/nor-bbu.c
new file mode 100644
index 0000000..3bdd214
--- /dev/null
+++ b/arch/ppc/lib/nor-bbu.c
@@ -0,0 +1,141 @@
+/*
+ * nor-bbu.c - PowerPC generic functions to store barebox into a NOR flash
+ * Copyright (C) 2014 Juergen Borleis, Pengutronix
+ *
+ * Based on imx-bbu-internal.c
+ * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <bbu.h>
+#include <mach/bbu.h>
+#include <fs.h>
+#include <linux/stat.h>
+#include <fcntl.h>
+
+#define BBU_FLAG_ERASE			(1 << 0)
+
+/* Actually write an image to NOR target device */
+static int ppc_bbu_write_device(struct bbu_handler *handler,
+		struct bbu_data *data, void *buf, int image_len)
+{
+	int fd, ret;
+
+	fd = open(data->devicefile, O_RDWR | O_CREAT);
+	if (fd < 0)
+		return fd;
+
+	if (handler->flags & BBU_FLAG_ERASE) {
+		debug("%s: unprotecting %s from 0 to 0x%08x\n", __func__,
+				data->devicefile, image_len);
+		ret = protect(fd, image_len, 0, 0);
+		if (ret && ret != -ENOSYS) {
+			printf("unprotecting %s failed with %s\n",
+				data->devicefile, strerror(-ret));
+			goto err_close;
+		}
+
+		debug("%s: erasing %s from 0 to 0x%08x\n", __func__,
+				data->devicefile, image_len);
+		ret = erase(fd, image_len, 0);
+		if (ret) {
+			printf("erasing %s failed with %s\n", data->devicefile,
+					strerror(-ret));
+			goto err_close;
+		}
+	}
+
+	ret = write(fd, buf, image_len);
+	if (ret < 0)
+		goto err_close;
+
+	if (handler->flags & BBU_FLAG_ERASE) {
+		debug("%s: protecting %s from 0 to 0x%08x\n", __func__,
+				data->devicefile, image_len);
+		ret = protect(fd, image_len, 0, 1);
+		if (ret && ret != -ENOSYS) {
+			printf("protecting %s failed with %s\n",
+				data->devicefile, strerror(-ret));
+		}
+	}
+
+	ret = 0;
+
+err_close:
+	close(fd);
+
+	return ret;
+}
+
+static int ppc_bbu_check_prereq(struct bbu_data *data)
+{
+	struct stat s;
+	int ret;
+
+	/*
+	 * Check if the given image is a valid one
+	 * FIXME: currently we have no real chance to detect if the image
+	 * we got is a valid image.
+	 */
+
+	ret = stat(data->devicefile, &s);
+	if (ret != 0) {
+		printf("Cannot stat '%s'. Failed with %s\n", data->devicefile,
+					strerror(-ret));
+		return ret;
+	}
+
+	if (data->len > s.st_size) {
+		printf("'%s' too large for '%s'\n", data->imagefile,
+				data->devicefile);
+		return -EINVAL;
+	}
+
+	ret = bbu_confirm(data);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+/* write a regular barebox image into an externally connected NOR flash */
+static int ppc_bbu_nor_update(struct bbu_handler *handler, struct bbu_data *data)
+{
+	int ret;
+
+	ret = ppc_bbu_check_prereq(data);
+	if (ret)
+		return ret;
+
+	return ppc_bbu_write_device(handler, data, data->image, data->len);
+}
+
+int ppc_bbu_nor_register_handler(const char *name, const char *devicefile,
+		unsigned long flags)
+{
+	struct bbu_handler *bbu;
+	int ret;
+
+	bbu = xzalloc(sizeof(*bbu));
+	bbu->devicefile = devicefile;
+	bbu->name = name;
+	bbu->flags = flags | BBU_FLAG_ERASE;
+	bbu->handler = ppc_bbu_nor_update;
+
+	ret = bbu_register_handler(bbu);
+	if (ret)
+		free(bbu);
+
+	return ret;
+}
diff --git a/arch/ppc/mach-mpc5xxx/cpu-mpc5125.c b/arch/ppc/mach-mpc5xxx/cpu-mpc5125.c
new file mode 100644
index 0000000..512e2a5
--- /dev/null
+++ b/arch/ppc/mach-mpc5xxx/cpu-mpc5125.c
@@ -0,0 +1,174 @@
+/*
+ * Copyright (C) 2014 Juergen Borleis, Pengutronix
+ *
+ * This code bases partially on:
+ * (C) Copyright 2007-2010 DENX Software Engineering
+ * Copyright (C) 2004-2006 Freescale Semiconductor, Inc.
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
+ */
+
+#include <common.h>
+#include <init.h>
+#include <types.h>
+#include <driver.h>
+#include <reset_source.h>
+#include <asm/processor.h>
+#include <mach/mpc5xxx.h>
+#include <asm/io.h>
+
+/* Reset Module */
+struct resetc {
+	u32 rcwl;
+	u32 rcwh;
+	u8 res0[8];
+	u32 rsr;
+	u32 rmr;
+	u32 rpr;
+	u32 rcr;
+	u32 rcer;
+};
+
+/* RSR - Reset Status Register */
+#define MPC512X_RSR_SWSR (1 << 13) /* software soft reset */
+#define MPC512X_RSR_SWHR (1 << 12) /* software hard reset */
+#define MPC512X_RSR_JHRS (1 << 9) /* jtag hreset */
+#define MPC512X_RSR_JSRS (1 << 8) /* jtag sreset status */
+#define MPC512X_RSR_CSHR (1 << 4) /* checkstop reset status */
+#define MPC512X_RSR_SWRS (1 << 3) /* software watchdog reset status */
+#define MPC512X_RSR_BMRS (1 << 2) /* bus monitop reset status */
+#define MPC512X_RSR_SRS (1 << 1) /* soft reset status */
+#define MPC512X_RSR_HRS (1 << 0) /* hard reset status */
+
+/* RMR - Reset Mode Register */
+#define MPC512X_RMR_CSRE (1 << 0) /* checkstop reset enable */
+
+/* RCR - Reset Control Register */
+#define MPC512X_RCR_SWHR (1 << 1) /* software hard reset */
+#define MPC512X_RCR_SWSR (1 << 0) /* software soft reset */
+
+/* RCER - Reset Control Enable Register */
+#define MPC512X_RCER_CRE (1 << 0) /* software hard reset */
+
+static struct resetc * const resetc = (struct resetc *)MPC512X_RESET;
+
+/* called from assembler in start.S */
+int cpu_init(void)
+{
+	/* do it very early, because its required for any delay() */
+	mpc5125_enable_time_base_counter();
+
+	/* RMR - Reset Mode Register - enable checkstop reset */
+	out_be32(&resetc->rmr, MPC512X_RMR_CSRE);
+
+	/* system performance tweaking */
+#ifdef CONFIG_SYS_ACR_PIPE_DEP
+	/* Arbiter pipeline depth */
+	out_be32(&im->arbiter.acr,
+		(im->arbiter.acr & ~ACR_PIPE_DEP) |
+		(CONFIG_SYS_ACR_PIPE_DEP << ACR_PIPE_DEP_SHIFT)
+	);
+#endif
+
+#ifdef CONFIG_SYS_ACR_RPTCNT
+	/* Arbiter repeat count */
+	out_be32(im->arbiter.acr,
+		(im->arbiter.acr & ~(ACR_RPTCNT)) |
+		(CONFIG_SYS_ACR_RPTCNT << ACR_RPTCNT_SHIFT)
+	);
+#endif
+
+#if 0
+	/* Set IPS-CSB divider: IPS = 1/2 CSB */
+	ips_div = in_be32(&im->clk.scfr[0]);
+	ips_div &= ~(SCFR1_IPS_DIV_MASK);
+	ips_div |= SCFR1_IPS_DIV << SCFR1_IPS_DIV_SHIFT;
+	out_be32(&im->clk.scfr[0], ips_div);
+#endif
+#ifdef SCFR1_LPC_DIV
+	clrsetbits_be32(&im->clk.scfr[0], SCFR1_LPC_DIV_MASK,
+			SCFR1_LPC_DIV << SCFR1_LPC_DIV_SHIFT);
+#endif
+	return 0;
+}
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	unsigned msr;
+
+	/* Interrupts and MMU off */
+	__asm__ __volatile__ ("mfmsr    %0":"=r" (msr):);
+
+	msr &= ~( MSR_EE | MSR_IR | MSR_DR);
+	__asm__ __volatile__ ("mtmsr    %0"::"r" (msr));
+
+	/* Enable Reset Control Reg - "RSTE" is the magic word that let us go */
+	out_be32(&resetc->rpr, 0x52535445);
+
+	/* Verify Reset Control Reg is enabled */
+	while (!(in_be32(&resetc->rcer) & MPC512X_RCER_CRE))
+		;
+
+	udelay(200);
+
+	/* Perform reset */
+	out_be32(&resetc->rcr, MPC512X_RCR_SWHR);
+
+	while(1)
+		;
+}
+
+/*
+ * the watchdog is always active after reset. To control it we can
+ * write to its 'control register' - but only once. So, after disabling it
+ * there is no way to re-enable it without a hard reset.
+ * If the user don't want to use the watchdog feature, disable it here
+ * forever. If the user wants to use it, start to pet it by registering
+ * the corresponding driver.
+ * The default timeout value after reset is about 130 seconds.
+ * This gives us the time to handle the watchdog at a reasonable
+ * point of initialization time.
+ */
+static int mpc5125_handle_watchdog(void)
+{
+	if (IS_ENABLED(CONFIG_WATCHDOG_MPC5125))
+		add_generic_device("mpc5125wd", 0, NULL, MPC512X_WDT,
+						0x10, IORESOURCE_MEM, NULL);
+	else
+		out_be32((void *)(MPC512X_WDT + 4), 0); /* disable it */
+
+	return 0;
+}
+device_initcall(mpc5125_handle_watchdog);
+
+/* detect the reset source after the framework is up and running */
+static int mpc5125_keep_reset_cause(void)
+{
+	u32 reg;
+
+	reg = in_be32(&resetc->rsr);
+	if (IS_ENABLED(CONFIG_RESET_SOURCE)) {
+		if (reg & MPC512X_RSR_HRS)
+			reset_source_set(RESET_POR);
+		else if (reg & MPC512X_RSR_SRS)
+			reset_source_set(RESET_RST);
+		else if (reg & MPC512X_RSR_SWRS)
+			reset_source_set(RESET_WDG);
+		else if (reg & (MPC512X_RSR_JSRS | MPC512X_RSR_JHRS))
+			reset_source_set(RESET_JTAG);
+		else
+			reset_source_set(RESET_UKWN);
+	}
+	out_be32(&resetc->rsr, reg);
+
+	return 0;
+}
+device_initcall(mpc5125_keep_reset_cause);
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/bbu.h b/arch/ppc/mach-mpc5xxx/include/mach/bbu.h
new file mode 100644
index 0000000..6727d42
--- /dev/null
+++ b/arch/ppc/mach-mpc5xxx/include/mach/bbu.h
@@ -0,0 +1,18 @@
+#ifndef __MACH_BBU_H
+#define __MACH_BBU_H
+
+#ifdef CONFIG_BAREBOX_UPDATE
+
+int ppc_bbu_nor_register_handler(const char *name, const char *devicefile,
+					unsigned long flags);
+
+#else /* CONFIG_BAREBOX_UPDATE */
+
+static inline int ppc_bbu_nor_register_handler(const char *name,
+				const char *devicefile, unsigned long flags)
+{
+	return -ENOSYS;
+}
+#endif
+
+#endif /* __MACH_BBU_H */
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/clocks.h b/arch/ppc/mach-mpc5xxx/include/mach/clocks.h
index 717a85b..87fdbc6 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/clocks.h
+++ b/arch/ppc/mach-mpc5xxx/include/mach/clocks.h
@@ -4,6 +4,7 @@
 /* common clocks */
 unsigned long get_cpu_clock(void);
 unsigned long get_timebase_clock(void);
+void mpc5xxx_enable_psc_clock(unsigned idx);
 
 #if defined(CONFIG_MGT5100) || defined(CONFIG_MPC5200)
 unsigned long get_bus_clock(void);
@@ -11,4 +12,12 @@ unsigned long get_ipb_clock(void);
 unsigned long get_pci_clock(void);
 #endif
 
+#ifdef CONFIG_SOC_MPC5125
+unsigned long get_ips_clock(void);
+unsigned long get_psc_clock(unsigned);
+void mpc5125_enable_psc_fifo_clock(void);
+void mpc5xxx_enable_fec_clock(unsigned idx);
+unsigned long mpc5125_get_psc_clock(unsigned idx);
+#endif
+
 #endif /* __ASM_ARCH_CLOCKS_H */
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/mpc512x.h b/arch/ppc/mach-mpc5xxx/include/mach/mpc512x.h
new file mode 100644
index 0000000..ed60f2a
--- /dev/null
+++ b/arch/ppc/mach-mpc5xxx/include/mach/mpc512x.h
@@ -0,0 +1,321 @@
+/*
+ * Copyright (C) 2014 Juergen Borleis, Pengutronix
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
+ */
+
+#ifndef __MPC512X_H__
+#define __MPC512X_H__
+
+#include <asm/types.h>
+#include <sizes.h>
+
+/* reset default */
+#define DEFAULT_MBAR	0xff400000
+
+/*
+ * Memory map after reset:
+ *
+ * 0x00000000 - 0x007fffff LPB-ROM (when BMS = 0)
+ * 0x10000000 - 0x13ffffff system main memory area
+ * 0x30000000 - 0x3001ffff SRAM
+ * 0x40000000 - 0x400fffff NFC
+ * 0xff400000 - 0xff4fffff MBAR + IO area
+ *
+ * Memory map after _start in start.S run:
+ *
+ * 0x00000000 ... 0x7fffffff  system main memory area
+ * 0xf0000000 ... 0xf00fffff  MBAR + IO area (1 MiB)
+ * 0xf0500000 ... 0xff53ffff  SRAM (256 kiB)
+ * 0xf0600000 ... 0xff6fffff  NFC (1 MiB)
+ * 0xfe000000 ... 0xffffffff  ROM (32 MiB)
+ */
+
+#define CFG_MBAR	0xf0000000
+#define CFG_ROM_LOC	0xfe000000
+#define CFG_ROM_SZ	SZ_8M
+#define CFG_SRAM_LOC	0xf0500000
+# define MPC5XXX_SRAM	CFG_SRAM_LOC
+#define CFG_SRAM_SZ	SZ_32K
+# define MPC5XXX_SRAM_SIZE CFG_SRAM_SZ
+#define CFG_NFC_LOC	0xf0600000
+
+#define DEFAULT_DRAM_BASE 0x00000000
+
+/* base address is IMMBAR */
+#define MPC512X_RESET	(CFG_MBAR + 0x00E00)
+#define MPC512X_CLKM	(CFG_MBAR + 0x00f00)
+#define MPC512X_WDT	(CFG_MBAR + 0x00900)
+#define MPC512X_FEC1	(CFG_MBAR + 0x02800)
+#define MPC512X_FEC2	(CFG_MBAR + 0x04800)
+#define MPC512X_DRAMC	(CFG_MBAR + 0x09000)
+#define MPC512X_IOC	(CFG_MBAR + 0x0A000)
+#define MPC512X_LPC	(CFG_MBAR + 0x10000)
+#define MPC512X_PSC0	(CFG_MBAR + 0x11000)
+#define MPC512X_PSC1	(CFG_MBAR + 0x11100)
+#define MPC512X_PSC2	(CFG_MBAR + 0x11200)
+#define MPC512X_PSC3	(CFG_MBAR + 0x11300)
+#define MPC512X_PSC4	(CFG_MBAR + 0x11400)
+#define MPC512X_PSC5	(CFG_MBAR + 0x11500)
+#define MPC512X_PSC6	(CFG_MBAR + 0x11600)
+#define MPC512X_PSC7	(CFG_MBAR + 0x11700)
+#define MPC512X_PSC8	(CFG_MBAR + 0x11800)
+#define MPC512X_PSC9	(CFG_MBAR + 0x11900)
+#define MPC512X_FIFOC	(CFG_MBAR + 0x11f00)
+
+/* System reset offset (PowerPC standard) */
+#define EXC_OFF_SYS_RESET	0x0100
+#define _START_OFFSET		EXC_OFF_SYS_RESET
+
+/* some register offsets from the "Local Access Register Memory Map" */
+#define LPBAW_OFFSET		0x20
+#define LPCS0AW_OFFSET		0x24
+#define SRAMBAR_OFFSET		0xc4
+#define NFSCBAR_OFFSET		0xc8
+#define SWCRR_OFFSET		0x0904
+#define CS_CR_OFFSET		0x20
+
+#ifndef CFG_HID0_INIT
+# define CFG_HID0_INIT		HID0_ICE | HID0_ICFI
+#endif
+#ifndef CFG_HID0_FINAL
+# define CFG_HID0_FINAL		HID0_ICE
+#endif
+#ifndef CFG_SYS_HID2
+# define CFG_SYS_HID2		HID2_HBE
+#endif
+
+#ifndef __ASSEMBLY__
+
+void mpc5125_setup_access_window(unsigned cs, unsigned start, unsigned size);
+void mpc5125_setup_ram_memory_window(unsigned base, unsigned size);
+unsigned mpc5xxx_get_sdram_size(void);
+void mpc5125_enable_time_base_counter(void);
+
+void mpc5125_setup_ram_memory_window(unsigned base, unsigned size);
+
+enum mpc5125_pinmux_id {
+	io_control_mem = 0,
+	io_control_lpc_clk = 4,
+	io_control_lpc_oe,
+	io_control_lpc_rw,
+	io_control_lpc_cs0,
+	io_control_lpc_ack,
+	io_control_lpc_ax03 = 9,
+	io_control_emb_ax02,
+	io_control_emb_ax01,
+	io_control_emb_ax00 = 12,
+	io_control_emb_ad31 = 13,
+	io_control_emb_ad30,
+	io_control_emb_ad29,
+	io_control_emb_ad28,
+	io_control_emb_ad27,
+	io_control_emb_ad26,
+	io_control_emb_ad25,
+	io_control_emb_ad24,
+	io_control_emb_ad23,
+	io_control_emb_ad22,
+	io_control_emb_ad21,
+	io_control_emb_ad20,
+	io_control_emb_ad19,
+	io_control_emb_ad18,
+	io_control_emb_ad17,
+	io_control_emb_ad16,
+	io_control_emb_ad15,
+	io_control_emb_ad14,
+	io_control_emb_ad13,
+	io_control_emb_ad12,
+	io_control_emb_ad11,
+	io_control_emb_ad10 = 34,
+	io_control_emb_ad9,
+	io_control_emb_ad8,
+	io_control_emb_ad7,
+	io_control_emb_ad6,
+	io_control_emb_ad5,
+	io_control_emb_ad4,
+	io_control_emb_ad3,
+	io_control_emb_ad2,
+	io_control_emb_ad1,
+	io_control_emb_ad0 = 44,
+	io_control_nfc_ce0 = 45,
+	io_control_nfc_rb,
+	io_control_dui_clk,
+	io_control_dui_de,
+	io_control_dui_hsync = 49,
+	io_control_dui_vsync,
+	io_control_dui_ld0 = 51,
+	io_control_dui_ld1,
+	io_control_dui_ld2,
+	io_control_dui_ld3,
+	io_control_dui_ld4,
+	io_control_dui_ld5,
+	io_control_dui_ld6,
+	io_control_dui_ld7,
+	io_control_dui_ld8,
+	io_control_dui_ld9,
+	io_control_dui_ld10,
+	io_control_dui_ld11,
+	io_control_dui_ld12,
+	io_control_dui_ld13,
+	io_control_dui_ld14,
+	io_control_dui_ld15,
+	io_control_dui_ld16,
+	io_control_dui_ld17,
+	io_control_dui_ld18,
+	io_control_dui_ld19,
+	io_control_dui_ld20,
+	io_control_dui_ld21,
+	io_control_dui_ld22,
+	io_control_dui_ld23 = 74,
+	io_control_i2c2_scl = 75,
+	io_control_i2c2_sda = 76,
+	io_control_can1_tx = 77,
+	io_control_can2_tx = 78,
+	io_control_i2c1_scl = 79,
+	io_control_i2c1_sda = 80,
+/* No pin control register for can1_rx and can2_rx */
+	io_control_fec1_txd2 = 81,
+	io_control_fec1_txd3,
+	io_control_fec1_rxd2,
+	io_control_fec1_rxd3,
+	io_control_fec1_crs,
+	io_control_fec1_txerr,
+	io_control_fec1_rxd1,
+	io_control_fec1_txd1,
+	io_control_fec1_mdc,
+	io_control_fec1_rxerr,
+	io_control_fec1_mdio,
+	io_control_fec1_rxd0,
+	io_control_fec1_txd0,
+	io_control_fec1_txclk,
+	io_control_fec1_rxclk,
+	io_control_fec1_rxdv,
+	io_control_fec1_txen,
+	io_control_fec1_col,
+	io_control_usb1_data0 = 99,
+	io_control_usb1_data1,
+	io_control_usb1_data2,
+	io_control_usb1_data3,
+	io_control_usb1_data4,
+	io_control_usb1_data5,
+	io_control_usb1_data6,
+	io_control_usb1_data7,
+	io_control_usb1_stop,
+	io_control_usb1_clk,
+	io_control_usb1_next,
+	io_control_usb1_dir,
+	io_control_sdhc1_clk = 111,
+	io_control_sdhc1_cmd,
+	io_control_sdhc1_d0,
+	io_control_sdhc1_d1,
+	io_control_sdhc1_d2,
+	io_control_sdhc1_d3,
+	io_control_psc_mclk_in,
+	io_control_psc0_0 = 118,
+	io_control_psc0_1,
+	io_control_psc0_2,
+	io_control_psc0_3,
+	io_control_psc0_4,
+	io_control_psc1_0,
+	io_control_psc1_1,
+	io_control_psc1_2,
+	io_control_psc1_3,
+	io_control_psc1_4,
+	io_control_j1850_tx,
+	io_control_j1850_rx,
+};
+
+#define MPC5125_ALTF_0 (0x0 << 5)
+#define MPC5125_ALTF_1 (0x1 << 5)
+#define MPC5125_ALTF_2 (0x2 << 5)
+#define MPC5125_ALTF_3 (0x3 << 5)
+#define MPC5125_PULL_UP (1 << 4)
+#define MPC5125_PULL_DOWN (0 << 4)
+#define MPC5125_PUD_ENA (1 << 3)
+#define MPC5125_ST_ENA (1 << 2)
+
+/*
+ * from the MPC5125 revision 4 (09/2011) datasheet
+ * Slew rate definition for general IOs:
+ *  - configuration 0: 140/183 ns
+ *  - configuration 1: 19/24 ns
+ *  - configuration 2: 9.8/12 ns
+ *  - configuration 3: 1.4/1.6 ns
+ */
+#define MPC5125_SLEW_RATE(x) ((x) & 0x03)
+
+void mpc5125_mux_pin(enum mpc5125_pinmux_id idx, unsigned char mux);
+
+/* SDRAM commands */
+#define DRAM_CMD_NOP		0x01380000
+#define DRAM_CMD_PCHG_ALL	0x01100400
+#define DRAM_CMD_EM2		0x01020000
+#define DRAM_CMD_EM3		0x01030000
+#define DRAM_CMD_EN_DLL		0x01010000
+#define DRAM_CMD_RFSH		0x01080000
+
+#define DDR_COMMAND_CMD_REQ	(1 << 24)
+#define DDR_COMMAND_CMD_MSR	(0 << 16)
+#define DDR_COMMAND_CMD_EMR1	(1 << 16)
+#define DDR_COMMAND_CMD_EMR2	(2 << 16)
+#define DDR_COMMAND_CMD_EMR3	(3 << 16)
+#define DDR_COMMAND_RST_DLL	(1 << 8)
+
+struct sdram_prio {
+	unsigned prioman_config1;
+	unsigned prioman_config2;
+	unsigned hiprio_config;
+	unsigned lut_table0_main_upper;
+	unsigned lut_table0_main_lower;
+	unsigned lut_table1_main_upper;
+	unsigned lut_table1_main_lower;
+	unsigned lut_table2_main_upper;
+	unsigned lut_table2_main_lower;
+	unsigned lut_table3_main_upper;
+	unsigned lut_table3_main_lower;
+	unsigned lut_table4_main_upper;
+	unsigned lut_table4_main_lower;
+	unsigned lut_table0_alt_upper;
+	unsigned lut_table0_alt_lower;
+	unsigned lut_table1_alt_upper;
+	unsigned lut_table1_alt_lower;
+	unsigned lut_table2_alt_upper;
+	unsigned lut_table2_alt_lower;
+	unsigned lut_table3_alt_upper;
+	unsigned lut_table3_alt_lower;
+	unsigned lut_table4_alt_upper;
+	unsigned lut_table4_alt_lower;
+};
+
+struct sdram_conf {
+	struct sdram_prio prio;
+	unsigned mux_ddr;
+	unsigned sys_cfg;
+	unsigned tim_cfg0, tim_cfg1, tim_cfg2;
+	unsigned size;
+	const unsigned *cmds;
+};
+
+void mpc5125_init_sdram(const struct sdram_conf *init_sequence);
+
+struct lpc_config {
+	unsigned cs_ale_timing;
+	unsigned cs_burst;
+	unsigned cs_dead_cyle;
+	unsigned cs_hold_cycle;
+};
+
+void mpc5125_configure_lpc(const struct lpc_config *c);
+void mpc5125_setup_cs(unsigned, unsigned, unsigned, unsigned);
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __MPC512X_H__ */
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/mpc512x_fec.h b/arch/ppc/mach-mpc5xxx/include/mach/mpc512x_fec.h
new file mode 100644
index 0000000..ddac8e5
--- /dev/null
+++ b/arch/ppc/mach-mpc5xxx/include/mach/mpc512x_fec.h
@@ -0,0 +1,46 @@
+#include <linux/types.h>
+
+/* FEC */
+struct fec {
+	u32 fec_id; /* FEC_ID register */
+	u32 ievent; /* Interrupt event register */
+	u32 imask; /* Interrupt mask register */
+	u32 reserved_01;
+	u32 r_des_active; /* Receive ring updated flag */
+	u32 x_des_active; /* Transmit ring updated flag */
+	u32 reserved_02[3];
+	u32 ecntrl; /* Ethernet control register */
+	u32 reserved_03[6];
+	u32 mii_data; /* MII data register */
+	u32 mii_speed; /* MII speed register */
+	u32 reserved_04[7];
+	u32 mib_control; /* MIB control/status register */
+	u32 reserved_05[7];
+	u32 r_cntrl; /* Receive control register */
+	u32 r_hash; /* Receive hash */
+	u32 reserved_06[14];
+	u32 x_cntrl; /* Transmit control register */
+	u32 reserved_07[7];
+	u32 paddr1; /* Physical address low */
+	u32 paddr2; /* Physical address high + type field */
+	u32 op_pause; /* Opcode + pause duration */
+	u32 reserved_08[10];
+	u32 iaddr1; /* Upper 32 bits of individual hash table */
+	u32 iaddr2; /* Lower 32 bits of individual hash table */
+	u32 gaddr1; /* Upper 32 bits of group hash table */
+	u32 gaddr2; /* Lower 32 bits of group hash table */
+	u32 reserved_09[7];
+	u32 x_wmrk; /* Transmit FIFO watermark */
+	u32 reserved_10;
+	u32 r_bound; /* End of RAM */
+	u32 r_fstart; /* Receive FIFO start address */
+	u32 reserved_11[11];
+	u32 r_des_start; /* Beginning of receive descriptor ring */
+	u32 x_des_start; /* Pointer to beginning of transmit descriptor ring */
+	u32 r_buff_size; /* Receive buffer size */
+	u32 reserved_12[26];
+	u32 dma_control; /* DMA control for IP bus, AMBA IF + DMA revision */
+	u32 reserved_13[2];
+	u32 mib[128]; /* MIB Block Counters */
+	u32 fifo[256]; /*  used by FEC, can only be accessed by DMA */
+};
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
index 2455484..f5f0a75 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
+++ b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
@@ -1,8 +1,10 @@
-#ifndef __ASMPPC_MPC5XXX_H
-#define __ASMPPC_MPC5XXX_H
+#ifndef __MACH_MPC5XXX_H
+#define __MACH_MPC5XXX_H
 
 #if defined(CONFIG_MPC5200) || defined(CONFIG_MGT5100)
 # include <mach/mpc5200.h>
 #else
 # error "Undefined Core CPU"
 #endif
+
+#endif /* __MACH_MPC5XXX_H */
diff --git a/arch/ppc/mach-mpc5xxx/iomux-mpc5125.c b/arch/ppc/mach-mpc5xxx/iomux-mpc5125.c
new file mode 100644
index 0000000..a52010e
--- /dev/null
+++ b/arch/ppc/mach-mpc5xxx/iomux-mpc5125.c
@@ -0,0 +1,39 @@
+/*
+ * Copyright (C) 2014 Juergen Borleis, Pengutronix
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
+ */
+
+#include <common.h>
+#include <init.h>
+#include <asm/io.h>
+#include <mach/mpc5xxx.h>
+
+static u8 * const ioc = (u8 * )MPC512X_IOC;
+
+void mpc5125_mux_pin(enum mpc5125_pinmux_id idx, unsigned char mux)
+{
+	out_8(&ioc[idx], mux);
+}
+
+#define IOC_GB_OBE (1 << 0)
+
+static int mpc5125_mux_init(void)
+{
+	/*
+	 * Note: all default muxed pins/features which are outputs are
+	 * *tristated* after reset. Enable them right now
+	 */
+	out_8(&ioc[1], IOC_GB_OBE);
+
+	return 0;
+}
+coredevice_initcall(mpc5125_mux_init);
diff --git a/arch/ppc/mach-mpc5xxx/lpc-mpc5125.c b/arch/ppc/mach-mpc5xxx/lpc-mpc5125.c
new file mode 100644
index 0000000..0e602d5
--- /dev/null
+++ b/arch/ppc/mach-mpc5xxx/lpc-mpc5125.c
@@ -0,0 +1,73 @@
+/*
+ * Copyright (C) 2014 Juergen Borleis, Pengutronix
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
+ */
+
+#include <common.h>
+#include <types.h>
+#include <mach/mpc5xxx.h>
+#include <asm/io.h>
+
+/* LPC */
+struct lpc {
+	u32	cs_cfg[8]; /* Chip Select N Configuration Registers
+				   No dedicated entry for CS Boot as == CS0 */
+	u32	cs_cr; /* Chip Select Control Register */
+	u32	cs_sr; /* Chip Select Status Register */
+	u32	cs_bcr; /* Chip Select Burst Control Register */
+	u32	cs_dccr; /* Chip Select Deadcycle Control Register */
+	u32	cs_hccr; /* Chip Select Holdcycle Control Register */
+	u32	altr; /* Address Latch Timing Register */
+	u8	res0[0xc8];
+	u32	sclpc_psr; /* SCLPC Packet Size Register */
+	u32	sclpc_sar; /* SCLPC Start Address Register */
+	u32	sclpc_cr; /* SCLPC Control Register */
+	u32	sclpc_er; /* SCLPC Enable Register */
+	u32	sclpc_nar; /* SCLPC NextAddress Register */
+	u32	sclpc_sr; /* SCLPC Status Register */
+	u32	sclpc_bdr; /* SCLPC Bytes Done Register */
+	u32	emb_scr; /* EMB Share Counter Register */
+	u32	emb_pcr; /* EMB Pause Control Register */
+	u8	res1[0x1c];
+	u32	lpc_fdwr; /* LPC RX/TX FIFO Data Word Register */
+	u32	lpc_fsr; /* LPC RX/TX FIFO Status Register */
+	u32	lpc_cr; /* LPC RX/TX FIFO Control Register */
+	u32	lpc_ar; /* LPC RX/TX FIFO Alarm Register */
+};
+
+static struct lpc * const lpc = (struct lpc *)MPC512X_LPC;
+
+void mpc5125_setup_access_window(unsigned cs, unsigned start, unsigned size);
+
+/* setup one CS line at the LPC bus */
+void mpc5125_setup_cs(unsigned cs, unsigned start, unsigned size, unsigned cfg)
+{
+	/* access window first */
+	mpc5125_setup_access_window(cs, start, size);
+
+	/* access method and timing */
+	out_be32(&lpc->cs_cfg[cs], cfg);
+}
+
+void mpc5125_configure_lpc(const struct lpc_config *c)
+{
+	/* enable the LPC feature */
+	setbits_be32(&lpc->cs_cr, 0x01000000);
+
+	if (c == NULL)
+		return; /* keep the defaults */
+
+	out_be32(&lpc->altr, c->cs_ale_timing);
+	out_be32(&lpc->cs_bcr, c->cs_burst);
+	out_be32(&lpc->cs_dccr, c->cs_dead_cyle);
+	out_be32(&lpc->cs_hccr, c->cs_hold_cycle);
+}
diff --git a/arch/ppc/mach-mpc5xxx/sdram-mpc5125.c b/arch/ppc/mach-mpc5xxx/sdram-mpc5125.c
new file mode 100644
index 0000000..9fc3723
--- /dev/null
+++ b/arch/ppc/mach-mpc5xxx/sdram-mpc5125.c
@@ -0,0 +1,269 @@
+/*
+ * Copyright (C) 2014 Juergen Borleis, Pengutronix
+ *
+ * This code bases partially on:
+ * (C) Copyright 2007-2009 DENX Software Engineering
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
+ */
+
+#include <common.h>
+#include <types.h>
+#include <mach/mpc5xxx.h>
+#include <asm/io.h>
+
+/* register description of the MPC5125 memory controller */
+struct mddrc {
+	u32 ddr_sys_config;
+	u32 ddr_time_config0;
+	u32 ddr_time_config1;
+	u32 ddr_time_config2;
+	u32 ddr_command;
+	u32 ddr_compact_command;
+	u32 self_refresh_cmd_0;
+	u32 self_refresh_cmd_1;
+	u32 self_refresh_cmd_2;
+	u32 self_refresh_cmd_3;
+	u32 self_refresh_cmd_4;
+	u32 self_refresh_cmd_5;
+	u32 self_refresh_cmd_6;
+	u32 self_refresh_cmd_7;
+	u32 dqs_config_offset_count;
+	u32 dqs_config_offset_time;
+	u32 DQS_delay_status;
+	u32 res0[0xF];
+	u32 prioman_config1;
+	u32 prioman_config2;
+	u32 hiprio_config;
+	u32 lut_table0_main_upper;
+	u32 lut_table1_main_upper;
+	u32 lut_table2_main_upper;
+	u32 lut_table3_main_upper;
+	u32 lut_table4_main_upper;
+	u32 lut_table0_main_lower;
+	u32 lut_table1_main_lower;
+	u32 lut_table2_main_lower;
+	u32 lut_table3_main_lower;
+	u32 lut_table4_main_lower;
+	u32 lut_table0_alt_upper;
+	u32 lut_table1_alt_upper;
+	u32 lut_table2_alt_upper;
+	u32 lut_table3_alt_upper;
+	u32 lut_table4_alt_upper;
+	u32 lut_table0_alt_lower;
+	u32 lut_table1_alt_lower;
+	u32 lut_table2_alt_lower;
+	u32 lut_table3_alt_lower;
+	u32 lut_table4_alt_lower;
+	u32 performance_monitor_config;
+	u32 event_time_counter;
+	u32 event_time_preset;
+	u32 performance_monitor1_address_low;
+	u32 performance_monitor2_address_low;
+	u32 performance_monitor1_address_hi;
+	u32 performance_monitor2_address_hi;
+	u32 res1[2];
+	u32 performance_monitor1_read_counter;
+	u32 performance_monitor2_read_counter;
+	u32 performance_monitor1_write_counter;
+	u32 performance_monitor2_write_counter;
+	u32 granted_ack_counter0;
+	u32 granted_ack_counter1;
+	u32 granted_ack_counter2;
+	u32 granted_ack_counter3;
+	u32 granted_ack_counter4;
+	u32 cumulative_wait_counter0;
+	u32 cumulative_wait_counter1;
+	u32 cumulative_wait_counter2;
+	u32 cumulative_wait_counter3;
+	u32 cumulative_wait_counter4;
+	u32 summed_priority_counter0;
+	u32 summed_priority_counter1;
+	u32 summed_priority_counter2;
+	u32 summed_priority_counter3;
+	u32 summed_priority_counter4;
+};
+
+/* MDDRC SYS CFG and Timing CFG0 Registers */
+#define MDDRC_SYS_CFG_EN	0xF0000000
+#define MDDRC_SYS_CFG_CKE_MASK	0x40000000
+#define MDDRC_SYS_CFG_CMD_MASK	0x10000000
+#define MDDRC_REFRESH_ZERO_MASK	0x0000FFFF
+
+#define DRAM_DSC_CMD_MODE (1 << 28)
+#define DRAM_DSC_CLK_ON (1 << 29)
+#define DRAM_DSC_CKE (1 << 30)
+#define DRAM_DSC_RST_B (1 << 31)
+
+static struct mddrc * const dramc = (struct mddrc *)MPC512X_DRAMC;
+
+static const unsigned char page_addr[16] = {
+	10, 11, 11, 12, 12, 13, 13, 14, 14, 24, 24, 25, 25, 26, 17, 28,
+};
+
+static const unsigned char bank_addr[16] = {
+	2, 2, 3, 2, 3, 2, 3, 2, 3, 2, 3, 2, 3, 3, 3, 3,
+};
+
+static const unsigned char row_addr[8] = {
+	16, 16, 16, 16, 16, 16, 15, 14,
+};
+
+/* note: don't call when already running from SDRAM */
+static unsigned detect_real_memory_size(unsigned slice_count, unsigned full_count)
+{
+	void *p;
+	unsigned u, cnt;
+
+	for (u = full_count - 1; u >= slice_count; u--) {
+		p = (void *)((1 << u) + DEFAULT_DRAM_BASE);
+		out_8(p, u);
+	}
+
+	cnt = in_8((void*)DEFAULT_DRAM_BASE);
+	return 1 << cnt;
+}
+
+/*static*/ const void *fix_main_address(const void *init_sequence)
+{
+	unsigned linked_address = (unsigned)init_sequence;
+	unsigned real_address;
+
+	/* FIXME use get_runtime_offset() instead */
+	real_address = linked_address - CONFIG_TEXT_BASE;
+	real_address += CFG_ROM_LOC;
+
+	return (const void *)real_address;
+}
+
+/*
+ * Note: this function depends on the possibility to map up to
+ * the full 2 GiB memory area (e.g. special mapping must exist)
+ */
+/*static*/ unsigned mpc5125_detect_sdram_size(void)
+{
+	size_t pagei, banki, rowi;
+	unsigned addr_cnt, slice_count, reg;
+	const unsigned char *p;
+
+	reg = in_be32(&dramc->ddr_sys_config);
+	pagei = banki = (reg >> 21) & 0xf;
+	rowi = (reg >> 25) & 0x7;
+
+	p = fix_main_address(&page_addr[pagei]);
+	addr_cnt = *p;
+	p = fix_main_address(&bank_addr[banki]);
+	addr_cnt += *p;
+	slice_count = addr_cnt;
+	p = fix_main_address(&row_addr[rowi]);
+	addr_cnt += *p;
+
+	/* enable up to the full possible SDRAM access window for size detection */
+	mpc5125_setup_ram_memory_window(DEFAULT_DRAM_BASE, 1 << addr_cnt);
+	return detect_real_memory_size(slice_count, addr_cnt);
+}
+
+/*static */void setup_priority_manager(const struct sdram_conf *init_sequence)
+{
+	out_be32(&dramc->prioman_config1, init_sequence->prio.prioman_config1);
+	out_be32(&dramc->prioman_config2, init_sequence->prio.prioman_config2);
+	out_be32(&dramc->hiprio_config, init_sequence->prio.hiprio_config);
+	out_be32(&dramc->lut_table0_main_upper, init_sequence->prio.lut_table0_main_upper);
+	out_be32(&dramc->lut_table0_main_lower, init_sequence->prio.lut_table0_main_lower);
+	out_be32(&dramc->lut_table1_main_upper, init_sequence->prio.lut_table1_main_upper);
+	out_be32(&dramc->lut_table1_main_lower, init_sequence->prio.lut_table1_main_lower);
+	out_be32(&dramc->lut_table2_main_upper, init_sequence->prio.lut_table2_main_upper);
+	out_be32(&dramc->lut_table2_main_lower, init_sequence->prio.lut_table2_main_lower);
+	out_be32(&dramc->lut_table3_main_upper, init_sequence->prio.lut_table3_main_upper);
+	out_be32(&dramc->lut_table3_main_lower, init_sequence->prio.lut_table3_main_lower);
+	out_be32(&dramc->lut_table4_main_upper, init_sequence->prio.lut_table4_main_upper);
+	out_be32(&dramc->lut_table4_main_lower, init_sequence->prio.lut_table4_main_lower);
+	out_be32(&dramc->lut_table0_alt_upper, init_sequence->prio.lut_table0_alt_upper);
+	out_be32(&dramc->lut_table0_alt_lower, init_sequence->prio.lut_table0_alt_lower);
+	out_be32(&dramc->lut_table1_alt_upper, init_sequence->prio.lut_table1_alt_upper);
+	out_be32(&dramc->lut_table1_alt_lower, init_sequence->prio.lut_table1_alt_lower);
+	out_be32(&dramc->lut_table2_alt_upper, init_sequence->prio.lut_table2_alt_upper);
+	out_be32(&dramc->lut_table2_alt_lower, init_sequence->prio.lut_table2_alt_lower);
+	out_be32(&dramc->lut_table3_alt_upper, init_sequence->prio.lut_table3_alt_upper);
+	out_be32(&dramc->lut_table3_alt_lower, init_sequence->prio.lut_table3_alt_lower);
+	out_be32(&dramc->lut_table4_alt_upper, init_sequence->prio.lut_table4_alt_upper);
+	out_be32(&dramc->lut_table4_alt_lower, init_sequence->prio.lut_table4_alt_lower);
+}
+
+/* depends on an enabled core internal timer ('TBEN' in 'SPCR') */
+void mpc5125_low_level_delay(unsigned ticks)
+{
+	uint64_t timeval = get_ticks();
+
+	while ((get_ticks() - timeval) < ticks)
+		;
+}
+
+#define TICKS_PER_US 50
+
+/*static */void startup_dram(const struct sdram_conf *init_sequence)
+{
+	unsigned reg = init_sequence->sys_cfg & ~DRAM_DSC_CKE;
+
+	/*
+	 * the "enable" combination: DRAM controller out of reset,
+	 * clock enabled, command mode -- BUT leave CKE low for now
+	 */
+	reg |= DRAM_DSC_RST_B | DRAM_DSC_CLK_ON | DRAM_DSC_CMD_MODE;
+	out_be32(&dramc->ddr_sys_config, reg);
+
+	/* maintain 500 microseconds of stable power and clock */
+	mpc5125_low_level_delay(500 * TICKS_PER_US);
+
+	/* apply a NOP, it shouldn't harm */
+	out_be32(&dramc->ddr_command, DRAM_CMD_NOP);
+
+	/* now assert CKE (high) */
+	reg |= DRAM_DSC_CKE;
+	out_be32(&dramc->ddr_sys_config, reg);
+}
+
+void mpc5125_init_sdram(const struct sdram_conf *init_sequence)
+{
+	unsigned msize;
+	const unsigned *cmds;
+	size_t u;
+
+	init_sequence = fix_main_address(init_sequence);
+
+	mpc5125_mux_pin(io_control_mem, init_sequence->mux_ddr);
+	startup_dram(init_sequence);
+	setup_priority_manager(init_sequence);
+
+	/* start to setup the external memory */
+	out_be32(&dramc->ddr_time_config0, init_sequence->tim_cfg0 &
+						MDDRC_REFRESH_ZERO_MASK);
+	out_be32(&dramc->ddr_time_config1, init_sequence->tim_cfg1);
+	out_be32(&dramc->ddr_time_config2, init_sequence->tim_cfg2);
+
+	cmds = fix_main_address(&init_sequence->cmds[0]);
+
+	/* Initialize memory with supplied init sequence */
+	for (u = 0; u < init_sequence->size; u++)
+		out_be32(&dramc->ddr_command, cmds[u]);
+
+	/* Start DDRC with final settings */
+	out_be32(&dramc->ddr_time_config0, init_sequence->tim_cfg0);
+	out_be32(&dramc->ddr_sys_config, init_sequence->sys_cfg);
+
+	/* Allow for the DLL to startup before accessing data */
+	mpc5125_low_level_delay(1000 * TICKS_PER_US);
+
+	msize = mpc5125_detect_sdram_size();
+
+	/* size and move the memory to its final destination */
+	mpc5125_setup_ram_memory_window(DEFAULT_DRAM_BASE, msize);
+}
diff --git a/arch/ppc/mach-mpc5xxx/speed-mpc5125.c b/arch/ppc/mach-mpc5xxx/speed-mpc5125.c
new file mode 100644
index 0000000..66d0e88
--- /dev/null
+++ b/arch/ppc/mach-mpc5xxx/speed-mpc5125.c
@@ -0,0 +1,209 @@
+/*
+ * Copyright (C) 2014 Juergen Borleis, Pengutronix
+ *
+ * This code bases partially on:
+ * (C) Copyright 2000-2009
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ * Copyright (C) 2004-2006 Freescale Semiconductor, Inc.
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
+ */
+
+#include <common.h>
+#include <init.h>
+#include <types.h>
+#include <asm/io.h>
+#include <mach/mpc512x.h>
+
+/* Clock Module register description */
+struct clkm {
+	u32 spmr; /* System PLL Mode Register */
+	u32 sccr[2]; /* System Clock Control Registers */
+	u32 scfr[2]; /* System Clock Frequency Registers */
+	u8 res0[4];
+	u32 bcr; /* Bread Crumb Register */
+	u32 pscccr[12]; /* PSC0-11 Clock Control Registers */
+	u32 spccr; /* SPDIF Clock Control Register */
+	u32 cccr; /* CFM Clock Control Register */
+	u32 dccr; /* DIU Clock Control Register */
+	u32 msccr[4]; /* MSCAN1-4 Clock Control Registers */
+};
+
+#define SPMR_SPMF		0x0F000000
+#define SPMR_SPMF_SHIFT		24
+#define SPMR_CPMF		0x000F0000
+#define SPMR_CPMF_SHIFT		16
+
+#define SCFR1_IPS_DIV_MASK	0x03800000
+#define SCFR1_IPS_DIV_SHIFT	23
+
+#define SCFR2_SYS_DIV		0xFC000000
+#define SCFR2_SYS_DIV_SHIFT	26
+
+#define SCCR_EN_CLK_FEC1	(1 << 13)
+#define SCCR_EN_CLK_FEC2	(1 << 9)
+
+#define PSCCCR_MCLK_DIV_SHIFT	17
+#define PSCCCR_MCLK_DIV_MASK	(0xfffe << PSCCCR_MCLK_DIV_SHIFT)
+#define PSCCCR_MCLK_EN		(1 << 16)
+#define PSCCCR_MCLK_0_SRC_SHIFT	14
+#define PSCCCR_MCLK_0_SRC_MASK	(3 << PSCCCR_MCLK_0_SRC_SHIFT)
+
+static struct clkm * const clkm = (struct clkm *)MPC512X_CLKM;
+
+unsigned long get_timebase_clock(void)
+{
+	return CONFIG_SYS_MPC512X_CLKIN;
+}
+
+static const unsigned char spmf_mult[] = {
+	68, 1, 12, 16,
+	20, 24, 28, 32,
+	36, 40, 44, 48,
+	52, 56, 60, 64
+};
+
+unsigned long get_pll_clk(void)
+{
+	unsigned reg;
+	size_t spmf;
+
+	reg = in_be32(&clkm->spmr);
+	spmf = (reg & SPMR_SPMF) >> SPMR_SPMF_SHIFT;
+	return get_timebase_clock() * spmf_mult[spmf];
+}
+
+static const unsigned char sys_dividors[][2] = {
+	{2, 1}, {5, 2}, {3, 1}, {7, 2}, {4, 1},
+	{9, 2}, {5, 1}, {7, 1}, {6, 1}, {8, 1},
+	{9, 1}, {11, 1}, {10, 1}, {12, 1}, {13, 1},
+	{15, 1}, {14, 1}, {16, 1}, {17, 1}, {19, 1},
+	{18, 1}, {20, 1}, {21, 1}, {23, 1}, {22, 1},
+	{24, 1}, {25, 1}, {27, 1}, {26, 1}, {28, 1},
+	{29, 1}, {31, 1}, {30, 1}, {32, 1}, {33, 1}
+};
+
+unsigned long get_sys_clk(void)
+{
+	unsigned reg;
+	size_t sys_div;
+
+	reg = in_be32(&clkm->scfr[1]);
+	sys_div = (reg & SCFR2_SYS_DIV) >> SCFR2_SYS_DIV_SHIFT;
+	return (get_pll_clk() * sys_dividors[sys_div][1]) / sys_dividors[sys_div][0];
+}
+
+static const unsigned char cpmf_mult[][2] = {
+	{0, 1}, {0, 1}, /* 0 and 1 are not valid */
+	{1, 1}, {3, 2},
+	{2, 1}, {5, 2},
+	{3, 1}, {7, 2},
+	{0, 1}, {0, 1}, /* and all above 7 are not valid too */
+	{0, 1}, {0, 1},
+	{0, 1}, {0, 1},
+	{0, 1}, {0, 1}
+};
+
+unsigned long get_cpu_clk(void)
+{
+	unsigned reg;
+	size_t cpmf;
+
+	reg = in_be32(&clkm->spmr);
+	cpmf = (reg & SPMR_CPMF) >> SPMR_CPMF_SHIFT;
+	return ((get_sys_clk() / 2) * cpmf_mult[cpmf][0]) / cpmf_mult[cpmf][1];
+}
+
+unsigned long get_ips_clock(void)
+{
+	unsigned reg;
+	unsigned long ips_div;
+
+	reg = in_be32(&clkm->scfr[0]);
+	ips_div = (reg & SCFR1_IPS_DIV_MASK) >> SCFR1_IPS_DIV_SHIFT;
+	if (ips_div == 0) {
+		/* in case we cannot get a sane IPS divisor, fail gracefully */
+		pr_debug("IPS clock: invalid divider setting!\n");
+		return 0;
+	}
+
+	return get_sys_clk() / 2 / ips_div;
+}
+
+unsigned long get_psc_clock(unsigned idx)
+{
+	unsigned reg, clk;
+	unsigned long psc_div;
+
+	reg = in_be32(&clkm->pscccr[idx]);
+	if (!(reg & PSCCCR_MCLK_EN))
+		return 0;
+
+	psc_div = (reg & PSCCCR_MCLK_DIV_MASK) >> PSCCCR_MCLK_DIV_SHIFT;
+	if (psc_div == 0) {
+		/* in case we cannot get a sane IPS divisor, fail gracefully */
+		pr_debug("PSC clock: invalid divider setting!\n");
+		return 0;
+	}
+
+	switch (reg & PSCCCR_MCLK_0_SRC_MASK) {
+	case 0x0000:
+		clk = get_ips_clock();
+	case 0x4000:
+		clk = get_timebase_clock();
+	default:
+		pr_debug("PSC clock: unknown source configured: %u\n",
+						reg & PSCCCR_MCLK_0_SRC_MASK);
+		return 0;
+	}
+
+	return clk / (psc_div + 1);
+}
+
+void mpc5125_enable_psc_fifo_clock(void)
+{
+	setbits_be32(&clkm->sccr[0], 0x8000);
+}
+
+void mpc5xxx_enable_psc_clock(unsigned idx)
+{
+	/*
+	 * configure the clock for this unit, it
+	 * should run at full sysclock speed (brute force...)
+	 */
+	out_be32(&clkm->pscccr[idx], PSCCCR_MCLK_EN);
+	/* its now save to enable the clock */
+	setbits_be32(&clkm->sccr[0], 1 << (27 - idx));
+}
+
+void mpc5xxx_enable_fec_clock(unsigned idx)
+{
+	switch (idx) {
+	case 0:
+		setbits_be32(&clkm->sccr[0], SCCR_EN_CLK_FEC1);
+		break;
+	case 1:
+		setbits_be32(&clkm->sccr[0], SCCR_EN_CLK_FEC2);
+		break;
+	default:
+		pr_debug("Enabling clock: unknown FEC index: %u\n", idx);
+	}
+}
+
+static int mpc5125_clks(void)
+{
+	printf("PLL %lu MHz, CPU %lu MHz, Sys %lu MHz, IPS %lu MHz\n",
+		get_pll_clk() / 1000000, get_cpu_clk() / 1000000,
+		get_sys_clk() / 1000000, get_ips_clock() / 1000000);
+
+	return 0;
+}
+postconsole_initcall(mpc5125_clks);
diff --git a/arch/ppc/mach-mpc5xxx/start.S b/arch/ppc/mach-mpc5xxx/start.S
index 810a5bb..aadaa3f 100644
--- a/arch/ppc/mach-mpc5xxx/start.S
+++ b/arch/ppc/mach-mpc5xxx/start.S
@@ -28,6 +28,7 @@
 
 #include <asm/cache.h>
 #include <asm/mmu.h>
+#include <mach/mpc5xxx.h>
 
 /* We don't want the  MMU yet.
 */
@@ -88,7 +89,9 @@ setup_mbar:
 	lis	r3, CFG_MBAR@h
 	ori	r3, r3, CFG_MBAR@l
 	mtspr	MBAR, r3
+#ifndef CONFIG_ARCH_MPC5125 /* MPC5200 only */
 	rlwinm	r3, r3, 16, 16, 31
+#endif
 	stw	r3, 0(r4)
 
 	/* Initialise the MPC5xxx processor core			*/
@@ -98,7 +101,81 @@ setup_mbar:
 
 	/* initialize some things that are hard to access from C	*/
 	/*--------------------------------------------------------------*/
+#ifdef CONFIG_ARCH_MPC5125
+	lis	r3, CFG_MBAR@h
+	ori	r3, r3, CFG_MBAR@l
+
+	/* enable the LPC based ROM access in the upper address space */
+	lis	r0, CFG_ROM_LOC@h
+	ori	r0, r0, (CFG_ROM_LOC + CFG_ROM_SZ - 1)@h
+	stw	r0, LPCS0AW_OFFSET(r3)
+
+	/* just sync the hardware according to the manual */
+	lwz	r1, LPCS0AW_OFFSET(r3)
+	isync
+
+	/*
+	 * in order to make the CS0 (instead of the BOOTCS) work,
+	 * we must set the LPC master bit first
+	 */
+	lis	r1, MPC512X_IOC@h
+	ori	r1, r1, MPC512X_IOC@l
+	lwz	r0, CS_CR_OFFSET(r1)
+	oris	r0, r0, 0x01000000@h
+	stw	r0, CS_CR_OFFSET(r1)
+	isync
+
+	/*
+	 * when we still run from lower address space, its now time to jump to
+	 * the just enabled upper address space. We need this step in order
+	 * to move the lower ROM window out of the way.
+	 * (but only, if we not run from RAM)
+	 */
+	bl	1f
+1:	mflr	r0
+	lis	r1, CFG_ROM_LOC@h
+	cmplw	r0, r1
+	bgt	final_destination /* skip if already in upper address space */
+	/*
+	 * to detect if we already running from RAM we just check if the
+	 * BootCS setting is equal to the CS0 setting.
+	 */
+	lwz	r2, LPBAW_OFFSET(r3)
+	lwz	r1, LPCS0AW_OFFSET(r3)
+	cmplw	r1, r2
+	beq	final_destination /* stay in RAM */
+	/*
+	 * Jump into the upper flash memory area
+	 * destination = address of 'final_destination' - TEXT_BASE + CFG_ROM_LOC@h
+	 */
+	lis	r0, (final_destination - TEXT_BASE + CFG_ROM_LOC)@h
+	ori	r0, r0, (final_destination - TEXT_BASE + CFG_ROM_LOC)@l
+	mtlr	r0
+	blr
+
+final_destination:
+	/*
+	 * we are now running from the upper address space from flash or
+	 * from lower address space inside RAM.
+	 * Its save now to move away the flash memory access in the lower
+	 * address space. To do so sync both BOOTCS and CS0 settings.
+	 * For the 'inside RAM' case this should not harm.
+	 */
+	lwz	r1, LPCS0AW_OFFSET(r3)
+	stw	r1, LPBAW_OFFSET(r3)
 
+	/* move NFC out of the way */
+	lis	r0, CFG_NFC_LOC@h
+	stw	r0, NFSCBAR_OFFSET(r3)
+
+	/* move the on-chip SRAM out of the way */
+	lis	r0, CFG_SRAM_LOC@h
+	stw	r0, SRAMBAR_OFFSET(r3)
+
+	/* just sync the hardware according to the manual */
+	lwz	r1, SRAMBAR_OFFSET(r3)
+	isync
+#endif
 	/* set up stack in on-chip SRAM */
 	lis	r1, (MPC5XXX_SRAM + MPC5XXX_SRAM_SIZE)@h
 	ori	r1, r1, (MPC5XXX_SRAM + MPC5XXX_SRAM_SIZE)@l
@@ -116,11 +193,24 @@ setup_mbar:
 	/* r3: IMMR */
 	bl	cpu_init	/* run low-level CPU init code (in Flash)*/
 
+#ifdef CONFIG_ARCH_MPC5125
+	bl	1f
+1:	mflr	r0
+	lis	r9, CFG_ROM_LOC@h
+	cmplw	r0, r9
+	blt	skip_dram_init /* skip if the RAM is already up and running */
 	mr	r3, r21
+#endif
 	/* r3: BOOTFLAG */
 	bl	initdram	/* initialize sdram */
 	/* r3: End of RAM */
 
+#ifdef CONFIG_ARCH_MPC5125
+skip_dram_init:
+	bl	mpc5xxx_get_sdram_size
+	subi	r3,r3,1
+	/* r3: End of RAM */
+#endif
 	b _continue_init
 /*
  * Vector Table
@@ -501,7 +591,14 @@ init_5xxx_core:
 	ori	r3, r3, CFG_HID0_FINAL@l
 	SYNC
 	mtspr	HID0, r3
+#ifdef CONFIG_ARCH_MPC5125
+	lis	r3, CFG_SYS_HID2@h
+	ori	r3, r3, CFG_SYS_HID2@l
+	SYNC
+	mtspr	HID2, r3
+	sync
 
+#else
 	/* clear all BAT's						*/
 	/*--------------------------------------------------------------*/
 
@@ -570,7 +667,7 @@ init_5xxx_core:
 
 	/* Done!							*/
 	/*--------------------------------------------------------------*/
-
+#endif
 	blr
 
 /* Cache functions.
diff --git a/arch/ppc/mach-mpc5xxx/sys-mpc5125.c b/arch/ppc/mach-mpc5xxx/sys-mpc5125.c
new file mode 100644
index 0000000..c537669
--- /dev/null
+++ b/arch/ppc/mach-mpc5xxx/sys-mpc5125.c
@@ -0,0 +1,136 @@
+/*
+ * Copyright (C) 2014 Juergen Borleis, Pengutronix
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
+ */
+
+#include <common.h>
+#include <init.h>
+#include <types.h>
+#include <asm/io.h>
+#include <mach/mpc5xxx.h>
+
+struct law {
+	u32 bar; /* Base Addr Register */
+	u32 ar; /* Attributes Register */
+};
+
+/* System configuration registers for MPC5125 */
+struct sysconf {
+	u32 immrbar;
+	u8 res0[0x1c];
+	u32 lpbaw;
+	u32 lpcsaw[8];
+	u8 res1[0x5c];
+	struct law ddrlaw;
+	u8 res3[0x1c];
+	u32 srambar;
+	u32 nfcbar;
+	u8 res4[0x34];
+	u32 spridr;
+	u32 spcr;
+};
+
+#define MPC512X_SYSCONF_LPCSAW_START(x) (x & 0xffff0000)
+#define MPC512X_SYSCONF_LPCSAW_STOP(x) ((x) >> 16)
+
+#define MPC512X_SPCR_TBEN 0x00400000      /* E300 core time base unit enable */
+
+#define MPC512X_SVR_PART(x) (((x) >> 16) & 0xFFFF) /* Part ID */
+#define MPC512X_SVR_REV(x) (((x) >>  0) & 0xFFFF) /* Revision ID */
+
+/* the MPC512x comes in two revisions. Note: these SoCs are not supported yet */
+#define MPC512x_PART_ID 0x8018
+# define MPC512X_5121E 0x0020
+# define MPC512X_5123 0x0030
+
+/* the MPC5125 comes in one revisions */
+#define MPC5125_PART_ID 0x8019
+# define MPC512X_SPR_5125 0x0010
+
+static struct sysconf * const sysconf = (struct sysconf *)CFG_MBAR;
+
+/*
+ * According to MPC5121e RM, configuring local access windows should
+ * be followed by a dummy read of the config register that was
+ * modified last and an isync.
+ */
+static void sync_law(void *addr)
+{
+        in_be32(addr);
+}
+
+void mpc5125_setup_access_window(unsigned cs, unsigned start, unsigned size)
+{
+	unsigned long long u = start;
+
+	u += size;
+	if (u > 0x100000000) {
+		pr_err("Size for LPC chipselect %d exceeds address space. Limited!\n", cs);
+		size = 0x100000000 - start;
+	}
+
+	out_be32(&sysconf->lpcsaw[cs],
+		MPC512X_SYSCONF_LPCSAW_START(start) |
+		MPC512X_SYSCONF_LPCSAW_STOP(start + size - 1));
+	sync_law(&sysconf->lpcsaw[cs]);
+}
+
+void mpc5125_setup_ram_memory_window(unsigned base, unsigned size)
+{
+	out_be32(&sysconf->ddrlaw.bar, base & 0xFFFFF000);
+	out_be32(&sysconf->ddrlaw.ar, __ilog2(size) - 1);
+	sync_law(&sysconf->ddrlaw.ar);
+}
+
+unsigned mpc5xxx_get_sdram_size(void)
+{
+	return 1 << (in_be32(&sysconf->ddrlaw.ar) + 1);
+}
+
+void mpc5125_enable_time_base_counter(void)
+{
+	setbits_be32(&sysconf->spcr, MPC512X_SPCR_TBEN);
+}
+
+static int mpc5125_check_cpu(void)
+{
+	unsigned svr;
+	unsigned pid, rid;
+
+	svr = in_be32(&sysconf->spridr);
+	pid = MPC512X_SVR_PART(svr);
+	rid = MPC512X_SVR_REV(svr);
+
+	puts("SoC type: ");
+	switch (pid) {
+	case MPC512x_PART_ID:
+		switch (rid) {
+		case MPC512X_5121E:
+			puts("MPC5121e\n");
+			break;
+		case MPC512X_5123:
+			puts ("MPC5123\n");
+			break;
+		default:
+			printf("Unknown MPC512x variant: %x\n", rid);
+		}
+		break;
+	case MPC5125_PART_ID:
+		puts("MPC5125\n");
+		break;
+	default:
+		printf("Unknown MPC51xx part/variant: %x/%x\n", pid, rid);
+	}
+
+	return 0;
+}
+postconsole_initcall(mpc5125_check_cpu);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
