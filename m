Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1erMQg-0007G5-Fy
 for barebox@lists.infradead.org; Thu, 01 Mar 2018 11:31:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Mar 2018 12:31:05 +0100
Message-Id: <20180301113105.18150-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: am335x: beaglebone: Fix DDR register values
To: Barebox List <barebox@lists.infradead.org>

For the DDR2 PHY register values there are tons of warnings that more
than 32bit are required to store the values. Looking at the reference
manual it seems only the lower ten bits have any meaning, so drop all
other values.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/lowlevel.c | 26 ++++++--------------------
 1 file changed, 6 insertions(+), 20 deletions(-)

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
