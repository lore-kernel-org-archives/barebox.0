Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLmR-0000cb-88
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:45:52 +0100
Message-Id: <1385484367-15366-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
References: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/17] ARM: Make ENTRY_FUNCTION more robust
To: barebox@lists.infradead.org

An entry function should begin with a exception header. For this to work
properly the entry function should not contain any code which gcc might
put before the header. To make this sure change the ENTRY_FUNCTION macro
so that it generates one function which only contains the exception header
and a second function which contains the original body of the entry function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/dfi-fs700-m60/lowlevel.c           |  8 ++------
 arch/arm/boards/dmo-mx6-realq7/lowlevel.c          |  4 +---
 arch/arm/boards/ebv-socrates/lowlevel.c            |  6 ++----
 arch/arm/boards/efika-mx-smartbook/lowlevel.c      |  4 +---
 arch/arm/boards/freescale-mx51-pdk/lowlevel.c      |  4 +---
 arch/arm/boards/freescale-mx53-loco/lowlevel.c     |  4 +---
 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c    |  4 +---
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c |  4 +---
 arch/arm/boards/gk802/lowlevel.c                   |  4 +---
 arch/arm/boards/phytec-pfla02/lowlevel.c           |  8 ++------
 arch/arm/boards/solidrun-cubox/lowlevel.c          |  4 +---
 arch/arm/boards/terasic-sockit/lowlevel.c          |  8 ++------
 arch/arm/boards/toradex-colibri-t20-iris/entry.c   |  4 +---
 arch/arm/boards/toshiba-ac100/entry.c              |  4 +---
 arch/arm/boards/tqma6x/lowlevel.c                  |  8 ++------
 arch/arm/include/asm/barebox-arm.h                 | 16 +++++++++++++---
 16 files changed, 33 insertions(+), 61 deletions(-)

diff --git a/arch/arm/boards/dfi-fs700-m60/lowlevel.c b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
index 725c58d..2995bd4 100644
--- a/arch/arm/boards/dfi-fs700-m60/lowlevel.c
+++ b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
@@ -61,12 +61,10 @@ static inline void early_uart_init_6s(void)
 
 extern char __dtb_imx6q_dfi_fs700_m60_6q_start[];
 
-ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q)(void)
+ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00940000 - 8);
@@ -80,13 +78,11 @@ ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q)(void)
 
 extern char __dtb_imx6dl_dfi_fs700_m60_6s_start[];
 
-ENTRY_FUNCTION(start_imx6dl_dfi_fs700_m60_6s)(void)
+ENTRY_FUNCTION(start_imx6dl_dfi_fs700_m60_6s, r0, r1, r2)
 {
 	uint32_t fdt;
 	int i;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
diff --git a/arch/arm/boards/dmo-mx6-realq7/lowlevel.c b/arch/arm/boards/dmo-mx6-realq7/lowlevel.c
index 240116d..f47575e 100644
--- a/arch/arm/boards/dmo-mx6-realq7/lowlevel.c
+++ b/arch/arm/boards/dmo-mx6-realq7/lowlevel.c
@@ -140,12 +140,10 @@ static void sdram_init(void)
 
 extern char __dtb_imx6q_dmo_realq7_start[];
 
-ENTRY_FUNCTION(start_imx6_realq7)(void)
+ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00940000 - 8);
diff --git a/arch/arm/boards/ebv-socrates/lowlevel.c b/arch/arm/boards/ebv-socrates/lowlevel.c
index d2f02e0..e93ae38 100644
--- a/arch/arm/boards/ebv-socrates/lowlevel.c
+++ b/arch/arm/boards/ebv-socrates/lowlevel.c
@@ -45,7 +45,7 @@ static inline void ledoff(void)
 
 extern char __dtb_socfpga_cyclone5_socrates_start[];
 
-ENTRY_FUNCTION(start_socfpga_socrates)(void)
+ENTRY_FUNCTION(start_socfpga_socrates, r0, r1, r2)
 {
 	uint32_t fdt;
 
@@ -87,10 +87,8 @@ static noinline void socrates_entry(void)
 	barebox_arm_entry(0x0, SZ_1G, 0);
 }
 
-ENTRY_FUNCTION(start_socfpga_socrates_xload)(void)
+ENTRY_FUNCTION(start_socfpga_socrates_xload, r0, r1, r2)
 {
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(0xffff0000 + SZ_64K - SZ_4K - 16);
diff --git a/arch/arm/boards/efika-mx-smartbook/lowlevel.c b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
index 5a56861..72c8b00 100644
--- a/arch/arm/boards/efika-mx-smartbook/lowlevel.c
+++ b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
@@ -6,12 +6,10 @@
 
 extern char __dtb_imx51_genesi_efika_sb_start[];
 
-ENTRY_FUNCTION(start_imx51_genesi_efikasb)(void)
+ENTRY_FUNCTION(start_imx51_genesi_efikasb, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 	arm_setup_stack(0x20000000 - 16);
 	imx51_init_lowlevel(800);
diff --git a/arch/arm/boards/freescale-mx51-pdk/lowlevel.c b/arch/arm/boards/freescale-mx51-pdk/lowlevel.c
index 8c1acb4..f606011 100644
--- a/arch/arm/boards/freescale-mx51-pdk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-pdk/lowlevel.c
@@ -5,12 +5,10 @@
 
 extern char __dtb_imx51_babbage_start[];
 
-ENTRY_FUNCTION(start_imx51_babbage)(void)
+ENTRY_FUNCTION(start_imx51_babbage, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	fdt = (uint32_t)__dtb_imx51_babbage_start - get_runtime_offset();
diff --git a/arch/arm/boards/freescale-mx53-loco/lowlevel.c b/arch/arm/boards/freescale-mx53-loco/lowlevel.c
index d920524..7556a2e 100644
--- a/arch/arm/boards/freescale-mx53-loco/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-loco/lowlevel.c
@@ -5,12 +5,10 @@
 
 extern char __dtb_imx53_qsb_start[];
 
-ENTRY_FUNCTION(start_imx53_loco)(void)
+ENTRY_FUNCTION(start_imx53_loco, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	fdt = (uint32_t)__dtb_imx53_qsb_start - get_runtime_offset();
diff --git a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
index 5dc23fd..ba356cd 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
@@ -5,12 +5,10 @@
 
 extern char __dtb_imx53_voipac_bsb_start[];
 
-ENTRY_FUNCTION(start_imx53_vmx53)(void)
+ENTRY_FUNCTION(start_imx53_vmx53, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	fdt = (uint32_t)__dtb_imx53_voipac_bsb_start - get_runtime_offset();
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
index a68e09a..b36a39c 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
@@ -5,12 +5,10 @@
 
 extern char __dtb_imx6q_sabrelite_start[];
 
-ENTRY_FUNCTION(start_imx6_sabrelite)(void)
+ENTRY_FUNCTION(start_imx6_sabrelite, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	fdt = (uint32_t)__dtb_imx6q_sabrelite_start - get_runtime_offset();
diff --git a/arch/arm/boards/gk802/lowlevel.c b/arch/arm/boards/gk802/lowlevel.c
index 95b218d..e159ddb 100644
--- a/arch/arm/boards/gk802/lowlevel.c
+++ b/arch/arm/boards/gk802/lowlevel.c
@@ -5,12 +5,10 @@
 
 extern char __dtb_imx6q_gk802_start[];
 
-ENTRY_FUNCTION(start_imx6_gk802)(void)
+ENTRY_FUNCTION(start_imx6_gk802, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	fdt = (uint32_t)__dtb_imx6q_gk802_start - get_runtime_offset();
diff --git a/arch/arm/boards/phytec-pfla02/lowlevel.c b/arch/arm/boards/phytec-pfla02/lowlevel.c
index 6596e92..6422bc4 100644
--- a/arch/arm/boards/phytec-pfla02/lowlevel.c
+++ b/arch/arm/boards/phytec-pfla02/lowlevel.c
@@ -55,12 +55,10 @@ static inline void setup_uart(void)
 
 extern char __dtb_imx6q_phytec_pbab01_start[];
 
-ENTRY_FUNCTION(start_phytec_pbab01_1gib)(void)
+ENTRY_FUNCTION(start_phytec_pbab01_1gib, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
@@ -73,12 +71,10 @@ ENTRY_FUNCTION(start_phytec_pbab01_1gib)(void)
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
 
-ENTRY_FUNCTION(start_phytec_pbab01_2gib)(void)
+ENTRY_FUNCTION(start_phytec_pbab01_2gib, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
diff --git a/arch/arm/boards/solidrun-cubox/lowlevel.c b/arch/arm/boards/solidrun-cubox/lowlevel.c
index fdf5a7e..1fcecb5 100644
--- a/arch/arm/boards/solidrun-cubox/lowlevel.c
+++ b/arch/arm/boards/solidrun-cubox/lowlevel.c
@@ -23,12 +23,10 @@
 
 extern char __dtb_dove_cubox_start[];
 
-ENTRY_FUNCTION(start_solidrun_cubox)(void)
+ENTRY_FUNCTION(start_solidrun_cubox, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	fdt = (uint32_t)__dtb_dove_cubox_start - get_runtime_offset();
diff --git a/arch/arm/boards/terasic-sockit/lowlevel.c b/arch/arm/boards/terasic-sockit/lowlevel.c
index 8a1e0ce..0a4a923 100644
--- a/arch/arm/boards/terasic-sockit/lowlevel.c
+++ b/arch/arm/boards/terasic-sockit/lowlevel.c
@@ -45,12 +45,10 @@ static inline void ledoff(int led)
 
 extern char __dtb_socfpga_cyclone5_sockit_start[];
 
-ENTRY_FUNCTION(start_socfpga_sockit)(void)
+ENTRY_FUNCTION(start_socfpga_sockit, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	fdt = (uint32_t)__dtb_socfpga_cyclone5_sockit_start - get_runtime_offset();
@@ -87,10 +85,8 @@ static noinline void sockit_entry(void)
 	barebox_arm_entry(0x0, SZ_1G, 0);
 }
 
-ENTRY_FUNCTION(start_socfpga_sockit_xload)(void)
+ENTRY_FUNCTION(start_socfpga_sockit_xload, r0, r1, r2)
 {
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(0xffff0000 + SZ_64K - SZ_4K - 16);
diff --git a/arch/arm/boards/toradex-colibri-t20-iris/entry.c b/arch/arm/boards/toradex-colibri-t20-iris/entry.c
index 30a13e0..886613f 100644
--- a/arch/arm/boards/toradex-colibri-t20-iris/entry.c
+++ b/arch/arm/boards/toradex-colibri-t20-iris/entry.c
@@ -22,12 +22,10 @@
 
 extern char __dtb_tegra20_colibri_iris_start[];
 
-ENTRY_FUNCTION(start_toradex_colibri_t20_iris)(void)
+ENTRY_FUNCTION(start_toradex_colibri_t20_iris, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	tegra_cpu_lowlevel_setup();
 
 	fdt = (uint32_t)__dtb_tegra20_colibri_iris_start - get_runtime_offset();
diff --git a/arch/arm/boards/toshiba-ac100/entry.c b/arch/arm/boards/toshiba-ac100/entry.c
index 372d596..45fa56a 100644
--- a/arch/arm/boards/toshiba-ac100/entry.c
+++ b/arch/arm/boards/toshiba-ac100/entry.c
@@ -22,12 +22,10 @@
 
 extern char __dtb_tegra20_paz00_start[];
 
-ENTRY_FUNCTION(start_toshiba_ac100)(void)
+ENTRY_FUNCTION(start_toshiba_ac100, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	tegra_cpu_lowlevel_setup();
 
 	fdt = (uint32_t)__dtb_tegra20_paz00_start - get_runtime_offset();
diff --git a/arch/arm/boards/tqma6x/lowlevel.c b/arch/arm/boards/tqma6x/lowlevel.c
index 8a16abb..a09a2f5 100644
--- a/arch/arm/boards/tqma6x/lowlevel.c
+++ b/arch/arm/boards/tqma6x/lowlevel.c
@@ -41,12 +41,10 @@ static inline void setup_uart(void)
 extern char __dtb_imx6q_mba6x_start[];
 extern char __dtb_imx6dl_mba6x_start[];
 
-ENTRY_FUNCTION(start_imx6q_mba6x)(void)
+ENTRY_FUNCTION(start_imx6q_mba6x, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
@@ -64,12 +62,10 @@ ENTRY_FUNCTION(start_imx6q_mba6x)(void)
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
 
-ENTRY_FUNCTION(start_imx6dl_mba6x)(void)
+ENTRY_FUNCTION(start_imx6dl_mba6x, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 622bd13..faf9afa 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -79,8 +79,18 @@ static inline unsigned long arm_barebox_image_place(unsigned long endmem)
 	return endmem;
 }
 
-#define ENTRY_FUNCTION(name)  \
-	void __naked __section(.text_head_entry_##name) \
-		name
+#define ENTRY_FUNCTION(name, arg0, arg1, arg2)				\
+	static void __##name(uint32_t, uint32_t, uint32_t);		\
+									\
+	void __naked __section(.text_head_entry_##name)	name		\
+				(uint32_t r0, uint32_t r1, uint32_t r2)	\
+		{							\
+			__barebox_arm_head();				\
+			__##name(r0, r1, r2);				\
+		}							\
+		static void __naked noinline __##name			\
+			(uint32_t arg0, uint32_t arg1, uint32_t arg2)
+
+
 
 #endif	/* _BAREBOX_ARM_H_ */
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
