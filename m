Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WfybU-0000Ah-4L
 for barebox@lists.infradead.org; Thu, 01 May 2014 21:33:17 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Wfyb3-00058a-1X
 for barebox@lists.infradead.org; Thu, 01 May 2014 23:32:49 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  1 May 2014 23:32:50 +0200
Message-Id: <1398979972-14446-3-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: beaglebone: remove extra FDT memcpy
To: barebox@lists.infradead.org

Not needed anymore, as barebox now accepts FDTs outside
of it's visible DRAM, as long as it's a valid pointer.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/beaglebone/lowlevel.c | 19 +++----------------
 1 file changed, 3 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 0869cb9f1555..66fd3715c5e5 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -104,9 +104,7 @@ static const struct am33xx_emif_regs ddr3_regs = {
 };
 
 extern char __dtb_am335x_boneblack_start[];
-extern char __dtb_am335x_boneblack_end[];
 extern char __dtb_am335x_bone_start[];
-extern char __dtb_am335x_bone_end[];
 
 /**
  * @brief The basic entry point for board initialization.
@@ -119,19 +117,15 @@ extern char __dtb_am335x_bone_end[];
  */
 static noinline int beaglebone_sram_init(void)
 {
-	uint32_t sdram_start, sdram_size;
-	void *fdt, *fdt_end;
-
-	sdram_start = 0x80000000;
+	uint32_t sdram_size;
+	void *fdt;
 
 	if (is_beaglebone_black()) {
 		sdram_size = SZ_512M;
 		fdt = __dtb_am335x_boneblack_start;
-		fdt_end = __dtb_am335x_boneblack_end;
 	} else {
 		sdram_size = SZ_256M;
 		fdt = __dtb_am335x_bone_start;
-		fdt_end = __dtb_am335x_bone_end;
 	}
 
 	/* WDT1 is already running when the bootloader gets control
@@ -158,14 +152,7 @@ static noinline int beaglebone_sram_init(void)
 	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
 	putc_ll('>');
 
-	/*
-	 * Copy the devicetree blob to sdram so that the barebox code finds it
-	 * inside valid SDRAM instead of SRAM.
-	 */
-	memcpy((void *)sdram_start, fdt, fdt_end - fdt);
-	fdt = sdram_start;
-
-	barebox_arm_entry(sdram_start, sdram_size, fdt);
+	barebox_arm_entry(0x80000000, sdram_size, fdt);
 }
 
 ENTRY_FUNCTION(start_am33xx_beaglebone_sram, bootinfo, r1, r2)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
