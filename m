Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fiJy5-00053L-S6
 for barebox@lists.infradead.org; Wed, 25 Jul 2018 13:36:51 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Wed, 25 Jul 2018 15:36:17 +0200
Message-Id: <20180725133618.1510-13-r.hieber@pengutronix.de>
In-Reply-To: <20180725133618.1510-1-r.hieber@pengutronix.de>
References: <20180725133618.1510-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 12/13] ARM: MXS: mxs_power_status: align output
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Exemplary previous behaviour:

  vddio:  3100mV (BO -200mV), Linreg enabled, Linreg offset: -1, FET enabled
  vdda:   1800mV (BO -175mV), Linreg disabled, Linreg offset: -1, FET enabled
  vddd:   1200mV (BO -175mV), Linreg enabled, Linreg offset: -1, FET disabled
  vddmem: 1500mV (BO -25mV), Linreg disabled

After this patch this looks much cleaner:

  vddio:  3100mV (BO -200mV), Linreg  enabled, Linreg offset: -1, FET  enabled
  vdda:   1800mV (BO -175mV), Linreg disabled, Linreg offset: -1, FET  enabled
  vddd:   1200mV (BO -175mV), Linreg  enabled, Linreg offset: -1, FET disabled
  vddmem: 1500mV (BO - 25mV), Linreg disabled

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 arch/arm/mach-mxs/power-init.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
index 3ec17dad19..796d3ae259 100644
--- a/arch/arm/mach-mxs/power-init.c
+++ b/arch/arm/mach-mxs/power-init.c
@@ -39,28 +39,28 @@ static void mxs_power_status(void)
 
 #define __REG_BITS(value, fieldname)  (((value) & fieldname##_MASK) >> fieldname##_OFFSET)
 
-	printf("vddio:  %dmV (BO -%dmV), Linreg enabled, Linreg offset: %d, FET %sabled\n",
+	printf("vddio:  %4dmV (BO -%3dmV), Linreg  enabled, Linreg offset: %1d, FET %sabled\n",
 			__REG_BITS(vddio, POWER_VDDIOCTRL_TRG) * 50 + 2800,
 			__REG_BITS(vddio, POWER_VDDIOCTRL_BO_OFFSET) * 50,
 			linregofs[__REG_BITS(vddio, POWER_VDDIOCTRL_LINREG_OFFSET)],
-			(vddio & POWER_VDDIOCTRL_DISABLE_FET) ? "dis" : "en");
-	printf("vdda:   %dmV (BO -%dmV), Linreg %sabled, Linreg offset: %d, FET %sabled\n",
+			(vddio & POWER_VDDIOCTRL_DISABLE_FET) ? "dis" : " en");
+	printf("vdda:   %4dmV (BO -%3dmV), Linreg %sabled, Linreg offset: %1d, FET %sabled\n",
 			__REG_BITS(vdda, POWER_VDDACTRL_TRG) * 25 + 1500,
 			__REG_BITS(vdda, POWER_VDDACTRL_BO_OFFSET) * 25,
-			(vdda & POWER_VDDACTRL_ENABLE_LINREG) ? "en" : "dis",
+			(vdda & POWER_VDDACTRL_ENABLE_LINREG) ? " en" : "dis",
 			linregofs[__REG_BITS(vdda, POWER_VDDACTRL_LINREG_OFFSET)],
-			(vdda & POWER_VDDACTRL_DISABLE_FET) ? "dis" : "en");
-	printf("vddd:   %dmV (BO -%dmV), Linreg %sabled, Linreg offset: %d, FET %sabled\n",
+			(vdda & POWER_VDDACTRL_DISABLE_FET) ? "dis" : " en");
+	printf("vddd:   %4dmV (BO -%3dmV), Linreg %sabled, Linreg offset: %1d, FET %sabled\n",
 			__REG_BITS(vddd, POWER_VDDDCTRL_TRG) * 25 + 800,
 			__REG_BITS(vddd, POWER_VDDDCTRL_BO_OFFSET) * 25,
-			(vddd & POWER_VDDDCTRL_ENABLE_LINREG) ? "en" : "dis",
+			(vddd & POWER_VDDDCTRL_ENABLE_LINREG) ? " en" : "dis",
 			linregofs[__REG_BITS(vddd, POWER_VDDDCTRL_LINREG_OFFSET)],
-			(vddd & POWER_VDDDCTRL_DISABLE_FET) ? "dis" : "en");
-	printf("vddmem: %dmV (BO -%dmV), Linreg %sabled\n",
+			(vddd & POWER_VDDDCTRL_DISABLE_FET) ? "dis" : " en");
+	printf("vddmem: %4dmV (BO -%3dmV), Linreg %sabled\n",
 			__REG_BITS(vddmem, POWER_VDDMEMCTRL_TRG) * 25 + 1100,
 			/* Note: this area is reserved on i.MX23, yielding 0: */
 			__REG_BITS(vddmem, MX28_POWER_VDDMEMCTRL_BO_OFFSET) * 25,
-			(vddmem & POWER_VDDMEMCTRL_ENABLE_LINREG) ? "en" : "dis");
+			(vddmem & POWER_VDDMEMCTRL_ENABLE_LINREG) ? " en" : "dis");
 }
 
 /*
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
