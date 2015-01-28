Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGN7X-0000Ju-8X
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:33:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 08:32:05 +0100
Message-Id: <1422430339-11969-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
References: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/15] ARM: MXS: Fix vddd brownout setting
To: Barebox List <barebox@lists.infradead.org>

The brownout setting can be at maximum 7*25mV below the voltage
setting of the regulator. Set it to the minimum Voltage which is
1325mV.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/power-init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
index 977c6e4..bc3d659 100644
--- a/arch/arm/mach-mxs/power-init.c
+++ b/arch/arm/mach-mxs/power-init.c
@@ -1177,7 +1177,7 @@ static void __mx23_power_init(int has_battery)
 	mxs_enable_output_rail_protection();
 
 	mxs_power_set_vddx(&mx23_vddio_cfg, 3300, 3150);
-	mxs_power_set_vddx(&mxs_vddd_cfg, 1500, 1000);
+	mxs_power_set_vddx(&mxs_vddd_cfg, 1500, 1325);
 	mxs_power_set_vddx(&mxs_vddmem_cfg, 2500, 1700);
 
 	writel(POWER_CTRL_VDDD_BO_IRQ | POWER_CTRL_VDDA_BO_IRQ |
@@ -1234,7 +1234,7 @@ static void __mx28_power_init(int has_battery)
 	mxs_enable_output_rail_protection();
 
 	mxs_power_set_vddx(&mx28_vddio_cfg, 3300, 3150);
-	mxs_power_set_vddx(&mxs_vddd_cfg, 1500, 1000);
+	mxs_power_set_vddx(&mxs_vddd_cfg, 1500, 1325);
 
 	writel(POWER_CTRL_VDDD_BO_IRQ | POWER_CTRL_VDDA_BO_IRQ |
 		POWER_CTRL_VDDIO_BO_IRQ | POWER_CTRL_VDD5V_DROOP_IRQ |
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
