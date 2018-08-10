Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foANi-0007m7-75
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 16:35:21 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Fri, 10 Aug 2018 18:34:58 +0200
Message-Id: <20180810163500.12042-13-r.hieber@pengutronix.de>
In-Reply-To: <20180810163500.12042-1-r.hieber@pengutronix.de>
References: <20180810163500.12042-1-r.hieber@pengutronix.de>
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
Subject: [PATCH v2 12/14] ARM: MXS: mxs_power_status: use less magic values
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

... and in that process fix the erroneous usage of VDDA values when
printing the stats for POWER_VDDDCTRL_DISABLE_FET and all of the
*LINREG_OFFSET bitfields.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 arch/arm/mach-mxs/power-init.c | 37 ++++++++++++++++++----------------
 1 file changed, 20 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
index 060bd9115b..3ec17dad19 100644
--- a/arch/arm/mach-mxs/power-init.c
+++ b/arch/arm/mach-mxs/power-init.c
@@ -37,27 +37,30 @@ static void mxs_power_status(void)
 	uint32_t vddd = readl(&power_regs->hw_power_vdddctrl);
 	uint32_t vddmem = readl(&power_regs->hw_power_vddmemctrl);
 
+#define __REG_BITS(value, fieldname)  (((value) & fieldname##_MASK) >> fieldname##_OFFSET)
+
 	printf("vddio:  %dmV (BO -%dmV), Linreg enabled, Linreg offset: %d, FET %sabled\n",
-			(vddio & 0x1f) * 50 + 2800,
-			((vddio >> 8) & 0x7) * 50,
-			linregofs[((vdda >> 12) & 0x3)],
-			(vddio & (1 << 16)) ? "dis" : "en");
+			__REG_BITS(vddio, POWER_VDDIOCTRL_TRG) * 50 + 2800,
+			__REG_BITS(vddio, POWER_VDDIOCTRL_BO_OFFSET) * 50,
+			linregofs[__REG_BITS(vddio, POWER_VDDIOCTRL_LINREG_OFFSET)],
+			(vddio & POWER_VDDIOCTRL_DISABLE_FET) ? "dis" : "en");
 	printf("vdda:   %dmV (BO -%dmV), Linreg %sabled, Linreg offset: %d, FET %sabled\n",
-			(vdda & 0x1f) * 25 + 1500,
-			((vdda >> 8) & 0x7) * 25,
-			(vdda & (1 << 17)) ? "en" : "dis",
-			linregofs[((vdda >> 12) & 0x3)],
-			(vdda & (1 << 16)) ? "dis" : "en");
+			__REG_BITS(vdda, POWER_VDDACTRL_TRG) * 25 + 1500,
+			__REG_BITS(vdda, POWER_VDDACTRL_BO_OFFSET) * 25,
+			(vdda & POWER_VDDACTRL_ENABLE_LINREG) ? "en" : "dis",
+			linregofs[__REG_BITS(vdda, POWER_VDDACTRL_LINREG_OFFSET)],
+			(vdda & POWER_VDDACTRL_DISABLE_FET) ? "dis" : "en");
 	printf("vddd:   %dmV (BO -%dmV), Linreg %sabled, Linreg offset: %d, FET %sabled\n",
-			(vddd & 0x1f) * 25 + 800,
-			((vddd >> 8) & 0x7) * 25,
-			(vddd & (1 << 21)) ? "en" : "dis",
-			linregofs[((vdda >> 16) & 0x3)],
-			(vdda & (1 << 20)) ? "dis" : "en");
+			__REG_BITS(vddd, POWER_VDDDCTRL_TRG) * 25 + 800,
+			__REG_BITS(vddd, POWER_VDDDCTRL_BO_OFFSET) * 25,
+			(vddd & POWER_VDDDCTRL_ENABLE_LINREG) ? "en" : "dis",
+			linregofs[__REG_BITS(vddd, POWER_VDDDCTRL_LINREG_OFFSET)],
+			(vddd & POWER_VDDDCTRL_DISABLE_FET) ? "dis" : "en");
 	printf("vddmem: %dmV (BO -%dmV), Linreg %sabled\n",
-			(vddmem & 0x1f) * 25 + 1100,
-			((vddmem >> 5) & 0x7) * 25,
-			(vddmem & (1 << 8)) ? "en" : "dis");
+			__REG_BITS(vddmem, POWER_VDDMEMCTRL_TRG) * 25 + 1100,
+			/* Note: this area is reserved on i.MX23, yielding 0: */
+			__REG_BITS(vddmem, MX28_POWER_VDDMEMCTRL_BO_OFFSET) * 25,
+			(vddmem & POWER_VDDMEMCTRL_ENABLE_LINREG) ? "en" : "dis");
 }
 
 /*
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
