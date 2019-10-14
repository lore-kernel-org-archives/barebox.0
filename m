Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzJb-00029R-I7
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:19:09 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 14:18:59 +0200
Message-Id: <20191014121901.19471-11-a.fatoum@pengutronix.de>
In-Reply-To: <20191014121901.19471-1-a.fatoum@pengutronix.de>
References: <20191014121901.19471-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 10/12] ARM: at91: microchip-ksz9477-evb: add debug_ll UART
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The EVB has the dbgu TX on PB31. Pinmux and set up the UART on it when
DEBUG_LL is enabled, so early barebox boot messages can be printed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../boards/microchip-ksz9477-evb/lowlevel.c   | 30 +++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
index 2a72ca321a09..30a5760da6a4 100644
--- a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
+++ b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
@@ -1,7 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-only AND BSD-1-Clause
 /*
+ * Copyright (C) 2014, Atmel Corporation
  * Copyright (C) 2018 Ahmad Fatoum, Pengutronix
- *
- * Under GPLv2
  */
 
 #include <common.h>
@@ -9,8 +9,32 @@
 
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
+#include <mach/at91_pmc_ll.h>
 
 #include <mach/hardware.h>
+#include <mach/iomux.h>
+#include <debug_ll.h>
+#include <mach/at91_dbgu.h>
+
+/* PCK = 528MHz, MCK = 132MHz */
+#define MASTER_CLOCK	132000000
+
+#define sama5d3_pmc_enable_periph_clock(clk) \
+	at91_pmc_enable_periph_clock(IOMEM(SAMA5D3_BASE_PMC), clk)
+
+static void dbgu_init(void)
+{
+	void __iomem *pio = IOMEM(SAMA5D3_BASE_PIOB);
+
+	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_PIOB);
+
+	at91_mux_pio3_pin(pio, pin_to_mask(AT91_PIN_PB31), AT91_MUX_PERIPH_A, 0);
+
+	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_DBGU);
+	at91_dbgu_setup_ll(IOMEM(AT91_BASE_DBGU1), MASTER_CLOCK, 115200);
+
+	putc_ll('>');
+}
 
 extern char __dtb_z_at91_microchip_ksz9477_evb_start[];
 
@@ -22,6 +46,8 @@ ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r0, r1, r2)
 
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE);
 
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		dbgu_init();
 
 	fdt = __dtb_z_at91_microchip_ksz9477_evb_start + get_runtime_offset();
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
