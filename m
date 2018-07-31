Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkS9E-00084Y-3r
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 10:45:01 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS91-0001CA-7Q
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:47 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS98-0000eX-Oh
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:54 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 31 Jul 2018 12:44:29 +0200
Message-Id: <20180731104442.2451-7-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 06/19] ARM: socfpga: arria10: move debug_ll to common code
To: Barebox List <barebox@lists.infradead.org>

Instead of copy+pasting the debug_ll messages to every new board,
move them to the respective functions.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/reflex-achilles/lowlevel.c | 4 ----
 arch/arm/mach-socfpga/arria10-init.c       | 2 ++
 arch/arm/mach-socfpga/arria10-sdram.c      | 2 ++
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index 25e7ad0f1c11..fe57518cbba4 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -27,12 +27,8 @@ static noinline void achilles_entry(void)
 
 	arria10_init(&mainpll_cfg, &perpll_cfg, pinmux);
 
-	puts_ll("lowlevel init done\n");
-
 	arria10_ddr_calibration_sequence();
 
-	puts_ll("SDRAM setup done\n");
-
 	fdt = __dtb_socfpga_arria10_achilles_start + get_runtime_offset();
 
 	barebox_arm_entry(0x0, SZ_2G + SZ_1G, fdt);
diff --git a/arch/arm/mach-socfpga/arria10-init.c b/arch/arm/mach-socfpga/arria10-init.c
index 07256da1db8b..2b968db5a12e 100644
--- a/arch/arm/mach-socfpga/arria10-init.c
+++ b/arch/arm/mach-socfpga/arria10-init.c
@@ -190,4 +190,6 @@ void arria10_init(struct arria10_mainpll_cfg *mainpll,
 	arria10_reset_deassert_fpga_peripherals();
 
 	INIT_LL();
+
+	puts_ll("lowlevel init done\n");
 }
diff --git a/arch/arm/mach-socfpga/arria10-sdram.c b/arch/arm/mach-socfpga/arria10-sdram.c
index 08de0e32cdc5..35c355df71db 100644
--- a/arch/arm/mach-socfpga/arria10-sdram.c
+++ b/arch/arm/mach-socfpga/arria10-sdram.c
@@ -531,5 +531,7 @@ int arria10_ddr_calibration_sequence(void)
 	if (arria10_sdram_firewall_setup())
 		puts_ll("FW: Error Configuring Firewall\n");
 
+	puts_ll("SDRAM setup done\n");
+
 	return 0;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
