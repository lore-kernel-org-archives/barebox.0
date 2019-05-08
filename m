Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOITm-0005k1-P4
 for barebox@lists.infradead.org; Wed, 08 May 2019 09:03:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 May 2019 11:03:04 +0200
Message-Id: <20190508090307.17729-8-s.hauer@pengutronix.de>
In-Reply-To: <20190508090307.17729-1-s.hauer@pengutronix.de>
References: <20190508090307.17729-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] ARM: Layerscape: TQMLS1046a: Fix pinmux setup for i2c4
To: Barebox List <barebox@lists.infradead.org>

With this the I2C mux on i2c4 works properly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqmls1046a/board.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boards/tqmls1046a/board.c b/arch/arm/boards/tqmls1046a/board.c
index 5d6d5ad62c..4fc8e76d65 100644
--- a/arch/arm/boards/tqmls1046a/board.c
+++ b/arch/arm/boards/tqmls1046a/board.c
@@ -7,6 +7,7 @@
 #include <linux/sizes.h>
 #include <linux/clk.h>
 #include <linux/clkdev.h>
+#include <soc/fsl/immap_lsch2.h>
 
 static int tqmls1046a_mem_init(void)
 {
@@ -21,11 +22,16 @@ mem_initcall(tqmls1046a_mem_init);
 
 static int tqmls1046a_postcore_init(void)
 {
+	struct ccsr_scfg *scfg = IOMEM(LSCH2_SCFG_ADDR);
+
 	if (!of_machine_is_compatible("tqc,tqmls1046a"))
 		return 0;
 
 	defaultenv_append_directory(defaultenv_tqmls1046a);
 
+	/* Configure iomux for i2c4 */
+	out_be32(&scfg->rcwpmuxcr0, 0x3300);
+
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
