Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Upwdy-0003rp-8C
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 08:24:31 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 04504BF0E0
 for <barebox@lists.infradead.org>; Fri, 21 Jun 2013 10:19:12 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Fri, 21 Jun 2013 10:24:02 +0200
Message-Id: <1371803042-1179-1-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <CAGo_u6pP9djhzUZyOLNewL4kDwcY0A_KW1ZmdHVurCwBUxBEEg@mail.gmail.com>
References: <CAGo_u6pP9djhzUZyOLNewL4kDwcY0A_KW1ZmdHVurCwBUxBEEg@mail.gmail.com>
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
Subject: [PATCH v2] OMAP4 do not set TPS62361_REG_ADDR_SET0
To: barebox@lists.infradead.org

Don't set SET0 voltage, because it acts as boot voltage for OPP boot.
Take care that the kernel doesn't drive vset gpio to low. This may
happen while reseting the gpio module at initialization, look for
HWMOD_INIT_NO_RESET.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
Reviewed-by: Nishanth Menon <nm@ti.com>
---
on top of 88796b1
v2: add Reviewed-by

 arch/arm/mach-omap/omap4_generic.c |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 7200393..bf1f1a7 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -586,11 +586,10 @@ noinline int omap4460_scale_vcores(unsigned vsel0_pin, unsigned volt_mv)
 	writel(0x6026, OMAP44XX_PRM_VC_CFG_I2C_CLK);
 
 	/* TPS - supplies vdd_mpu on 4460
-	 * Setup SET1 and SET0 with right values so that kernel
-	 * can use either of them based on its needs.
+	 * Setup SET1 and don't touch SET0 it acts as boot voltage
+	 * source after reset.
 	 */
 
-	omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET0, volt_mv);
 	omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET1, volt_mv);
 
 	/*
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
