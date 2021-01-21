Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2YAE-0001lb-7r
 for barebox@lists.infradead.org; Thu, 21 Jan 2021 11:30:11 +0000
From: Steffen Trumtrar <str@pengutronix.de>
Date: Thu, 21 Jan 2021 12:29:48 +0100
Message-Id: <20210121112958.25937-3-str@pengutronix.de>
In-Reply-To: <20210121112958.25937-1-str@pengutronix.de>
References: <20210121112958.25937-1-str@pengutronix.de>
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
Subject: [PATCH 03/13] firmware: socfpga: set APPLYCFG after loading bitstream
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

To make changes to the SDRAM controller effective, the APPLYCFG bit must
be set after programming the bitstream to the FPGA. This has to be done
without any SDRAM usage. Therefore copy the function to execute to the
OCRAM and execute it from there.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 .../mach-socfpga/include/mach/cyclone5-regs.h |  1 +
 drivers/firmware/Makefile                     |  2 +-
 drivers/firmware/socfpga.c                    | 21 +++++++++++++++++++
 drivers/firmware/socfpga_sdr.S                | 17 +++++++++++++++
 4 files changed, 40 insertions(+), 1 deletion(-)
 create mode 100644 drivers/firmware/socfpga_sdr.S

diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h b/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
index e88daf7189..1a7d787a27 100644
--- a/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
+++ b/arch/arm/mach-socfpga/include/mach/cyclone5-regs.h
@@ -18,5 +18,6 @@
 #define CYCLONE5_SYSMGR_ADDRESS		0xffd08000
 #define CYCLONE5_SCANMGR_ADDRESS	0xfff02000
 #define CYCLONE5_SMP_TWD_ADDRESS	0xfffec600
+#define CYCLONE5_OCRAM_ADDRESS		0xffff0000
 
 #endif /* __MACH_SOCFPGA_REGS_H */
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index b162b08b0a..bbd2bcda97 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -1,3 +1,3 @@
 obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) += altera_serial.o
-obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o
+obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o socfpga_sdr.o
 obj-$(CONFIG_FIRMWARE_ZYNQMP_FPGA) += zynqmp-fpga.o
diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index 393c78c45d..c468c74372 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -38,6 +38,9 @@
 #include <mach/cyclone5-reset-manager.h>
 #include <mach/cyclone5-regs.h>
 #include <mach/cyclone5-sdram.h>
+#include <asm/fncpy.h>
+#include <mmu.h>
+#include <asm/cache.h>
 
 #define FPGAMGRREGS_STAT			0x0
 #define FPGAMGRREGS_CTRL			0x4
@@ -77,6 +80,9 @@
 #define CDRATIO_x4	0x2
 #define CDRATIO_x8	0x3
 
+extern void socfpga_sdram_apply_static_cfg(void __iomem *sdrctrlgrp);
+extern void socfpga_sdram_apply_static_cfg_end(void *);
+
 struct fpgamgr {
 	struct firmware_handler fh;
 	struct device_d dev;
@@ -353,6 +359,9 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 {
 	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
 	int status;
+	unsigned int func_size = &socfpga_sdram_apply_static_cfg_end -
+				 &socfpga_sdram_apply_static_cfg;
+	void (*ocram_func)(void __iomem *ocram_base);
 
 	/* Ensure the FPGA entering config done */
 	status = fpgamgr_program_poll_cd(mgr);
@@ -382,6 +391,18 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 		return status;
 	}
 
+	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_CACHED);
+
+	dev_dbg(&mgr->dev, "Setting APPLYCFG bit...\n");
+
+	ocram_func = fncpy((void __iomem *)CYCLONE5_OCRAM_ADDRESS,
+			   &socfpga_sdram_apply_static_cfg, func_size);
+
+	sync_caches_for_execution();
+
+	ocram_func((void __iomem *) (CYCLONE5_SDR_ADDRESS +
+				     SDR_CTRLGRP_STATICCFG_ADDRESS));
+
 	return 0;
 }
 
diff --git a/drivers/firmware/socfpga_sdr.S b/drivers/firmware/socfpga_sdr.S
new file mode 100644
index 0000000000..d634d63627
--- /dev/null
+++ b/drivers/firmware/socfpga_sdr.S
@@ -0,0 +1,17 @@
+#include <linux/linkage.h>
+
+	.arch	armv7-a
+	.arm
+
+/*
+ * r0 : sdram controller staticcfg
+ */
+
+ENTRY(socfpga_sdram_apply_static_cfg)
+	push {ip,lr}
+	ldr r1, [r0]
+	orr r1, r1, #8
+	str r1, [r0]
+	pop {ip,pc}
+	.align
+ENTRY(socfpga_sdram_apply_static_cfg_end)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
