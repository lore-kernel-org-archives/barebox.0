Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6FmG-0004gc-CY
 for barebox@lists.infradead.org; Wed, 11 Apr 2018 13:27:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Apr 2018 15:26:53 +0200
Message-Id: <20180411132654.10620-4-s.hauer@pengutronix.de>
In-Reply-To: <20180411132654.10620-1-s.hauer@pengutronix.de>
References: <20180411132654.10620-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: i.MX6: Add cpu type for 'plus' variants
To: Barebox List <barebox@lists.infradead.org>

We need to distinguish between the i.MX6d/q and the i.MX6d/q plus SoC
variants. Add a cpu type for them to make that possible in the next
steps.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-som-imx6/board.c   |  2 +-
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c |  4 ++--
 arch/arm/mach-imx/imx6.c                  | 16 ++++++++--------
 arch/arm/mach-imx/include/mach/imx6.h     |  8 ++++++++
 4 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 717a22963a..7b63ee0e0c 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -66,7 +66,7 @@ static void phyflex_err006282_workaround(void)
 	mdelay(2);
 	gpio_set_value(MX6_PHYFLEX_ERR006282, 0);
 
-	if (cpu_is_mx6q() || cpu_is_mx6d())
+	if (cpu_is_mx6q() || cpu_is_mx6d() || cpu_is_mx6qp() || cpu_is_mx6dp())
 		mxc_iomux_v3_setup_pad(MX6Q_PAD_SD4_DAT3__GPIO_2_11_PD);
 	else if (cpu_is_mx6dl() || cpu_is_mx6s())
 		mxc_iomux_v3_setup_pad(MX6DL_PAD_SD4_DAT3__GPIO_2_11);
diff --git a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
index c9ef16ae05..48d02ce645 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
@@ -284,7 +284,7 @@ static noinline void rdu2_sram_setup(void)
 	relocate_to_current_adr();
 	setup_c();
 
-	if (__imx6_cpu_revision() == IMX_CHIP_REV_2_0)
+	if (__imx6_cpu_type() == IMX6_CPUTYPE_IMX6QP)
 		write_regs(imx6qp_dcd, ARRAY_SIZE(imx6qp_dcd));
 	else
 		write_regs(imx6q_dcd, ARRAY_SIZE(imx6q_dcd));
@@ -307,7 +307,7 @@ ENTRY_FUNCTION(start_imx6_zii_rdu2, r0, r1, r2)
 	if (get_pc() < MX6_MMDC_PORT01_BASE_ADDR)
 		rdu2_sram_setup();
 
-	if (__imx6_cpu_revision() == IMX_CHIP_REV_2_0)
+	if (__imx6_cpu_type() == IMX6_CPUTYPE_IMX6QP)
 		imx6q_barebox_entry(__dtb_imx6qp_zii_rdu2_start +
 				    get_runtime_offset());
 	else
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 5a7cb7f8bc..88165adee3 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -186,16 +186,16 @@ int imx6_init(void)
 
 	switch (imx6_cpu_type()) {
 	case IMX6_CPUTYPE_IMX6Q:
-		if (mx6_silicon_revision >= IMX_CHIP_REV_2_0)
-			cputypestr = "i.MX6 Quad Plus";
-		else
-			cputypestr = "i.MX6 Quad";
+		cputypestr = "i.MX6 Quad";
+		break;
+	case IMX6_CPUTYPE_IMX6QP:
+		cputypestr = "i.MX6 Quad Plus";
 		break;
 	case IMX6_CPUTYPE_IMX6D:
-		if (mx6_silicon_revision >= IMX_CHIP_REV_2_0)
-			cputypestr = "i.MX6 Dual Plus";
-		else
-			cputypestr = "i.MX6 Dual";
+		cputypestr = "i.MX6 Dual";
+		break;
+	case IMX6_CPUTYPE_IMX6DP:
+		cputypestr = "i.MX6 Dual Plus";
 		break;
 	case IMX6_CPUTYPE_IMX6DL:
 		cputypestr = "i.MX6 DualLite";
diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index 9b538db2ea..e06ca4e235 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -16,7 +16,9 @@ void __noreturn imx6_pm_stby_poweroff(void);
 #define IMX6_CPUTYPE_IMX6DL	0x261
 #define IMX6_CPUTYPE_IMX6SX	0x462
 #define IMX6_CPUTYPE_IMX6D	0x263
+#define IMX6_CPUTYPE_IMX6DP	0x1263
 #define IMX6_CPUTYPE_IMX6Q	0x463
+#define IMX6_CPUTYPE_IMX6QP	0x1463
 #define IMX6_CPUTYPE_IMX6UL	0x164
 #define IMX6_CPUTYPE_IMX6ULL	0x165
 
@@ -69,6 +71,10 @@ static inline int __imx6_cpu_type(void)
 
 	cpu_type |= scu_get_core_count() << 8;
 
+	if ((cpu_type == IMX6_CPUTYPE_IMX6D || cpu_type == IMX6_CPUTYPE_IMX6Q) &&
+	    SI_REV_MAJOR(si_rev) >= 1)
+		cpu_type |= 0x1000;
+
 	return cpu_type;
 }
 
@@ -90,7 +96,9 @@ int imx6_cpu_type(void);
 DEFINE_MX6_CPU_TYPE(mx6s, IMX6_CPUTYPE_IMX6S);
 DEFINE_MX6_CPU_TYPE(mx6dl, IMX6_CPUTYPE_IMX6DL);
 DEFINE_MX6_CPU_TYPE(mx6q, IMX6_CPUTYPE_IMX6Q);
+DEFINE_MX6_CPU_TYPE(mx6qp, IMX6_CPUTYPE_IMX6QP);
 DEFINE_MX6_CPU_TYPE(mx6d, IMX6_CPUTYPE_IMX6D);
+DEFINE_MX6_CPU_TYPE(mx6dp, IMX6_CPUTYPE_IMX6DP);
 DEFINE_MX6_CPU_TYPE(mx6sx, IMX6_CPUTYPE_IMX6SX);
 DEFINE_MX6_CPU_TYPE(mx6sl, IMX6_CPUTYPE_IMX6SL);
 DEFINE_MX6_CPU_TYPE(mx6ul, IMX6_CPUTYPE_IMX6UL);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
