Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fRC1t-0005VY-4T
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 07:41:50 +0000
Received: by mail-wm0-x242.google.com with SMTP id o13-v6so1579444wmf.4
 for <barebox@lists.infradead.org>; Fri, 08 Jun 2018 00:41:38 -0700 (PDT)
From: Pascal Vizeli <pvizeli@syshack.ch>
Date: Fri,  8 Jun 2018 07:41:33 +0000
Message-Id: <20180608074133.30653-1-pvizeli@syshack.ch>
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
Subject: [PATCH 1/1] arm: boards: support native fdt for raspberry pi
To: barebox@lists.infradead.org
Cc: Pascal Vizeli <pvizeli@syshack.ch>

It store the native device tree from bootloader to '/rpi_native.dtb'.
This device tree is not compatible with barebox but needed to boot the
linux kernel correctly. With new overlay support we can patch this
device tree on runtime.

Now barebox can be the middle bootloader and we have no limitations to
origin bootloader.

Question: How I can share a address between PBL and barebox?

Signed-off-by: Pascal Vizeli <pvizeli@syshack.ch>
---
 arch/arm/boards/raspberry-pi/lowlevel.c   |  4 +++
 arch/arm/boards/raspberry-pi/rpi-common.c | 40 +++++++++++++++++++++++
 2 files changed, 44 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index cbc6caa4b..07d6f1101 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -4,10 +4,13 @@
 #include <asm/barebox-arm-head.h>
 #include <mach/platform.h>
 
+extern uint32_t rpi_fdt_addr;
+
 extern char __dtb_bcm2835_rpi_start[];
 ENTRY_FUNCTION(start_raspberry_pi1, r0, r1, r2)
 {
 	void *fdt = __dtb_bcm2835_rpi_start + get_runtime_offset();
+	rpi_fdt_addr = r2;
 
 	arm_cpu_lowlevel_init();
 
@@ -18,6 +21,7 @@ extern char __dtb_bcm2836_rpi_2_start[];
 ENTRY_FUNCTION(start_raspberry_pi2, r0, r1, r2)
 {
 	void *fdt = __dtb_bcm2836_rpi_2_start + get_runtime_offset();
+	rpi_fdt_addr = r2;
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 6e375bc98..43326e55d 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -16,11 +16,13 @@
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
@@ -321,12 +323,50 @@ static int rpi_env_init(void)
 	return 0;
 }
 
+uint32_t rpi_fdt_addr;
+
+static int rpi_native_fdt(void)
+{
+	struct fdt_header *oftree;
+	int mode = O_RWSIZE_4 | O_RDONLY;
+	int fd = 0;
+	uint32_t size;
+	void *map;
+
+	fd = open_and_lseek("/dev/mem", mode, rpi_fdt_addr);
+	if (fd < 0) {
+		printf("failed open /dev/mem for fdt");
+		goto end;
+	}
+
+	map = memmap(fd, PROT_READ);
+	if (map == (void *)-1) {
+		printf("failed map memory for fdt");
+		goto end;
+	}
+
+	oftree = map;
+	size = be32_to_cpu(oftree->totalsize);
+	if (!size) {
+		printf("failed read fdt");
+		goto end;
+	}
+
+	if (!write_file("/rpi_native.dtb", map, size))
+		printf("Failed to write rpi_native.dtb");
+
+end:
+	close(fd);
+	return 0;
+}
+
 static int rpi_devices_init(void)
 {
 	rpi_model_init();
 	bcm2835_register_fb();
 	armlinux_set_architecture(MACH_TYPE_BCM2708);
 	rpi_env_init();
+	rpi_native_fdt();
 	return 0;
 }
 late_initcall(rpi_devices_init);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
