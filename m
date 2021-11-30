Delivery-date: Tue, 30 Nov 2021 17:43:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms6EH-0002xz-2a
	for lore@lore.pengutronix.de; Tue, 30 Nov 2021 17:43:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms6EF-00020Y-DN
	for lore@pengutronix.de; Tue, 30 Nov 2021 17:43:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N/SJyv01NkCz3KGaW6mwPgd89YYc0BquuGB4FllEtUg=; b=keCGT/I0XQUbM/
	ubuDLqZhvqK13bznPhS1UdKmw3mlAzLqhGEr7TKmxtBbruX1Q4wpctxk7IC/u1W/vFSVtQ7jksAF3
	O+w7dvma40wTe8uptcq0Lo6nVucTA2u9Vlt6Sr/M+hNIqB0En4AwOSuMpDibk9QsVjIvOceN80/Po
	vcBLDPeILaaPRs9rurf59ZglNkcP1Kwcs0tCFMHIHfa+d84A/JBN7CIFLLAJl6RBReu7y5JrXNv0s
	iX3zQ+euPI9OUlQh2twxhF/BqRWHp7ZhZ71g84qTKlaAC+37uGHa3uxU45t/ftEnGFCnPm5ty8gyj
	tJATIYWNlVT9bi1V8LBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms6CZ-006BMV-Mt; Tue, 30 Nov 2021 16:41:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms6CF-006BGC-2G
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 16:41:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ms6CD-0001hl-Om; Tue, 30 Nov 2021 17:41:33 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1ms6CC-001xGy-FH; Tue, 30 Nov 2021 17:41:31 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ms6CB-0001xD-2m; Tue, 30 Nov 2021 17:41:31 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 30 Nov 2021 17:41:29 +0100
Message-Id: <20211130164129.352923-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; i=b6pbqvPpUzxd2O6Pk/sxlcJuPTO2gXGoUhUe6RjID3c=;
 m=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 p=+nihegTaTgqHL1fiuJUJvqec/WmNsUfn/Cg3us/eAYM=;
 g=99526bb8f08d39afa7bffd467ce727163bf67ae2
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de;
 s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6;
 b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmGmVDYACgkQwfwUeK3K7AmDPQf/WwY
 t1OyrSpQJaaQmK5bQM/qPLN4sxwUpnfpY+fzzDPIvHXshieO3RV9PMjkutQ4rG+ErFVF7Wkj0cusC
 VCpBCmguCeRJOj0bxfAQnUrn6pNbmt5nYlp8rZA/hQl5zuC+HqeBPqTZB5usVMdnT8mvMzP/Qgt4r
 BNitXPzlMGQEAEIn0aCxPWPMJc0fwSsXLHQRP32Ee90zV7mDgzotDevZXGdwS4IyhYsjoRpyRjJm/
 KiTA0N2CGYQLS99lVSZVdfOmIBxsD/gfgd7xR0gyQSKK5LFdU149gdD+xRDipX1YskPL0Eo2hgQEM
 mesO6PWtFo11iaC6rHWR1llHVlreAig==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_084135_468493_52E8D7C6 
X-CRM114-Status: GOOD (  24.12  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] rpi wip
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
 arch/arm/boards/raspberry-pi/Makefile         |  1 +
 arch/arm/boards/raspberry-pi/lowlevel.c       | 11 ++++++++++
 arch/arm/boards/raspberry-pi/rpi-common.c     | 13 ++++++++++++
 arch/arm/cpu/board-dt-2nd-aarch64.S           |  2 +-
 arch/arm/cpu/board-dt-2nd.c                   |  3 +++
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/mach-bcm283x/Kconfig                 | 12 +++++++++++
 arch/arm/mach-bcm283x/include/mach/debug_ll.h | 20 +++++++++++++++++++
 arch/arm/mach-bcm283x/include/mach/mbox.h     |  2 ++
 arch/arm/mach-bcm283x/include/mach/platform.h |  1 +
 common/Kconfig                                |  9 +++++++++
 drivers/mci/mci-bcm2835.c                     | 12 +++++++++--
 drivers/of/address.c                          |  4 ++--
 drivers/regulator/bcm2835.c                   |  2 ++
 drivers/regulator/core.c                      |  1 +
 drivers/serial/serial_ns16550.c               | 18 ++++++++---------
 images/Makefile.bcm283x                       |  6 +++++-
 17 files changed, 102 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/Makefile b/arch/arm/boards/raspberry-pi/Makefile
index ddcf015f0848..a34cdf03ef40 100644
--- a/arch/arm/boards/raspberry-pi/Makefile
+++ b/arch/arm/boards/raspberry-pi/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_MACH_RPI_COMMON) += rpi-common.o
+lwl-$(CONFIG_CPU_V8) += kernel8.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-rpi
diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index d58beb605255..986cc9802952 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -3,6 +3,7 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <mach/platform.h>
+#include <debug_ll.h>
 #include <of.h>
 
 #include "lowlevel.h"
@@ -49,6 +50,8 @@ static inline void start_raspberry_pi(unsigned long memsize, void *fdt,
 	 * for normal function calls to work. */
 	arm_setup_stack(arm_mem_stack_top(membase, membase + memsize));
 
+	putc_ll('>');
+
 	fdt += get_runtime_offset();
 
 	saved_vc_fdt = (void *)(membase + memsize);
@@ -80,3 +83,11 @@ ENTRY_FUNCTION(start_raspberry_pi_cm3, r0, r1, r2)
 {
 	start_raspberry_pi(SZ_512M, __dtb_bcm2837_rpi_cm3_start, (void *)r2);
 }
+
+extern void __start_raspberry_pi4(void *vc_fdt);
+
+extern char __dtb_z_bcm2711_rpi_4_b_start[];
+extern void __start_raspberry_pi4(void *vc_fdt)
+{
+	start_raspberry_pi(SZ_128M, __dtb_z_bcm2711_rpi_4_b_start, vc_fdt);
+}
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 6c5df6fd69b4..a48be7600b44 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -233,6 +233,7 @@ static const struct rpi_model rpi_models_new_scheme[] = {
 	RPI_MODEL(BCM2835_BOARD_REV_ZERO_W, 	"Zero W", 	rpi_0_w_init),
 	RPI_MODEL(BCM2837B0_BOARD_REV_3B_PLUS, 	"Model 3B+", 	rpi_b_plus_init ),
 	RPI_MODEL(BCM2837B0_BOARD_REV_3A_PLUS, 	"Model 3A+", 	rpi_b_plus_init),
+	RPI_MODEL(BCM2711_BOARD_REV_4_B,	"Model 4B",	NULL),
 	RPI_MODEL(0xf, "Unknown model", NULL),
 	RPI_MODEL(BCM2837B0_BOARD_REV_CM3_PLUS, "Compute Module 3+", NULL),
 };
@@ -355,6 +356,13 @@ static int rpi_clock_init(void)
 	clkdev_add_physbase(clk, 0x20300000, NULL);
 	clkdev_add_physbase(clk, 0x3f300000, NULL);
 
+	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_EMMC2,
+					 "bcm2711_emmc2");
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	clkdev_add_physbase(clk, 0xfe340000, NULL);
+
 	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_CORE,
 					  "bcm2835_sdhost");
 	if (IS_ERR(clk))
@@ -371,6 +379,9 @@ static int rpi_console_clock_init(void)
 {
 	struct clk *clk;
 
+	if (of_machine_is_compatible("brcm,bcm2711"))
+		return 0;
+
 	clk = clk_fixed("apb_pclk", 0);
 	clk_register_clkdev(clk, "apb_pclk", NULL);
 
@@ -515,6 +526,8 @@ static int rpi_devices_init(void)
 {
 	struct regulator *reg;
 
+	return 0;
+
 	rpi_add_led();
 	bcm2835_register_fb();
 	armlinux_set_architecture(MACH_TYPE_BCM2708);
diff --git a/arch/arm/cpu/board-dt-2nd-aarch64.S b/arch/arm/cpu/board-dt-2nd-aarch64.S
index d2c9f132cef6..c83fe2adb4df 100644
--- a/arch/arm/cpu/board-dt-2nd-aarch64.S
+++ b/arch/arm/cpu/board-dt-2nd-aarch64.S
@@ -21,7 +21,7 @@ ENTRY("start_dt_2nd")
 	.int   0                   /* reserved (PE-COFF offset) */
 	.asciz "barebox"	   /* unused for now */
 2:
-	mov sp, x1
+	mov sp, 0x20000000
 	/* Stack now grows into the 0x80000 image load offset specified
 	 * above. This is more than enough until FDT /memory is decoded.
 	 */
diff --git a/arch/arm/cpu/board-dt-2nd.c b/arch/arm/cpu/board-dt-2nd.c
index 6f6f53591844..3ca7e6968139 100644
--- a/arch/arm/cpu/board-dt-2nd.c
+++ b/arch/arm/cpu/board-dt-2nd.c
@@ -9,6 +9,7 @@
 #include <asm/cache.h>
 #include <asm/sections.h>
 #include <pbl.h>
+#include <debug_ll.h>
 
 #ifdef CONFIG_CPU_V8
 
@@ -57,6 +58,8 @@ ENTRY_FUNCTION(start_dt_2nd, r0, r1, r2)
 
 	arm_setup_stack(image_start);
 
+	putc_ll('>');
+
 	relocate_to_current_adr();
 	setup_c();
 	barrier();
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 88a079497a36..c06a8f9a5078 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -102,6 +102,7 @@ lwl-$(CONFIG_MACH_RPI) += bcm2835-rpi.dtb.o
 lwl-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
 lwl-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
 lwl-$(CONFIG_MACH_RPI_CM3) += bcm2837-rpi-cm3.dtb.o
+lwl-$(CONFIG_MACH_RPI4) += bcm2711-rpi-4-b.dtb.o
 lwl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
 lwl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o imx6qp-sabresd.dtb.o
 lwl-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
index 9d6a7b2ec2d4..76140f9c4329 100644
--- a/arch/arm/mach-bcm283x/Kconfig
+++ b/arch/arm/mach-bcm283x/Kconfig
@@ -31,6 +31,18 @@ config MACH_RPI_CM3
 	select MACH_RPI_COMMON
 	select ARM_SECURE_MONITOR
 
+config MACH_RPI4
+	bool "RaspberryPi 4 (BCM2711/CORTEX-A72)"
+	select CPU_V8
+	select SYS_SUPPORTS_64BIT_KERNEL
+	select MACH_RPI_COMMON
+	select ARM_USE_COMPRESSED_DTB
+
+if (CPU_V6 || CPU_V7) && CPU_V8
+comment "Error: Can't build multi-image for both 32- and 64-bit in one go"
+comment "Consider Turning off some boards."
+endif
+
 endmenu
 
 endif
diff --git a/arch/arm/mach-bcm283x/include/mach/debug_ll.h b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
index 4bfa5abc7c41..411278433a6d 100644
--- a/arch/arm/mach-bcm283x/include/mach/debug_ll.h
+++ b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
@@ -18,6 +18,7 @@
 #define __MACH_BCM2835_DEBUG_LL_H__
 
 #include <mach/platform.h>
+#include <io.h>
 
 #ifdef CONFIG_DEBUG_RPI1_UART
 
@@ -66,6 +67,25 @@ static inline void debug_ll_init(void)
 	debug_ll_ns16550_init(divisor);
 }
 
+
+#elif defined CONFIG_DEBUG_RPI4_MINI_UART
+
+static inline uint8_t debug_ll_read_reg(int reg)
+{
+	return readb(BCM2711_MINIUART_BASE + (reg << 2));
+}
+
+static inline void debug_ll_write_reg(int reg, uint8_t val)
+{
+	writeb(val, BCM2711_MINIUART_BASE + (reg << 2));
+}
+
+#include <debug_ll/ns16550.h>
+
+static inline void debug_ll_init(void)
+{
+}
+
 #endif
 
 #endif /* __MACH_BCM2835_DEBUG_LL_H__ */
diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h b/arch/arm/mach-bcm283x/include/mach/mbox.h
index f10f5bc14844..da71ce8f650b 100644
--- a/arch/arm/mach-bcm283x/include/mach/mbox.h
+++ b/arch/arm/mach-bcm283x/include/mach/mbox.h
@@ -171,6 +171,7 @@ struct bcm2835_mbox_tag_hdr {
 #define BCM2837B0_BOARD_REV_3B_PLUS   	0x0d
 #define BCM2837B0_BOARD_REV_3A_PLUS   	0x0e
 #define BCM2837B0_BOARD_REV_CM3_PLUS	0x10
+#define BCM2711_BOARD_REV_4_B		0x11
 
 struct bcm2835_mbox_tag_get_board_rev {
 	struct bcm2835_mbox_tag_hdr tag_hdr;
@@ -272,6 +273,7 @@ struct bcm2835_mbox_tag_set_power_state {
 #define BCM2835_MBOX_CLOCK_ID_SDRAM	8
 #define BCM2835_MBOX_CLOCK_ID_PIXEL	9
 #define BCM2835_MBOX_CLOCK_ID_PWM	10
+#define BCM2835_MBOX_CLOCK_ID_EMMC2	12
 
 struct bcm2835_mbox_tag_get_clock_rate {
 	struct bcm2835_mbox_tag_hdr tag_hdr;
diff --git a/arch/arm/mach-bcm283x/include/mach/platform.h b/arch/arm/mach-bcm283x/include/mach/platform.h
index 310f2463f2e5..3cbd01a36d03 100644
--- a/arch/arm/mach-bcm283x/include/mach/platform.h
+++ b/arch/arm/mach-bcm283x/include/mach/platform.h
@@ -34,6 +34,7 @@
 #define BCM2836_PL011_BASE 0x3f201000
 #define BCM2835_MINIUART_BASE 0x20215040
 #define BCM2836_MINIUART_BASE 0x3f215040
+#define BCM2711_MINIUART_BASE 0xfe215040UL
 
 #endif
 
diff --git a/common/Kconfig b/common/Kconfig
index f4120b2083ee..cda0be055eed 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1388,10 +1388,19 @@ config DEBUG_RPI2_3_UART
 config DEBUG_RPI3_MINI_UART
 	bool "RaspberryPi 3 mini UART"
 	depends on ARCH_BCM283X
+	select DEBUG_LL_NS16550
 	help
 	  Say Y here if you want low-level debugging support on
 	  RaspberryPi 3 board mini UART.
 
+config DEBUG_RPI4_MINI_UART
+	bool "RaspberryPi 4 mini UART"
+	depends on ARCH_BCM283X
+	select DEBUG_LL_NS16550
+	help
+	  Say Y here if you want low-level debugging support on
+	  RaspberryPi 4 board mini UART.
+
 config DEBUG_ERIZO
 	bool "Erizo ns16550 port"
 	depends on SOC_ERIZO
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 10f588930cda..d5d96716bc86 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -208,7 +208,7 @@ static u32 bcm2835_mci_get_clock_divider(struct bcm2835_mci_host *host,
 	dev_dbg(host->hw_dev,
 			"Wanted %d hz, returning divider %d (%d) which yields %d hz\n",
 			desired_hz, div >> 1, div, host->max_clock / div);
-	twoticks_delay = ((2 * 1000000000) / (host->max_clock / div)) + 1;
+	twoticks_delay = ((2 * 1000000000) / MIN_FREQ) + 1;
 
 	div = div >> 1;
 	host->clock = desired_hz;
@@ -233,6 +233,8 @@ static void bcm2835_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	current_val = sdhci_read32(&host->sdhci,
 			SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL);
 
+	current_val |= 0xf00;
+
 	switch (ios->bus_width) {
 	case MMC_BUS_WIDTH_4:
 		sdhci_write32(&host->sdhci,
@@ -307,7 +309,7 @@ static int bcm2835_mci_reset(struct mci_host *mci, struct device_d *mci_dev)
 {
 	struct bcm2835_mci_host *host;
 	u32 ret = 0;
-	u32 reset = CONTROL1_HOSTRST | CONTROL1_CMDRST | CONTROL1_DATARST;
+	u32 reset = CONTROL1_HOSTRST; // | CONTROL1_CMDRST | CONTROL1_DATARST;
 	u32 enable = 0;
 	u32 divider;
 	u32 divider_msb, divider_lsb;
@@ -361,6 +363,10 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 	struct bcm2835_mci_host *host;
 	static struct clk *clk;
 	int ret;
+	struct regulator *reg;
+
+	reg = regulator_get_name("bcm2835_mci0");
+	regulator_enable(reg);
 
 	clk = clk_get(hw_dev, NULL);
 	if (IS_ERR(clk)) {
@@ -425,6 +431,8 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 static __maybe_unused struct of_device_id bcm2835_mci_compatible[] = {
 	{
 		.compatible = "brcm,bcm2835-sdhci",
+	}, {
+		.compatible = "brcm,bcm2711-emmc2",
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/of/address.c b/drivers/of/address.c
index 4cfec0a45a89..ee69546e9aa9 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -668,8 +668,8 @@ int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr, u64 *siz
 	dmaaddr = of_read_number(ranges, naddr);
 	*paddr = of_translate_dma_address(node, ranges + naddr);
 	if (*paddr == OF_BAD_ADDR) {
-		pr_err("translation of DMA address(%llx) to CPU address failed node(%pOF)\n",
-		       dmaaddr, np);
+		pr_err("translation of DMA address(%llx) to CPU address failed node(%s)\n",
+		       dmaaddr, np->name);
 		ret = -EINVAL;
 		goto out;
 	}
diff --git a/drivers/regulator/bcm2835.c b/drivers/regulator/bcm2835.c
index 3351e6d2f3de..01b9a2d38929 100644
--- a/drivers/regulator/bcm2835.c
+++ b/drivers/regulator/bcm2835.c
@@ -122,6 +122,8 @@ static int regulator_bcm2835_probe(struct device_d *dev)
 		rb->rdev.desc = &rb->rdesc;
 		rb->rdev.dev = dev;
 
+		regulator_bcm2835_set(&rb->rdev, BCM2835_MBOX_SET_POWER_STATE_REQ_ON);
+
 		ret = dev_regulator_register(&rb->rdev, rb->devname, NULL);
 		if (ret)
 			return ret;
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 7eb849cd31f2..f8c325403206 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -49,6 +49,7 @@ static int regulator_enable_internal(struct regulator_internal *ri)
 		return 0;
 	}
 
+	pr_info("%s: enabled_count = %d\n", ri->name, ri->enable_count);
 	if (!ri->rdev->desc->ops->enable)
 		return -ENOSYS;
 
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 464ae1aebc33..7ab24a2258e4 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -185,6 +185,8 @@ static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate)
 	unsigned int baud_divisor = ns16550_calc_divisor(cdev, baud_rate);
 	struct ns16550_priv *priv = to_ns16550_priv(cdev);
 
+	return 0;
+
 	ns16550_write(cdev, LCR_BKSE, lcr);
 	ns16550_write(cdev, baud_divisor & 0xff, dll);
 	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
@@ -240,21 +242,17 @@ static void ns16550_jz_init_port(struct console_device *cdev)
 	ns16550_serial_init_port(cdev);
 }
 
-#define BCM2836_AUX_CLOCK_ENB 0x3f215004 /* BCM2835 AUX Clock enable register */
-#define BCM2836_AUX_CLOCK_EN_UART BIT(0) /* Bit 0 enables the Miniuart */
-
 static void rpi_init_port(struct console_device *cdev)
 {
 	struct ns16550_priv *priv = to_ns16550_priv(cdev);
 
-	writeb(BCM2836_AUX_CLOCK_EN_UART, BCM2836_AUX_CLOCK_ENB);
 	priv->plat.shift = 2;
 	/*
 	 * We double the clock rate since the 16550 will divide by 16
 	 * (instead of 8 required by the BCM2835 peripheral manual)
 	 */
-	priv->plat.clock = priv->plat.clock*2;
-	ns16550_serial_init_port(cdev);
+	//priv->plat.clock = priv->plat.clock*2;
+	//ns16550_serial_init_port(cdev);
 }
 
 /*********** Exposed Functions **********************************/
@@ -482,13 +480,13 @@ static int ns16550_probe(struct device_d *dev)
 		if (IS_ERR(priv->clk)) {
 			ret = PTR_ERR(priv->clk);
 			dev_err(dev, "failed to get clk (%d)\n", ret);
-			goto err;
+			//goto err;
 		}
-		clk_enable(priv->clk);
-		priv->plat.clock = clk_get_rate(priv->clk);
+		//clk_enable(priv->clk);
+		//priv->plat.clock = clk_get_rate(priv->clk);
 	}
 
-	if (priv->plat.clock == 0) {
+	if (0 && priv->plat.clock == 0) {
 		dev_err(dev, "no valid clockrate\n");
 		ret = -EINVAL;
 		goto err;
diff --git a/images/Makefile.bcm283x b/images/Makefile.bcm283x
index 3fd2c3d06ac9..d33686787134 100644
--- a/images/Makefile.bcm283x
+++ b/images/Makefile.bcm283x
@@ -16,4 +16,8 @@ image-$(CONFIG_MACH_RPI3) += barebox-raspberry-pi-3.img
 
 pblb-$(CONFIG_MACH_RPI_CM3) += start_raspberry_pi_cm3
 FILE_barebox-raspberry-pi-cm3.img = start_raspberry_pi_cm3.pblb
-image-$(CONFIG_MACH_RPI_CM3) += barebox-raspberry-pi-cm3.img
\ No newline at end of file
+image-$(CONFIG_MACH_RPI_CM3) += barebox-raspberry-pi-cm3.img
+
+pblb-$(CONFIG_MACH_RPI4) += start_raspberry_pi4
+FILE_barebox-raspberry-pi-4.img = start_raspberry_pi4.pblb
+image-$(CONFIG_MACH_RPI4) += barebox-raspberry-pi-4.img

base-commit: f2dd8896846757829fb3033f41b89be3fc037d78
prerequisite-patch-id: 8faa631abbcf48b93cf7618f88599de1ce131519
prerequisite-patch-id: 0f5b58ec51a7c62574b4959d8eacb4a71584ce43
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

