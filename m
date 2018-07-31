Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkS9E-00084h-Ul
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 10:45:06 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS91-0001CI-Ip
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:47 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS98-0000eg-U6
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:54 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 31 Jul 2018 12:44:32 +0200
Message-Id: <20180731104442.2451-10-s.trumtrar@pengutronix.de>
In-Reply-To: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
References: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 09/19] ARM: socfpga: arria10-init: split pinsetup
To: Barebox List <barebox@lists.infradead.org>

Move the setup of the shared- and fpgapins to its own function.
These pins can only be configured and let out of reset after the FPGA has been
programmed.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/reflex-achilles/lowlevel.c   |  1 +
 arch/arm/mach-socfpga/arria10-init.c         | 49 +++++++++++++++-------------
 arch/arm/mach-socfpga/include/mach/generic.h |  2 ++
 3 files changed, 29 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index fe57518cbba4..4c18fa6bca4f 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -26,6 +26,7 @@ static noinline void achilles_entry(void)
 	setup_c();
 
 	arria10_init(&mainpll_cfg, &perpll_cfg, pinmux);
+	arria10_finish_io(&mainpll_cfg, &perpll_cfg, pinmux);
 
 	arria10_ddr_calibration_sequence();
 
diff --git a/arch/arm/mach-socfpga/arria10-init.c b/arch/arm/mach-socfpga/arria10-init.c
index 2b968db5a12e..a1cc74c37413 100644
--- a/arch/arm/mach-socfpga/arria10-init.c
+++ b/arch/arm/mach-socfpga/arria10-init.c
@@ -123,6 +123,32 @@ static void arria10_mask_ecc_errors(void)
 	writel(0x0007FFFF, ARRIA10_SYSMGR_ADDR + 0x94);
 }
 
+void arria10_finish_io(struct arria10_mainpll_cfg *mainpll,
+		       struct arria10_perpll_cfg *perpll,
+		       uint32_t *pinmux)
+{
+	int i;
+
+	/* shared pins */
+	for (i = arria10_pinmux_shared_io_q1_1;
+	     i <= arria10_pinmux_shared_io_q4_12; i++)
+		writel(pinmux[i], ARRIA10_PINMUX_SHARED_3V_IO_GRP_ADDR +
+		       (i - arria10_pinmux_shared_io_q1_1) * sizeof(uint32_t));
+
+	/* usefpga: select source for signals: hps or fpga */
+	for (i = arria10_pinmux_rgmii0_usefpga;
+	     i < arria10_pinmux_max; i++)
+		writel(pinmux[i], ARRIA10_PINMUX_FPGA_INTERFACE_ADDR +
+		       (i - arria10_pinmux_rgmii0_usefpga) * sizeof(uint32_t));
+
+	arria10_reset_deassert_shared_peripherals();
+
+	arria10_reset_deassert_fpga_peripherals();
+
+	INIT_LL();
+
+	puts_ll("lowlevel init done\n");
+}
 /*
  * First C function to initialize the critical hardware early
  */
@@ -169,27 +195,4 @@ void arria10_init(struct arria10_mainpll_cfg *mainpll,
 
 	/* deassert peripheral resets */
 	arria10_reset_deassert_dedicated_peripherals();
-
-	/* wait for fpga_usermode */
-	while ((readl(0xffd03080) & 0x6) == 0);
-
-	/* shared pins */
-	for (i = arria10_pinmux_shared_io_q1_1;
-	     i <= arria10_pinmux_shared_io_q4_12; i++)
-		writel(pinmux[i], ARRIA10_PINMUX_SHARED_3V_IO_GRP_ADDR +
-		       (i - arria10_pinmux_shared_io_q1_1) * sizeof(uint32_t));
-
-	arria10_reset_deassert_shared_peripherals();
-
-	/* usefpga: select source for signals: hps or fpga */
-	for (i = arria10_pinmux_rgmii0_usefpga;
-	     i < arria10_pinmux_max; i++)
-		writel(pinmux[i], ARRIA10_PINMUX_FPGA_INTERFACE_ADDR +
-		       (i - arria10_pinmux_rgmii0_usefpga) * sizeof(uint32_t));
-
-	arria10_reset_deassert_fpga_peripherals();
-
-	INIT_LL();
-
-	puts_ll("lowlevel init done\n");
 }
diff --git a/arch/arm/mach-socfpga/include/mach/generic.h b/arch/arm/mach-socfpga/include/mach/generic.h
index 9d6dd1f26cc6..da9028903cd5 100644
--- a/arch/arm/mach-socfpga/include/mach/generic.h
+++ b/arch/arm/mach-socfpga/include/mach/generic.h
@@ -13,6 +13,8 @@ struct arria10_pinmux_cfg;
 
 void arria10_init(struct arria10_mainpll_cfg *mainpll,
 		  struct arria10_perpll_cfg *perpll, uint32_t *pinmux);
+void arria10_finish_io(struct arria10_mainpll_cfg *mainpll,
+		       struct arria10_perpll_cfg *perpll, uint32_t *pinmux);
 
 void socfpga_lowlevel_init(struct socfpga_cm_config *cm_config,
 			   struct socfpga_io_config *io_config);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
