Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bwTRc-0002LM-O2
 for barebox@lists.infradead.org; Tue, 18 Oct 2016 12:24:37 +0000
Received: by mail-lf0-x241.google.com with SMTP id l131so2598995lfl.0
 for <barebox@lists.infradead.org>; Tue, 18 Oct 2016 05:24:16 -0700 (PDT)
From: yegorslists@googlemail.com
Date: Tue, 18 Oct 2016 14:24:03 +0200
Message-Id: <1476793443-27586-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH] arm: Baltos: setup MPU PLL to run at 600MHz
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/arm/boards/vscom-baltos/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
index 8bce91a..87f2a74 100644
--- a/arch/arm/boards/vscom-baltos/lowlevel.c
+++ b/arch/arm/boards/vscom-baltos/lowlevel.c
@@ -93,7 +93,7 @@ static noinline int baltos_sram_init(void)
 	while (__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
 
 	/* Setup the PLLs and the clocks for the peripherals */
-	am33xx_pll_init(MPUPLL_M_500, DDRPLL_M_400);
+	am33xx_pll_init(MPUPLL_M_600, DDRPLL_M_400);
 	am335x_sdram_init(0x18B, &ddr3_cmd_ctrl, &ddr3_regs, &ddr3_data);
 	sdram_size = get_ram_size((void *)0x80000000, (1024 << 20));
 	if (sdram_size == SZ_256M)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
