Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1alxut-0002rS-Ck
 for barebox@lists.infradead.org; Fri, 01 Apr 2016 12:11:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Apr 2016 14:10:39 +0200
Message-Id: <1459512644-8581-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1459512644-8581-1-git-send-email-s.hauer@pengutronix.de>
References: <1459512644-8581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] ARM: i.MX6: esdctl: Fix CS0_end for 4GiB/cs
To: Barebox List <barebox@lists.infradead.org>

On i.MX6 a single chipselect can have 4GiB. In this case the calculation
for CS0_end overflows the 7 bit field. Clamp it to 127, the maximum
supported value.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx6-mmdc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
index 146df57..8f661e3 100644
--- a/arch/arm/mach-imx/imx6-mmdc.c
+++ b/arch/arm/mach-imx/imx6-mmdc.c
@@ -1199,7 +1199,7 @@ void mx6_dram_cfg(const struct mx6_ddr_sysinfo *sysinfo,
 	twtr = ROUND(max(4 * clkper, 7500) / clkper, 1) - 1;
 	trcd = trp;
 	trtp = twtr;
-	cs0_end = 4 * sysinfo->cs_density - 1 + 8;
+	cs0_end = min(4 * sysinfo->cs_density - 1 + 8, 127);
 
 	debug("density:%d Gb (%d Gb per chip)\n",
 	      sysinfo->cs_density, ddr3_cfg->density);
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
