Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WfybU-0000Aj-4G
 for barebox@lists.infradead.org; Thu, 01 May 2014 21:33:17 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Wfyb3-00058a-3W
 for barebox@lists.infradead.org; Thu, 01 May 2014 23:32:49 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  1 May 2014 23:32:52 +0200
Message-Id: <1398979972-14446-5-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1398979972-14446-1-git-send-email-l.stach@pengutronix.de>
References: <1398979972-14446-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: phycore-am33xx: remove extra FDT memcpy
To: barebox@lists.infradead.org

Not needed anymore, as barebox now accepts FDTs outside
of it's visible DRAM, as long as it's a valid pointer.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-am335x/lowlevel.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/phytec-phycore-am335x/lowlevel.c b/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
index a413b677538f..f04961dbf7d5 100644
--- a/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
@@ -47,7 +47,6 @@ static const struct am33xx_ddr_data MT41J256M8HX15E_2x256M8_data = {
 };
 
 extern char __dtb_am335x_phytec_phycore_start[];
-extern char __dtb_am335x_phytec_phycore_end[];
 
 /**
  * @brief The basic entry point for board initialization.
@@ -60,7 +59,6 @@ extern char __dtb_am335x_phytec_phycore_end[];
  */
 static noinline void pcm051_board_init(void)
 {
-	uint32_t sdram = 0x80000000;
 	void *fdt;
 
 	/* WDT1 is already running when the bootloader gets control
@@ -83,16 +81,9 @@ static noinline void pcm051_board_init(void)
 	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
 	putc_ll('>');
 
-	/*
-	 * Copy the devicetree blob to sdram so that the barebox code finds it
-	 * inside valid SDRAM instead of SRAM.
-	 */
-	memcpy((void *)sdram, __dtb_am335x_phytec_phycore_start,
-			__dtb_am335x_phytec_phycore_end -
-			__dtb_am335x_phytec_phycore_start);
-	fdt = (void *)sdram;
+	fdt = __dtb_am335x_phytec_phycore_start - get_runtime_offset();
 
-	barebox_arm_entry(sdram, SZ_512M, fdt);
+	barebox_arm_entry(0x80000000, SZ_512M, fdt);
 }
 
 ENTRY_FUNCTION(start_am33xx_phytec_phycore_sram, bootinfo, r1, r2)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
