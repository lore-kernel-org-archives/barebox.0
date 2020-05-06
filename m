Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFF3-0005wJ-Qp
 for barebox@lists.infradead.org; Wed, 06 May 2020 08:17:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 May 2020 10:17:11 +0200
Message-Id: <20200506081716.20143-8-s.hauer@pengutronix.de>
In-Reply-To: <20200506081716.20143-1-s.hauer@pengutronix.de>
References: <20200506081716.20143-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/13] ARM: mxs: Increase VDDD voltage to match specification
To: Barebox List <barebox@lists.infradead.org>

Adoption of U-Boot commit:

| commit b4a2cdc13ed886b981e8fcd3087293ba9296f17f
| Author: Marek Vasut <marex@denx.de>
| Date:   Tue Oct 15 18:26:57 2019 +0200
|
|     arm: mxs: Increase VDDD voltage to match specification
|
|     According to IMX28CEC rev. 4, 10/2018, Table 15. Recommended Operating
|     Conditions, page 16, the VDDD should be set to 1.55V when the CPU is
|     operating at 454MHz. This is the case in U-Boot, hence increase the
|     VDDD voltage. This fixes instability when performing TFTP transfers.
|     Increase the brownout threshold to 1.4V. The documentation recommends
|     1.45V setting for the brownout, however, this triggers failure during
|     power block init, so keep the brownout slightly lower.
|
|     Signed-off-by: Marek Vasut <marex@denx.de>
|     Cc: Stefano Babic <sbabic@denx.de>
|     Reviewed-by: Fabio Estevam <festevam@gmail.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/power-init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
index ca7c349d7f..c89f1f5f5d 100644
--- a/arch/arm/mach-mxs/power-init.c
+++ b/arch/arm/mach-mxs/power-init.c
@@ -1172,7 +1172,7 @@ static void mx23_ungate_power(void)
 	writel(MX23_POWER_CTRL_CLKGATE, &power_regs->hw_power_ctrl_clr);
 }
 
-struct mxs_power_ctrl mxs_vddd_default    = { .target = 1500, .brownout = 1325 };
+struct mxs_power_ctrl mxs_vddd_default    = { .target = 1550, .brownout = 1400 };
 struct mxs_power_ctrl mxs_vdda_default    = { .target = 1800, .brownout = 1650 };
 struct mxs_power_ctrl mxs_vddio_default   = { .target = 3300, .brownout = 3150 };
 struct mxs_power_ctrl mx23_vddmem_default = { .target = 2500, .brownout = 1700 };
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
