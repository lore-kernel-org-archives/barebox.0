Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahzF-0006RK-B8
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:15 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahzA-0006u0-7U
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:08 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:15:00 +0100
Message-Id: <20191129151505.23946-35-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 34/39] ARM: omap: pfc200: NAND support requires
 CONFIG_OMAP_GPMC
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/wago-pfc-am35xx/board-mlo.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/wago-pfc-am35xx/board-mlo.c b/arch/arm/boards/wago-pfc-am35xx/board-mlo.c
index 7925c71a4b53..c940565b4af4 100644
--- a/arch/arm/boards/wago-pfc-am35xx/board-mlo.c
+++ b/arch/arm/boards/wago-pfc-am35xx/board-mlo.c
@@ -48,7 +48,7 @@ static int pfc200_mem_init(void)
 }
 mem_initcall(pfc200_mem_init);
 
-static struct gpmc_nand_platform_data nand_plat = {
+__maybe_unused static struct gpmc_nand_platform_data nand_plat = {
 	.cs = 0,
 	.device_width = 8,
 	.ecc_mode = OMAP_ECC_BCH8_CODE_HW_ROMCODE,
@@ -62,8 +62,8 @@ static int pfc200_init_devices(void)
 	 * WP is made high and WAIT1 active Low
 	 */
 	gpmc_generic_init(0x10);
-#endif
 	omap_add_gpmc_nand_device(&nand_plat);
+#endif
 	omap_set_barebox_part(&pfc200_mlo_part);
 
 	omap3_add_mmc1(NULL);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
