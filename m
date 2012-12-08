Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThNjV-0002PI-Qh
 for barebox@lists.infradead.org; Sat, 08 Dec 2012 16:58:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  8 Dec 2012 17:58:20 +0100
Message-Id: <1354985902-11317-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354985902-11317-1-git-send-email-s.hauer@pengutronix.de>
References: <1354985902-11317-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] ARM omap3: Call common_reset
To: barebox@lists.infradead.org

omap3 has a soc specific reset function, make sure it calls common_reset
so that the proper CPU flags are set.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/omap3_core.S |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-omap/omap3_core.S b/arch/arm/mach-omap/omap3_core.S
index ea55efd..38a8cb4 100644
--- a/arch/arm/mach-omap/omap3_core.S
+++ b/arch/arm/mach-omap/omap3_core.S
@@ -83,6 +83,7 @@ finished_inval:
 	mcr	p15, 2, r10, c0, c0, 0	/* select current cache level in cssr */
 	isb
 #endif /* CONFIG_CPU_V7_DCACHE_SKIP */
+	common_reset r0
 	/* back to arch calling code */
 	b board_init_lowlevel_return
 ENDPROC(reset)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
