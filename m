Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFjYe-0000Mv-PW
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 13:50:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 15:50:15 +0200
Message-Id: <1437054617-1819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: imx6-mmdc: Fix cs0_end calculation
To: Barebox List <barebox@lists.infradead.org>
Cc: Nikita Kiryanov <nikita@compulab.co.il>, embeddedsupport@compulab.co.il

The current calculation does not take the 0x10000000 offset where
SDRAM starts into account. For example with a 1GiB chip density
the current code calculates cs1 start to 0x40000000, but it
has to be 0x10000000 + 0x40000000 = 0x50000000. Add the missing
8 32MiB chunks.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx6-mmdc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
index fb81a15..64fb624 100644
--- a/arch/arm/mach-imx/imx6-mmdc.c
+++ b/arch/arm/mach-imx/imx6-mmdc.c
@@ -1199,7 +1199,7 @@ void mx6_dram_cfg(const struct mx6_ddr_sysinfo *sysinfo,
 	twtr = ROUND(max(4 * clkper, 7500) / clkper, 1) - 1;
 	trcd = trp;
 	trtp = twtr;
-	cs0_end = 4 * sysinfo->cs_density - 1;
+	cs0_end = 4 * sysinfo->cs_density - 1 + 8;
 
 	debug("density:%d Gb (%d Gb per chip)\n",
 	      sysinfo->cs_density, ddr3_cfg->density);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
