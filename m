Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eNbvv-0001kR-CR
 for barebox@lists.infradead.org; Sat, 09 Dec 2017 10:00:37 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sat,  9 Dec 2017 10:59:37 +0100
Message-Id: <20171209095938.30160-3-linux@rempel-privat.de>
In-Reply-To: <20171209095938.30160-1-linux@rempel-privat.de>
References: <20171209095938.30160-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 3/4] MIPS: ath79: ar9331: add ar9331_pbl_generic_start macro
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Most of ar9331 boards have identical PBL. So we can sync the code
to single macro.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/mach-ath79/include/mach/pbl_macros.h | 35 ++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/mips/mach-ath79/include/mach/pbl_macros.h b/arch/mips/mach-ath79/include/mach/pbl_macros.h
index 9e4859b19..906d73e8c 100644
--- a/arch/mips/mach-ath79/include/mach/pbl_macros.h
+++ b/arch/mips/mach-ath79/include/mach/pbl_macros.h
@@ -368,4 +368,39 @@ normal_path:
 	.set	pop
 .endm
 
+	.macro	ar9331_pbl_generic_start
+	.set	push
+	.set	noreorder
+
+	mips_barebox_10h
+
+	pbl_blt 0xbf000000 skip_pll_ram_config t8
+
+	hornet_mips24k_cp0_setup
+
+	pbl_ar9331_wmac_enable
+
+	hornet_1_1_war
+
+	pbl_ar9331_pll
+	pbl_ar9331_ram_generic_config
+
+skip_pll_ram_config:
+	/* Initialize caches... */
+	mips_cache_reset
+
+	/* ... and enable them */
+	dcache_enable
+
+	pbl_ar9331_uart_enable
+	debug_ll_ar9331_init
+	mips_nmon
+
+	pbl_ar9331_mdio_gpio_enable
+
+	copy_to_link_location	pbl_start
+
+	.set	pop
+	.endm
+
 #endif /* __ASM_MACH_ATH79_PBL_MACROS_H */
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
