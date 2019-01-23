Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmCtY-0000JX-64
 for barebox@lists.infradead.org; Wed, 23 Jan 2019 07:24:21 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 23 Jan 2019 08:24:02 +0100
Message-Id: <20190123072403.30981-3-o.rempel@pengutronix.de>
In-Reply-To: <20190123072403.30981-1-o.rempel@pengutronix.de>
References: <20190123072403.30981-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 2/3] MIPS: black-swift: use ar9331_pbl_generic_start
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

most ar9331 boards are almost identical. Remove as match duplicate code
as possible.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/boards/black-swift/lowlevel.S | 29 +------------------------
 1 file changed, 1 insertion(+), 28 deletions(-)

diff --git a/arch/mips/boards/black-swift/lowlevel.S b/arch/mips/boards/black-swift/lowlevel.S
index 104dd26d1c..0ba77435f8 100644
--- a/arch/mips/boards/black-swift/lowlevel.S
+++ b/arch/mips/boards/black-swift/lowlevel.S
@@ -14,33 +14,6 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
-	mips_barebox_10h
-
-	pbl_ar9331_wmac_enable
-
-	hornet_mips24k_cp0_setup
-
-	pbl_blt 0xbf000000 skip_pll_ram_config t8
-
-	hornet_1_1_war
-
-	pbl_ar9331_pll
-	pbl_ar9331_ddr2_config
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
-	 * to use GPIO27 for LED1.
-	 */
-	pbl_ar9331_mdio_gpio_enable
+	ar9331_pbl_generic_start
 
 ENTRY_FUNCTION_END(BOARD_PBL_START, black_swift)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
