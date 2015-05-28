Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yy0Aj-0000A4-NL
 for barebox@lists.infradead.org; Thu, 28 May 2015 15:56:46 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 28 May 2015 17:56:06 +0200
Message-Id: <1432828567-14037-8-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1432828567-14037-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1432828567-14037-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 7/8] ARM: socfpga: xload: support qspi bootsource
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Documentation/boards/socfpga.rst                  | 56 ++++++++++++++++++++--
 arch/arm/mach-socfpga/include/mach/generic.h      |  5 ++
 arch/arm/mach-socfpga/include/mach/socfpga-regs.h |  2 +
 arch/arm/mach-socfpga/xload.c                     | 58 ++++++++++++++++++++++-
 4 files changed, 115 insertions(+), 6 deletions(-)

diff --git a/Documentation/boards/socfpga.rst b/Documentation/boards/socfpga.rst
index e956bccbe24a..358e5ab91030 100644
--- a/Documentation/boards/socfpga.rst
+++ b/Documentation/boards/socfpga.rst
@@ -11,10 +11,34 @@ build the ``socfpga-xload_defconfig``; for second stage use the normal
 Bootstrapping
 -------------
 
-The supported bootsource is a SD card. The Boot ROM searches for a partition of
-type A2 and loads what it finds there. When barebox is placed in such a partition
-it will then itself try and mount the second partition of the SD card, which must
-be of type FAT32. On this partition barebox searches for a file called barebox.bin.
+The supported bootsources are: SD card and QSPI.
+
+Bootsource selection
+^^^^^^^^^^^^^^^^^^^^
+
++--------------+-----------+-----------+
+| Board        | BSEL[2:0] | CSEL[1:0] |
++==============+===========+===========+
+| Sockit SD    | 0b100     | 0b00      |
++--------------+-----------+-----------+
+| Sockit QSPI  | 0b110     | 0b00      |
++--------------+-----------+-----------+
+| Socrates SD  | 0b101     | 0b11      |
++--------------+-----------+-----------+
+| Socrates QSPI| 0b111     | 0b11      |
++--------------+-----------+-----------+
+| SocDK SD     | 0b100     | 0b00      |
++--------------+-----------+-----------+
+| SocDK QSPI   | 0b110     | 0b00      |
++--------------+-----------+-----------+
+
+SD card
+^^^^^^^
+
+The Boot ROM searches for a partition of type A2 and loads what it finds there.
+When barebox is placed in such a partition it will then itself try and mount the
+second partition of the SD card, which must be of type FAT32. On this partition
+barebox searches for a file called barebox.bin.
 
 To boot barebox on a Terasic SoCkit, the procedure is as follows (sdb1 is the A2 and
 sdb2 the FAT32 partition)::
@@ -34,6 +58,30 @@ proceed with::
 
 For the EBV Socrates use ``images/barebox-socfpga-socrates(-xload).img`` instead.
 
+QSPI
+^^^^
+
+The Boot ROM loads the preloader starting from address 0x0 on the QSPI flash.
+barebox then searches for a barebox image at the 256K offset and loads it.
+
+The default bootsource is SD card, so to change that to QSPI, you have to::
+
+  make socfpga-xload_defconfig
+  make menuconfig
+
+And then select the options `MTD` and `SPI_CADENCE_QUADSPI`. Now::
+
+  make
+  cat images/barebox-socfpga-<board>-xload.img > /dev/mtd0
+
+For barebox itself, the build step is like for SD card. The resulting image has to be
+written to the offset 256K.
+
+Warning! There is a known issue with booting from QSPI and doing Cold/Warm-Resets.
+Please consult `Rocketboards <http://rocketboards.org/foswiki/Documentation/SocBoardQspiBoot#Serial_Flash_Challenges>`_
+to see how to fix this.
+
+
 Updating handoff files
 ----------------------
 
diff --git a/arch/arm/mach-socfpga/include/mach/generic.h b/arch/arm/mach-socfpga/include/mach/generic.h
index 2f5cda0d0263..1f4247f803e3 100644
--- a/arch/arm/mach-socfpga/include/mach/generic.h
+++ b/arch/arm/mach-socfpga/include/mach/generic.h
@@ -15,4 +15,9 @@ static inline void __udelay(unsigned us)
 	for (i = 0; i < us * 3; i++);
 }
 
+struct socfpga_barebox_part {
+	unsigned int nor_offset;
+	unsigned int nor_size;
+};
+
 #endif /* __MACH_SOCFPGA_GENERIC_H */
diff --git a/arch/arm/mach-socfpga/include/mach/socfpga-regs.h b/arch/arm/mach-socfpga/include/mach/socfpga-regs.h
index b124ed675cfc..e88daf718917 100644
--- a/arch/arm/mach-socfpga/include/mach/socfpga-regs.h
+++ b/arch/arm/mach-socfpga/include/mach/socfpga-regs.h
@@ -2,6 +2,8 @@
 #define __MACH_SOCFPGA_REGS_H
 
 #define CYCLONE5_SDMMC_ADDRESS		0xff704000
+#define CYCLONE5_QSPI_CTRL_ADDRESS	0xff705000
+#define CYCLONE5_QSPI_DATA_ADDRESS	0xffa00000
 #define CYCLONE5_FPGAMGRREGS_ADDRESS	0xff706000
 #define CYCLONE5_GPIO0_BASE		0xff708000
 #define CYCLONE5_GPIO1_BASE		0xff709000
diff --git a/arch/arm/mach-socfpga/xload.c b/arch/arm/mach-socfpga/xload.c
index 3380092168ae..272896b6bda0 100644
--- a/arch/arm/mach-socfpga/xload.c
+++ b/arch/arm/mach-socfpga/xload.c
@@ -1,3 +1,4 @@
+#include <platform_data/cadence_qspi.h>
 #include <platform_data/dw_mmc.h>
 #include <bootsource.h>
 #include <bootstrap.h>
@@ -14,11 +15,19 @@
 #include <linux/stat.h>
 #include <linux/clk.h>
 
+#include <mach/generic.h>
 #include <mach/system-manager.h>
 #include <mach/socfpga-regs.h>
 
+struct socfpga_barebox_part *barebox_part;
+
+static struct socfpga_barebox_part default_part = {
+	.nor_offset = SZ_256K,
+	.nor_size = SZ_1M,
+};
+
 enum socfpga_clks {
-	timer, mmc, uart, clk_max
+	timer, mmc, qspi_clk, uart, clk_max
 };
 
 static struct clk *clks[clk_max];
@@ -35,6 +44,43 @@ static void socfpga_mmc_init(void)
 			IORESOURCE_MEM, &mmc_pdata);
 }
 
+#if defined(CONFIG_SPI_CADENCE_QUADSPI)
+static struct cadence_qspi_platform_data qspi_pdata = {
+	.ext_decoder = 0,
+	.fifo_depth = 128,
+};
+
+static __maybe_unused void add_cadence_qspi_device(int id, resource_size_t ctrl,
+				    resource_size_t data, void *pdata)
+{
+	struct resource *res;
+
+	res = xzalloc(sizeof(struct resource) * 2);
+	res[0].start = ctrl;
+	res[0].end = ctrl + 0x100 - 1;
+	res[0].flags = IORESOURCE_MEM;
+	res[1].start = data;
+	res[1].end = data + 0x100 - 1;
+	res[1].flags = IORESOURCE_MEM;
+
+	add_generic_device_res("cadence_qspi", id, res, 2, pdata);
+}
+
+static __maybe_unused void socfpga_qspi_init(void)
+{
+	clks[qspi_clk] = clk_fixed("qspi_clk", 370000000);
+	clkdev_add_physbase(clks[qspi_clk], CYCLONE5_QSPI_CTRL_ADDRESS, NULL);
+	clkdev_add_physbase(clks[qspi_clk], CYCLONE5_QSPI_DATA_ADDRESS, NULL);
+	add_cadence_qspi_device(0, CYCLONE5_QSPI_CTRL_ADDRESS,
+				CYCLONE5_QSPI_DATA_ADDRESS, &qspi_pdata);
+}
+#else
+static void socfpga_qspi_init(void)
+{
+	return;
+}
+#endif
+
 static struct NS16550_plat uart_pdata = {
 	.clock = 100000000,
 	.shift = 2,
@@ -62,10 +108,19 @@ static __noreturn int socfpga_xload(void)
 	enum bootsource bootsource = bootsource_get();
 	void *buf;
 
+	if (!barebox_part)
+		barebox_part = &default_part;
+
 	switch (bootsource) {
 	case BOOTSOURCE_MMC:
+		socfpga_mmc_init();
 		buf = bootstrap_read_disk("disk0.1", "fat");
 		break;
+	case BOOTSOURCE_SPI:
+		socfpga_qspi_init();
+		buf = bootstrap_read_devfs("mtd0", false, barebox_part->nor_offset,
+					barebox_part->nor_size, SZ_1M);
+		break;
 	default:
 		pr_err("unknown bootsource %d\n", bootsource);
 		hang();
@@ -88,7 +143,6 @@ static int socfpga_devices_init(void)
 	barebox_set_model("SoCFPGA");
 	socfpga_timer_init();
 	socfpga_uart_init();
-	socfpga_mmc_init();
 
 	barebox_main = socfpga_xload;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
