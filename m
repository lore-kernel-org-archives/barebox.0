Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gktc7-0001Np-Jz
 for barebox@lists.infradead.org; Sat, 19 Jan 2019 16:36:57 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sat, 19 Jan 2019 17:36:43 +0100
Message-Id: <20190119163647.9119-1-o.rempel@pengutronix.de>
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
Subject: [PATCH 1/5] MIPS: tplink-mr3020: use ar9331_pbl_generic_start
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

most ar9331 boards are almost identical. Remove as match duplicate code
as possible.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/boards/tplink-mr3020/lowlevel.S | 29 +----------------------
 1 file changed, 1 insertion(+), 28 deletions(-)

diff --git a/arch/mips/boards/tplink-mr3020/lowlevel.S b/arch/mips/boards/tplink-mr3020/lowlevel.S
index e3e6a61b78..0a1c193c1e 100644
--- a/arch/mips/boards/tplink-mr3020/lowlevel.S
+++ b/arch/mips/boards/tplink-mr3020/lowlevel.S
@@ -14,33 +14,6 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
-	mips_barebox_10h
-
-	pbl_blt 0xbf000000 skip_pll_ram_config t8
-
-	hornet_mips24k_cp0_setup
-
-	pbl_ar9331_wmac_enable
-
-	hornet_1_1_war
-
-	pbl_ar9331_pll
-	pbl_ar9331_ddr1_config
-
-	/* Initialize caches... */
-	mips_cache_reset
-
-	/* ... and enable them */
-	dcache_enable
-
-skip_pll_ram_config:
-	pbl_ar9331_uart_enable
-	debug_ll_ath79_init
-
-	/*
-	 * It is amazing but we have to enable MDIO on GPIO
-	 * to use GPIO26 for the "WPS" LED and GPIO27 for the "3G" LED.
-	 */
-	pbl_ar9331_mdio_gpio_enable
+	ar9331_pbl_generic_start
 
 ENTRY_FUNCTION_END(BOARD_PBL_START, tplink_mr3020)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
