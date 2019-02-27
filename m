Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyzAM-0004rY-Ld
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 13:22:34 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1gyzA8-00088i-6L
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 14:22:16 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Wed, 27 Feb 2019 14:22:14 +0100
Message-Id: <20190227132215.9765-3-tomaz.solc@tablix.org>
In-Reply-To: <20190227132215.9765-1-tomaz.solc@tablix.org>
References: <20190227132215.9765-1-tomaz.solc@tablix.org>
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
Subject: [PATCH v2 2/3] ARM: rpi: save fdt that was passed from VideoCore
To: barebox@lists.infradead.org

On Raspberry Pi, VideoCore firmware creates a device tree that contains
information about peripherals that were initialized by VideoCore based
on settings in config.txt. Normally this device tree is passed to the
Linux kernel via a pointer in the r2 register. A bootloader needs to
pass this device tree to the kernel, or some peripherals will not work
correctly.

Since the VideoCore device tree is not compatible with barebox, we can't
just pass it to barebox_arm_entry() as the internal barebox device tree.

This commit makes the prebootloader code copy the device tree from
VideoCore into a scrap RAM area just above the area reserved for the
bootloader. Board initialization code in the bootloader proper then
copies it into a file /vc.dtb. The bootloader environment is then free
to pass this file to the kernel at boot (e.g. via bootm -o).
---
 Documentation/boards/bcm2835.rst          |  4 ++
 arch/arm/boards/raspberry-pi/lowlevel.c   | 68 ++++++++++++++++++++++---------
 arch/arm/boards/raspberry-pi/lowlevel.h   |  9 ++++
 arch/arm/boards/raspberry-pi/rpi-common.c | 34 ++++++++++++++++
 4 files changed, 96 insertions(+), 19 deletions(-)
 create mode 100644 arch/arm/boards/raspberry-pi/lowlevel.h

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index ea80d5834..95e910896 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -30,5 +30,9 @@ Raspberry Pi
 
   6. Turn board's power on.
 
+VideoCore firmware creates a device tree based on the entries in ``config.txt``. This file is available to the Barebox environment in the file ``/vc.dtb``. For example, to boot a kernel shipped with Raspbian::
+
+    bootm -o /vc.dtb /boot/kernel7.img
+
 .. _Raspberry Pi firmware: https://codeload.github.com/raspberrypi/firmware/zip/80e1fbeb78f9df06701d28c0ed3a3060a3f557ef
 .. _documentation for config.txt: https://www.raspberrypi.org/documentation/configuration/config-txt/
diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index 1a3d39421..4b64f5d1d 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -3,43 +3,73 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/platform.h>
+#include <of.h>
 
-extern char __dtb_bcm2835_rpi_start[];
-ENTRY_FUNCTION(start_raspberry_pi1, r0, r1, r2)
+#include "lowlevel.h"
+
+static void copy_vc_fdt(void *dest, void *src, unsigned long max_size)
 {
-	void *fdt = __dtb_bcm2835_rpi_start + get_runtime_offset();
+	struct fdt_header *oftree_src = src;
+	struct fdt_header *oftree_dest = dest;
 
-	arm_cpu_lowlevel_init();
+	unsigned long size = be32_to_cpu(oftree_src->totalsize);
+	if (size > max_size) {
+		oftree_dest->magic = cpu_to_be32(VIDEOCORE_FDT_ERROR);
+		/* Save an error code after the magic value for easier
+		 * debugging. We can't print out anything this early */
+		oftree_dest->totalsize = cpu_to_be32(ENOMEM);
+		return;
+	}
 
-	barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_128M, fdt);
+	memmove(dest, src, size);
 }
 
-extern char __dtb_bcm2836_rpi_2_start[];
-ENTRY_FUNCTION(start_raspberry_pi2, r0, r1, r2)
+/* Must be inline since stack isn't setup yet. */
+static inline void start_raspberry_pi(unsigned long memsize, void *fdt,
+								void *vc_fdt)
 {
-	void *fdt = __dtb_bcm2836_rpi_2_start + get_runtime_offset();
+	void *saved_vc_fdt;
+	unsigned long membase = BCM2835_SDRAM_BASE;
+
+	/* A pointer to the FDT created by VideoCore was passed to us in r2. We
+	 * reserve some memory just above the region used for Basebox and copy
+	 * this FDT there. We fetch it from there later in rpi_devices_init().*/
+	memsize -= VIDEOCORE_FDT_SZ;
 
 	arm_cpu_lowlevel_init();
 
-	barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_512M, fdt);
+	/* Copied from barebox_arm_entry(). We need stack here early
+	 * for normal function calls to work. */
+	arm_setup_stack(arm_mem_stack_top(membase, membase + memsize) - 16);
+
+	fdt += get_runtime_offset();
+
+	saved_vc_fdt = (void *)(membase + memsize);
+	copy_vc_fdt(saved_vc_fdt, vc_fdt, VIDEOCORE_FDT_SZ);
+
+	barebox_arm_entry(membase, memsize, fdt);
 }
 
-extern char __dtb_bcm2837_rpi_3_start[];
-ENTRY_FUNCTION(start_raspberry_pi3, r0, r1, r2)
+extern char __dtb_bcm2835_rpi_start[];
+ENTRY_FUNCTION(start_raspberry_pi1, r0, r1, r2)
 {
-	void *fdt = __dtb_bcm2837_rpi_3_start + get_runtime_offset();
+	start_raspberry_pi(SZ_128M, __dtb_bcm2835_rpi_start, (void *)r2);
+}
 
-	arm_cpu_lowlevel_init();
+extern char __dtb_bcm2836_rpi_2_start[];
+ENTRY_FUNCTION(start_raspberry_pi2, r0, r1, r2)
+{
+	start_raspberry_pi(SZ_512M, __dtb_bcm2836_rpi_2_start, (void *)r2);
+}
 
-	barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_512M, fdt);
+extern char __dtb_bcm2837_rpi_3_start[];
+ENTRY_FUNCTION(start_raspberry_pi3, r0, r1, r2)
+{
+	start_raspberry_pi(SZ_512M, __dtb_bcm2837_rpi_3_start, (void *)r2);
 }
 
 extern char __dtb_bcm2837_rpi_cm3_start[];
 ENTRY_FUNCTION(start_raspberry_pi_cm3, r0, r1, r2)
 {
-	void *fdt = __dtb_bcm2837_rpi_cm3_start + get_runtime_offset();
-
-	arm_cpu_lowlevel_init();
-
-	barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_512M, fdt);
+	start_raspberry_pi(SZ_512M, __dtb_bcm2837_rpi_cm3_start, (void *)r2);
 }
diff --git a/arch/arm/boards/raspberry-pi/lowlevel.h b/arch/arm/boards/raspberry-pi/lowlevel.h
new file mode 100644
index 000000000..9ef9135b2
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/lowlevel.h
@@ -0,0 +1,9 @@
+#ifndef __ARCH_ARM_BOARDS_LOWLEVEL_H__
+#define __ARCH_ARM_BOARDS_LOWLEVEL_H__
+
+#include <linux/sizes.h>
+
+#define VIDEOCORE_FDT_SZ SZ_1M
+#define VIDEOCORE_FDT_ERROR 0xdeadfeed
+
+#endif /* __ARCH_ARM_BOARDS_LOWLEVEL_H__ */
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index b5d16a15c..fffa882a7 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -16,21 +16,26 @@
 #include <common.h>
 #include <init.h>
 #include <fs.h>
+#include <of.h>
 #include <linux/stat.h>
 #include <linux/clk.h>
 #include <linux/clkdev.h>
 #include <envfs.h>
 #include <malloc.h>
+#include <libfile.h>
 #include <gpio.h>
 #include <net.h>
 #include <led.h>
 #include <asm/armlinux.h>
+#include <asm/barebox-arm.h>
 #include <generated/mach-types.h>
+#include <linux/sizes.h>
 
 #include <mach/core.h>
 #include <mach/mbox.h>
 
 #include "rpi.h"
+#include "lowlevel.h"
 
 struct msg_get_arm_mem {
 	struct bcm2835_mbox_hdr hdr;
@@ -370,12 +375,41 @@ static int rpi_env_init(void)
 	return 0;
 }
 
+static void rpi_vc_fdt(void)
+{
+	void *saved_vc_fdt;
+	struct fdt_header *oftree;
+	unsigned long magic, size;
+
+	/* VideoCore FDT was copied in PBL just above Barebox memory */
+	saved_vc_fdt = (void *)(arm_mem_endmem_get());
+
+	oftree = saved_vc_fdt;
+	magic = be32_to_cpu(oftree->magic);
+	if (magic != FDT_MAGIC) {
+		pr_err("videocore fdt saved in pbl has invalid magic\n");
+
+		if (magic == VIDEOCORE_FDT_ERROR) {
+			pr_err("there was an error copying fdt in pbl: %d\n",
+					be32_to_cpu(oftree->totalsize));
+		}
+		return;
+	}
+
+	size = be32_to_cpu(oftree->totalsize);
+	if (write_file("/vc.dtb", saved_vc_fdt, size)) {
+		pr_err("failed to save videocore fdt to a file\n");
+		return;
+	}
+}
+
 static int rpi_devices_init(void)
 {
 	rpi_model_init();
 	bcm2835_register_fb();
 	armlinux_set_architecture(MACH_TYPE_BCM2708);
 	rpi_env_init();
+	rpi_vc_fdt();
 	return 0;
 }
 late_initcall(rpi_devices_init);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
