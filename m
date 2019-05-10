Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyua-0008Os-SP
 for barebox@lists.infradead.org; Fri, 10 May 2019 06:21:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 May 2019 08:21:31 +0200
Message-Id: <20190510062135.11534-11-s.hauer@pengutronix.de>
In-Reply-To: <20190510062135.11534-1-s.hauer@pengutronix.de>
References: <20190510062135.11534-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/14] ARM: Layerscape: TQMLS1046a: print life signs when
 debugging
To: Barebox List <barebox@lists.infradead.org>

Do the UART initialization after the SoC specific lowlevel setup and
print the usual '>' when early debuging is enabled. To let this go out
properly it seems we have to wait a small amount of time beforehand.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqmls1046a/lowlevel.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index 88744a8f9b..9815925599 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -246,9 +246,13 @@ static noinline __noreturn void tqmls1046a_r_entry(void)
 				  __dtb_fsl_tqmls1046a_mbls10xxa_start);
 
 	arm_cpu_lowlevel_init();
-	debug_ll_init();
 	ls1046a_init_lowlevel();
 
+	debug_ll_init();
+
+	udelay(500);
+	putc_ll('>');
+
 	fsl_ddr_set_memctl_regs(&ddrc[0], 0);
 
 	ls1046a_errata_post_ddr();
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
