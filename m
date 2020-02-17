Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hXb-0005BA-An
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 14:38:32 +0000
Received: by mail-ed1-x544.google.com with SMTP id r21so20928069edq.0
 for <barebox@lists.infradead.org>; Mon, 17 Feb 2020 06:38:30 -0800 (PST)
From: yegorslists@googlemail.com
Date: Mon, 17 Feb 2020 15:38:17 +0100
Message-Id: <20200217143817.31360-1-yegorslists@googlemail.com>
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
Subject: [PATCH] arm: baltos: use compressed DTB images
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

This reduces the size of MLO enough to fit into SRAM.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/arm/boards/vscom-baltos/lowlevel.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
index 98bbbaae1..0a220f262 100644
--- a/arch/arm/boards/vscom-baltos/lowlevel.c
+++ b/arch/arm/boards/vscom-baltos/lowlevel.c
@@ -66,7 +66,7 @@ static const struct am33xx_emif_regs ddr3_regs_256mb = {
 
 };
 
-extern char __dtb_am335x_baltos_minimal_start[];
+extern char __dtb_z_am335x_baltos_minimal_start[];
 
 /**
  * @brief The basic entry point for board initialization.
@@ -82,7 +82,7 @@ static noinline void baltos_sram_init(void)
 	uint32_t sdram_size;
 	void *fdt;
 
-	fdt = __dtb_am335x_baltos_minimal_start;
+	fdt = __dtb_z_am335x_baltos_minimal_start;
 
 	/* WDT1 is already running when the bootloader gets control
 	 * Disable it to avoid "random" resets
@@ -132,7 +132,7 @@ ENTRY_FUNCTION(start_am33xx_baltos_sdram, r0, r1, r2)
 	 */
 	__raw_writel(0x000010ff, AM33XX_PRM_RSTTIME);
 
-	fdt = __dtb_am335x_baltos_minimal_start;
+	fdt = __dtb_z_am335x_baltos_minimal_start;
 
 	fdt += get_runtime_offset();
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
