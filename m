Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1expct-00061U-2c
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 07:54:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Mar 2018 08:54:20 +0100
Message-Id: <20180319075420.2919-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: AM335x: Fix invalid register access
To: Barebox List <barebox@lists.infradead.org>

Several DDR3 phy registers are written with the pattern x<<30 | x<<20 | x<<10 | x.
The x<<30 doesn't fit into 32bit which causes a compiler warning.
Looking at the reference manual only the lower 10bit of the registers
have any meaning, so drop the other bogus values. This affects the
registers:

AM33XX_DATA0_RD_DQS_SLAVE_RATIO_0
AM33XX_DATA0_WR_DQS_SLAVE_RATIO_0
AM33XX_DATA0_WR_DQS_SLAVE_RATIO_1
AM33XX_DATA0_WRLVL_INIT_RATIO_0
AM33XX_DATA0_GATELVL_INIT_RATIO_0
AM33XX_DATA0_GATELVL_INIT_RATIO_1
AM33XX_DATA0_FIFO_WE_SLAVE_RATIO_0
AM33XX_DATA0_WR_DATA_SLAVE_RATIO_0

(AM33XX_DATA0_WR_DQS_SLAVE_RATIO_1 and AM33XX_DATA0_GATELVL_INIT_RATIO_1
do not even exist according to the reference manual, but that's another
story.)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/afi-gf/lowlevel.c     | 18 ++++++------------
 arch/arm/boards/beaglebone/lowlevel.c | 26 ++++++--------------------
 2 files changed, 12 insertions(+), 32 deletions(-)

diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
index 91b4b68c6d..dfa202dda3 100644
--- a/arch/arm/boards/afi-gf/lowlevel.c
+++ b/arch/arm/boards/afi-gf/lowlevel.c
@@ -64,33 +64,27 @@ static void board_data_macro_config(int dataMacroNum)
 	if (dataMacroNum == 1)
 		BaseAddrOffset = 0xA4;
 
-	__raw_writel(((DDR2_RD_DQS<<30)|(DDR2_RD_DQS<<20)
-		|(DDR2_RD_DQS<<10)|(DDR2_RD_DQS<<0)),
+	__raw_writel(DDR2_RD_DQS,
 		(AM33XX_DATA0_RD_DQS_SLAVE_RATIO_0 + BaseAddrOffset));
 	__raw_writel(DDR2_RD_DQS>>2,
 		(AM33XX_DATA0_RD_DQS_SLAVE_RATIO_1 + BaseAddrOffset));
-	__raw_writel(((DDR2_WR_DQS<<30)|(DDR2_WR_DQS<<20)
-		|(DDR2_WR_DQS<<10)|(DDR2_WR_DQS<<0)),
+	__raw_writel(DDR2_WR_DQS,
 		(AM33XX_DATA0_WR_DQS_SLAVE_RATIO_0 + BaseAddrOffset));
 	__raw_writel(DDR2_WR_DQS>>2,
 		(AM33XX_DATA0_WR_DQS_SLAVE_RATIO_1 + BaseAddrOffset));
-	__raw_writel(((DDR2_PHY_WRLVL<<30)|(DDR2_PHY_WRLVL<<20)
-		|(DDR2_PHY_WRLVL<<10)|(DDR2_PHY_WRLVL<<0)),
+	__raw_writel(DDR2_PHY_WRLVL,
 		(AM33XX_DATA0_WRLVL_INIT_RATIO_0 + BaseAddrOffset));
 	__raw_writel(DDR2_PHY_WRLVL>>2,
 		(AM33XX_DATA0_WRLVL_INIT_RATIO_1 + BaseAddrOffset));
-	__raw_writel(((DDR2_PHY_GATELVL<<30)|(DDR2_PHY_GATELVL<<20)
-		|(DDR2_PHY_GATELVL<<10)|(DDR2_PHY_GATELVL<<0)),
+	__raw_writel(DDR2_PHY_GATELVL,
 		(AM33XX_DATA0_GATELVL_INIT_RATIO_0 + BaseAddrOffset));
 	__raw_writel(DDR2_PHY_GATELVL>>2,
 		(AM33XX_DATA0_GATELVL_INIT_RATIO_1 + BaseAddrOffset));
-	__raw_writel(((DDR2_PHY_FIFO_WE<<30)|(DDR2_PHY_FIFO_WE<<20)
-		|(DDR2_PHY_FIFO_WE<<10)|(DDR2_PHY_FIFO_WE<<0)),
+	__raw_writel(DDR2_PHY_FIFO_WE,
 		(AM33XX_DATA0_FIFO_WE_SLAVE_RATIO_0 + BaseAddrOffset));
 	__raw_writel(DDR2_PHY_FIFO_WE>>2,
 		(AM33XX_DATA0_FIFO_WE_SLAVE_RATIO_1 + BaseAddrOffset));
-	__raw_writel(((DDR2_PHY_WR_DATA<<30)|(DDR2_PHY_WR_DATA<<20)
-		|(DDR2_PHY_WR_DATA<<10)|(DDR2_PHY_WR_DATA<<0)),
+	__raw_writel(DDR2_PHY_WR_DATA,
 		(AM33XX_DATA0_WR_DATA_SLAVE_RATIO_0 + BaseAddrOffset));
 	__raw_writel(DDR2_PHY_WR_DATA>>2,
 		(AM33XX_DATA0_WR_DATA_SLAVE_RATIO_1 + BaseAddrOffset));
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index a56b4b6240..f2e1690b15 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -48,26 +48,12 @@ static const struct am33xx_emif_regs ddr2_regs = {
 };
 
 static const struct am33xx_ddr_data ddr2_data = {
-	.rd_slave_ratio0        = (DDR2_RD_DQS << 30) | (DDR2_RD_DQS << 20) |
-				(DDR2_RD_DQS << 10) | (DDR2_RD_DQS << 0),
-	.wr_dqs_slave_ratio0    = (DDR2_WR_DQS << 30) | (DDR2_WR_DQS << 20) |
-				(DDR2_WR_DQS << 10) | (DDR2_WR_DQS << 0),
-	.wrlvl_init_ratio0	= (DDR2_PHY_WRLVL << 30) |
-				(DDR2_PHY_WRLVL << 20) |
-				(DDR2_PHY_WRLVL << 10) |
-				(DDR2_PHY_WRLVL << 0),
-	.gatelvl_init_ratio0	= (DDR2_PHY_GATELVL << 30) |
-				(DDR2_PHY_GATELVL << 20) |
-				(DDR2_PHY_GATELVL << 10) |
-				(DDR2_PHY_GATELVL << 0),
-	.fifo_we_slave_ratio0	= (DDR2_PHY_FIFO_WE << 30) |
-				(DDR2_PHY_FIFO_WE << 20) |
-				(DDR2_PHY_FIFO_WE << 10) |
-				(DDR2_PHY_FIFO_WE << 0),
-	.wr_slave_ratio0        = (DDR2_PHY_WR_DATA << 30) |
-				(DDR2_PHY_WR_DATA << 20) |
-				(DDR2_PHY_WR_DATA << 10) |
-				(DDR2_PHY_WR_DATA << 0),
+	.rd_slave_ratio0        = DDR2_RD_DQS,
+	.wr_dqs_slave_ratio0    = DDR2_WR_DQS,
+	.wrlvl_init_ratio0	= DDR2_PHY_WRLVL,
+	.gatelvl_init_ratio0	= DDR2_PHY_GATELVL,
+	.fifo_we_slave_ratio0	= DDR2_PHY_FIFO_WE,
+	.wr_slave_ratio0        = DDR2_PHY_WR_DATA,
 	.use_rank0_delay	= 0x01,
 	.dll_lock_diff0		= 0x0,
 };
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
