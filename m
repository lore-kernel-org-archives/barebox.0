Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4Bux-0006Tt-Mx
 for barebox@lists.infradead.org; Thu, 25 Dec 2014 17:09:44 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 25 Dec 2014 18:08:59 +0100
Message-Id: <1419527345-9301-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1419527345-9301-1-git-send-email-jlu@pengutronix.de>
References: <1419527345-9301-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 2/8] fixup! ARM: mxs: Add lowlevel setup from U-Boot
To: barebox@lists.infradead.org

The current u-boot code only configures vddd once with 1500 mV as the target
and 1000 mV as the brownout trigger.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-mxs/power-init.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
index b4431c4..977c6e4 100644
--- a/arch/arm/mach-mxs/power-init.c
+++ b/arch/arm/mach-mxs/power-init.c
@@ -1178,7 +1178,6 @@ static void __mx23_power_init(int has_battery)
 
 	mxs_power_set_vddx(&mx23_vddio_cfg, 3300, 3150);
 	mxs_power_set_vddx(&mxs_vddd_cfg, 1500, 1000);
-	mxs_power_set_vddx(&mxs_vddd_cfg, 1350, 1200);
 	mxs_power_set_vddx(&mxs_vddmem_cfg, 2500, 1700);
 
 	writel(POWER_CTRL_VDDD_BO_IRQ | POWER_CTRL_VDDA_BO_IRQ |
@@ -1236,7 +1235,6 @@ static void __mx28_power_init(int has_battery)
 
 	mxs_power_set_vddx(&mx28_vddio_cfg, 3300, 3150);
 	mxs_power_set_vddx(&mxs_vddd_cfg, 1500, 1000);
-	mxs_power_set_vddx(&mxs_vddd_cfg, 1350, 1200);
 
 	writel(POWER_CTRL_VDDD_BO_IRQ | POWER_CTRL_VDDA_BO_IRQ |
 		POWER_CTRL_VDDIO_BO_IRQ | POWER_CTRL_VDD5V_DROOP_IRQ |
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
