Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FDp-0006e0-SH
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 08:40:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  9 Sep 2019 10:40:27 +0200
Message-Id: <20190909084027.24098-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Cleanup stack offset cargo cult
To: Barebox List <barebox@lists.infradead.org>

Most callers of arm_setup_stack substract a fixed offset of 8, 12 or 16
bytes from the stack top. This is unnecessary as on ARM we have a stack
that decrements before storing values. Substracting this offset probably
goes back to the U-Boot version we forked from. Stop this now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/animeo_ip/lowlevel.c              | 2 +-
 arch/arm/boards/at91sam9260ek/lowlevel.c          | 2 +-
 arch/arm/boards/at91sam9261ek/lowlevel_init.c     | 2 +-
 arch/arm/boards/at91sam9263ek/lowlevel_init.c     | 2 +-
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c       | 2 +-
 arch/arm/boards/at91sam9m10ihd/lowlevel.c         | 2 +-
 arch/arm/boards/at91sam9n12ek/lowlevel.c          | 2 +-
 arch/arm/boards/at91sam9x5ek/lowlevel.c           | 2 +-
 arch/arm/boards/ccxmx51/lowlevel.c                | 2 +-
 arch/arm/boards/ccxmx53/lowlevel.c                | 4 ++--
 arch/arm/boards/datamodul-edm-qmx6/lowlevel.c     | 2 +-
 arch/arm/boards/dfi-fs700-m60/lowlevel.c          | 6 +++---
 arch/arm/boards/digi-ccimx6ulsom/lowlevel.c       | 2 +-
 arch/arm/boards/dss11/lowlevel.c                  | 2 +-
 arch/arm/boards/efika-mx-smartbook/lowlevel.c     | 2 +-
 arch/arm/boards/eltec-hipercam/lowlevel.c         | 2 +-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c        | 2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c        | 2 +-
 arch/arm/boards/eukrea_cpuimx51/lowlevel.c        | 2 +-
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c | 2 +-
 arch/arm/boards/freescale-mx53-qsb/lowlevel.c     | 4 ++--
 arch/arm/boards/freescale-mx53-smd/lowlevel.c     | 2 +-
 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c   | 2 +-
 arch/arm/boards/grinn-liteboard/lowlevel.c        | 2 +-
 arch/arm/boards/guf-cupid/lowlevel.c              | 2 +-
 arch/arm/boards/guf-neso/lowlevel.c               | 2 +-
 arch/arm/boards/guf-santaro/lowlevel.c            | 2 +-
 arch/arm/boards/guf-vincell/lowlevel.c            | 2 +-
 arch/arm/boards/haba-knx/lowlevel.c               | 2 +-
 arch/arm/boards/karo-tx25/lowlevel.c              | 2 +-
 arch/arm/boards/karo-tx51/lowlevel.c              | 2 +-
 arch/arm/boards/karo-tx53/lowlevel.c              | 2 +-
 arch/arm/boards/karo-tx6x/lowlevel.c              | 8 ++++----
 arch/arm/boards/kindle-mx50/lowlevel.c            | 6 +++---
 arch/arm/boards/kindle3/lowlevel.c                | 2 +-
 arch/arm/boards/kontron-samx6i/lowlevel.c         | 2 +-
 arch/arm/boards/microchip-ksz9477-evb/lowlevel.c  | 2 +-
 arch/arm/boards/mx31moboard/lowlevel.c            | 2 +-
 arch/arm/boards/nxp-imx6ull-evk/lowlevel.c        | 2 +-
 arch/arm/boards/phytec-phycard-imx27/lowlevel.c   | 4 ++--
 arch/arm/boards/phytec-phycore-imx27/lowlevel.c   | 2 +-
 arch/arm/boards/phytec-phycore-imx31/lowlevel.c   | 2 +-
 arch/arm/boards/phytec-phycore-imx35/lowlevel.c   | 2 +-
 arch/arm/boards/phytec-som-imx6/lowlevel.c        | 4 ++--
 arch/arm/boards/pm9261/lowlevel_init.c            | 2 +-
 arch/arm/boards/pm9263/lowlevel_init.c            | 2 +-
 arch/arm/boards/pm9g45/lowlevel.c                 | 2 +-
 arch/arm/boards/qil-a926x/lowlevel.c              | 2 +-
 arch/arm/boards/raspberry-pi/lowlevel.c           | 2 +-
 arch/arm/boards/reflex-achilles/lowlevel.c        | 4 ++--
 arch/arm/boards/sama5d3_xplained/lowlevel.c       | 2 +-
 arch/arm/boards/sama5d3xek/lowlevel.c             | 2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c       | 2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c              | 2 +-
 arch/arm/boards/technexion-pico-hobbit/lowlevel.c | 2 +-
 arch/arm/boards/technexion-wandboard/lowlevel.c   | 2 +-
 arch/arm/boards/telit-evk-pro3/lowlevel.c         | 2 +-
 arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c    | 2 +-
 arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c    | 2 +-
 arch/arm/boards/tqma53/lowlevel.c                 | 4 ++--
 arch/arm/boards/tqma6x/lowlevel.c                 | 4 ++--
 arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c    | 2 +-
 arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c    | 2 +-
 arch/arm/boards/variscite-mx6/lowlevel.c          | 2 +-
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c         | 2 +-
 arch/arm/cpu/entry.c                              | 2 +-
 arch/arm/mach-socfpga/include/mach/lowlevel.h     | 2 +-
 arch/arm/mach-tegra/include/mach/lowlevel.h       | 2 +-
 68 files changed, 82 insertions(+), 82 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/lowlevel.c b/arch/arm/boards/animeo_ip/lowlevel.c
index 25352672d7..7f52f824df 100644
--- a/arch/arm/boards/animeo_ip/lowlevel.c
+++ b/arch/arm/boards/animeo_ip/lowlevel.c
@@ -18,7 +18,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1,
 			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
diff --git a/arch/arm/boards/at91sam9260ek/lowlevel.c b/arch/arm/boards/at91sam9260ek/lowlevel.c
index 25352672d7..7f52f824df 100644
--- a/arch/arm/boards/at91sam9260ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9260ek/lowlevel.c
@@ -18,7 +18,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1,
 			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
diff --git a/arch/arm/boards/at91sam9261ek/lowlevel_init.c b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
index 0d7f6d6590..bb9b905c65 100644
--- a/arch/arm/boards/at91sam9261ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
@@ -121,7 +121,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9261_SRAM_BASE + AT91SAM9261_SRAM_SIZE - 16);
+	arm_setup_stack(AT91SAM9261_SRAM_BASE + AT91SAM9261_SRAM_SIZE);
 
 	at91sam9261ek_init();
 }
diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index f5d68cd7e8..ba0ae39c7f 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -123,7 +123,7 @@ ENTRY_FUNCTION(start_at91sam9263ek, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
+	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE);
 
 	if (IS_ENABLED(CONFIG_MACH_AT91SAM9263EK_DT))
 		fdt = __dtb_at91sam9263ek_start + get_runtime_offset();
diff --git a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
index 1d83cdf0bf..0f3a035d1d 100644
--- a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
@@ -17,7 +17,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9G45_SRAM_BASE + AT91SAM9G45_SRAM_SIZE - 16);
+	arm_setup_stack(AT91SAM9G45_SRAM_BASE + AT91SAM9G45_SRAM_SIZE);
 
 	barebox_arm_entry(AT91_CHIPSELECT_6, at91sam9g45_get_ddram_size(1),
 	                  NULL);
diff --git a/arch/arm/boards/at91sam9m10ihd/lowlevel.c b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
index 4ccbb93557..e07ff892cd 100644
--- a/arch/arm/boards/at91sam9m10ihd/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
@@ -18,7 +18,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9G45_SRAM_BASE + AT91SAM9G45_SRAM_SIZE - 16);
+	arm_setup_stack(AT91SAM9G45_SRAM_BASE + AT91SAM9G45_SRAM_SIZE);
 
 	barebox_arm_entry(AT91_CHIPSELECT_6, at91sam9g45_get_ddram_size(1),
 	                  NULL);
diff --git a/arch/arm/boards/at91sam9n12ek/lowlevel.c b/arch/arm/boards/at91sam9n12ek/lowlevel.c
index f57e439b9e..5bc18f8fca 100644
--- a/arch/arm/boards/at91sam9n12ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9n12ek/lowlevel.c
@@ -17,7 +17,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9N12_SRAM_BASE + AT91SAM9N12_SRAM_SIZE - 16);
+	arm_setup_stack(AT91SAM9N12_SRAM_BASE + AT91SAM9N12_SRAM_SIZE);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9n12_get_ddram_size(),
 	                  NULL);
diff --git a/arch/arm/boards/at91sam9x5ek/lowlevel.c b/arch/arm/boards/at91sam9x5ek/lowlevel.c
index 50119108c9..9033597e7c 100644
--- a/arch/arm/boards/at91sam9x5ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
@@ -14,7 +14,7 @@ ENTRY_FUNCTION(start_at91sam9x5ek, r0, r1, r2)
 	void *fdt;
 
 	arm_cpu_lowlevel_init();
-	arm_setup_stack(AT91SAM9X5_SRAM_BASE + AT91SAM9X5_SRAM_SIZE - 16);
+	arm_setup_stack(AT91SAM9X5_SRAM_BASE + AT91SAM9X5_SRAM_SIZE);
 
 	fdt = __dtb_at91sam9x5ek_start + get_runtime_offset();
 
diff --git a/arch/arm/boards/ccxmx51/lowlevel.c b/arch/arm/boards/ccxmx51/lowlevel.c
index 462c22e284..adcb30a7ff 100644
--- a/arch/arm/boards/ccxmx51/lowlevel.c
+++ b/arch/arm/boards/ccxmx51/lowlevel.c
@@ -15,7 +15,7 @@ ENTRY_FUNCTION(start_ccxmx51, r0, r1, r2)
 
 	imx5_cpu_lowlevel_init();
 
-	arm_setup_stack(0x20000000 - 16);
+	arm_setup_stack(0x20000000);
 
 	fdt = __dtb_imx51_ccxmx51_start + get_runtime_offset();
 
diff --git a/arch/arm/boards/ccxmx53/lowlevel.c b/arch/arm/boards/ccxmx53/lowlevel.c
index c27e33098c..1d2d8c6d90 100644
--- a/arch/arm/boards/ccxmx53/lowlevel.c
+++ b/arch/arm/boards/ccxmx53/lowlevel.c
@@ -37,7 +37,7 @@ ENTRY_FUNCTION(start_ccxmx53_512mb, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE);
 
 	IMD_USED(ccxmx53_memsize_SZ_512M);
 
@@ -51,7 +51,7 @@ ENTRY_FUNCTION(start_ccxmx53_1gib, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE);
 
 	IMD_USED(ccxmx53_memsize_SZ_1G);
 
diff --git a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
index 3ecdb66bc5..23074326b5 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
@@ -145,7 +145,7 @@ ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00940000 - 8);
+	arm_setup_stack(0x00940000);
 
 	fdt = __dtb_imx6q_dmo_edmqmx6_start + get_runtime_offset();
 
diff --git a/arch/arm/boards/dfi-fs700-m60/lowlevel.c b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
index b419228505..520ed4c46b 100644
--- a/arch/arm/boards/dfi-fs700-m60/lowlevel.c
+++ b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
@@ -108,7 +108,7 @@ ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q_nanya, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00940000 - 8);
+	arm_setup_stack(0x00940000);
 
 	for (i = 0x68; i <= 0x80; i += 4)
 		writel(0xffffffff, MX6_CCM_BASE_ADDR + i);
@@ -127,7 +127,7 @@ ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q_micron, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00940000 - 8);
+	arm_setup_stack(0x00940000);
 
 	for (i = 0x68; i <= 0x80; i += 4)
 		writel(0xffffffff, MX6_CCM_BASE_ADDR + i);
@@ -150,7 +150,7 @@ ENTRY_FUNCTION(start_imx6dl_dfi_fs700_m60_6s, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00920000 - 8);
+	arm_setup_stack(0x00920000);
 
 	for (i = 0x68; i <= 0x80; i += 4)
 		writel(0xffffffff, MX6_CCM_BASE_ADDR + i);
diff --git a/arch/arm/boards/digi-ccimx6ulsom/lowlevel.c b/arch/arm/boards/digi-ccimx6ulsom/lowlevel.c
index ac76a843ac..7bf1db8120 100644
--- a/arch/arm/boards/digi-ccimx6ulsom/lowlevel.c
+++ b/arch/arm/boards/digi-ccimx6ulsom/lowlevel.c
@@ -13,7 +13,7 @@ ENTRY_FUNCTION(start_imx6ul_ccimx6ulsbcpro, r0, r1, r2)
 
 	imx6ul_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00910000 - 8);
+	arm_setup_stack(0x00910000);
 
 	arm_early_mmu_cache_invalidate();
 
diff --git a/arch/arm/boards/dss11/lowlevel.c b/arch/arm/boards/dss11/lowlevel.c
index 25352672d7..7f52f824df 100644
--- a/arch/arm/boards/dss11/lowlevel.c
+++ b/arch/arm/boards/dss11/lowlevel.c
@@ -18,7 +18,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1,
 			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
diff --git a/arch/arm/boards/efika-mx-smartbook/lowlevel.c b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
index 6da5bfaf55..3881678d85 100644
--- a/arch/arm/boards/efika-mx-smartbook/lowlevel.c
+++ b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
@@ -12,7 +12,7 @@ ENTRY_FUNCTION(start_imx51_genesi_efikasb, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(0x20000000 - 16);
+	arm_setup_stack(0x20000000);
 	imx51_init_lowlevel(800);
 
 	fdt = __dtb_imx51_genesi_efika_sb_start + get_runtime_offset();
diff --git a/arch/arm/boards/eltec-hipercam/lowlevel.c b/arch/arm/boards/eltec-hipercam/lowlevel.c
index b0d3155023..2f2cd9aab7 100644
--- a/arch/arm/boards/eltec-hipercam/lowlevel.c
+++ b/arch/arm/boards/eltec-hipercam/lowlevel.c
@@ -39,7 +39,7 @@ ENTRY_FUNCTION(start_imx6dl_eltec_hipercam, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00940000 - 8);
+	arm_setup_stack(0x00940000);
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index 555dd44445..c16316d4a1 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -37,7 +37,7 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 12);
+	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE);
 
 	/* restart the MPLL and wait until it's stable */
 	writel(readl(MX25_CCM_BASE_ADDR + MX25_CCM_CCTL) | (1 << 27),
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index be78b48bd0..ab5235f7f0 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -38,7 +38,7 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
+	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE);
 
 	r = get_cr();
 	r |= CR_Z; /* Flow prediction (Z) */
diff --git a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
index e09f58e29c..6762fdad4b 100644
--- a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
@@ -6,6 +6,6 @@
 void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(0x20000000 - 16);
+	arm_setup_stack(0x20000000);
 	imx51_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
index f254db7b7b..e29a647daa 100644
--- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
@@ -40,7 +40,7 @@ ENTRY_FUNCTION(start_imx51_babbage, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	arm_setup_stack(0x20000000 - 16);
+	arm_setup_stack(0x20000000);
 
 	fdt = __dtb_imx51_babbage_start + get_runtime_offset();
 
diff --git a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
index cfe01f7807..c9044011d5 100644
--- a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
@@ -13,7 +13,7 @@ ENTRY_FUNCTION(start_imx53_loco, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE);
 
 	fdt = __dtb_imx53_qsb_start + get_runtime_offset();
 
@@ -27,7 +27,7 @@ ENTRY_FUNCTION(start_imx53_loco_r, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE);
 
 	fdt = __dtb_imx53_qsrb_start + get_runtime_offset();
 
diff --git a/arch/arm/boards/freescale-mx53-smd/lowlevel.c b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
index c929d274f2..fffbfdf0ba 100644
--- a/arch/arm/boards/freescale-mx53-smd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
@@ -7,6 +7,6 @@
 void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE);
 	imx53_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
index aac784ca6e..ae94538c9e 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
@@ -11,7 +11,7 @@ ENTRY_FUNCTION(start_imx53_vmx53, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(0xf8020000 - 8);
+	arm_setup_stack(0xf8020000);
 
 	fdt = __dtb_imx53_voipac_bsb_start + get_runtime_offset();
 
diff --git a/arch/arm/boards/grinn-liteboard/lowlevel.c b/arch/arm/boards/grinn-liteboard/lowlevel.c
index 331ccc2283..bb2e09016e 100644
--- a/arch/arm/boards/grinn-liteboard/lowlevel.c
+++ b/arch/arm/boards/grinn-liteboard/lowlevel.c
@@ -58,7 +58,7 @@ static void __noreturn start_imx6_liteboard(void)
 {
 	imx6ul_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00910000 - 8);
+	arm_setup_stack(0x00910000);
 
 	arm_early_mmu_cache_invalidate();
 
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index e84ae2c415..0d7cfb618c 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -165,7 +165,7 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(0x10000000 + 128 * 1024 - 16);
+	arm_setup_stack(0x10000000 + 128 * 1024);
 
 	/*
 	 *       ARM1136 init
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index 6c22784599..20f48be7dd 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -39,7 +39,7 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
+	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE);
 
 	/* ahb lite ip interface */
 	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0);
diff --git a/arch/arm/boards/guf-santaro/lowlevel.c b/arch/arm/boards/guf-santaro/lowlevel.c
index 1502bb3d38..30c5e9054a 100644
--- a/arch/arm/boards/guf-santaro/lowlevel.c
+++ b/arch/arm/boards/guf-santaro/lowlevel.c
@@ -35,7 +35,7 @@ ENTRY_FUNCTION(start_imx6q_guf_santaro, r0, r1, r2)
 {
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00920000 - 8);
+	arm_setup_stack(0x00920000);
 
 	arm_early_mmu_cache_invalidate();
 
diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index 715e8b386f..04060b2003 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -21,7 +21,7 @@ static noinline void imx53_guf_vincell_init(void *fdt)
 	void __iomem *ccm = (void *)MX53_CCM_BASE_ADDR;
 	void __iomem *uart = IOMEM(MX53_UART2_BASE_ADDR);
 
-	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE);
 
 	writel(0x0088494c, ccm + MX5_CCM_CBCDR);
 	writel(0x02b12f0a, ccm + MX5_CCM_CSCMR2);
diff --git a/arch/arm/boards/haba-knx/lowlevel.c b/arch/arm/boards/haba-knx/lowlevel.c
index 25352672d7..7f52f824df 100644
--- a/arch/arm/boards/haba-knx/lowlevel.c
+++ b/arch/arm/boards/haba-knx/lowlevel.c
@@ -18,7 +18,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1,
 			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 3bbc930931..f79cd91640 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -168,7 +168,7 @@ ENTRY_FUNCTION(start_imx25_karo_tx25, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 8);
+	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE);
 
 	fdt = __dtb_imx25_karo_tx25_start + get_runtime_offset();
 
diff --git a/arch/arm/boards/karo-tx51/lowlevel.c b/arch/arm/boards/karo-tx51/lowlevel.c
index e09f58e29c..6762fdad4b 100644
--- a/arch/arm/boards/karo-tx51/lowlevel.c
+++ b/arch/arm/boards/karo-tx51/lowlevel.c
@@ -6,6 +6,6 @@
 void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(0x20000000 - 16);
+	arm_setup_stack(0x20000000);
 	imx51_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
index a0bce8a788..230f60ebd9 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -37,7 +37,7 @@ static void __imx53_tx53_init(int is_xx30)
 	setup_c();
 	barrier();
 
-	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE);
 
 	if (is_xx30) {
 		imx53_init_lowlevel_early(800);
diff --git a/arch/arm/boards/karo-tx6x/lowlevel.c b/arch/arm/boards/karo-tx6x/lowlevel.c
index 7b58a496ef..f0ddac284c 100644
--- a/arch/arm/boards/karo-tx6x/lowlevel.c
+++ b/arch/arm/boards/karo-tx6x/lowlevel.c
@@ -46,7 +46,7 @@ ENTRY_FUNCTION(start_imx6dl_tx6x_512m, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00920000 - 8);
+	arm_setup_stack(0x00920000);
 
 	IMD_USED(tx6x_mx6_memsize_512M);
 
@@ -66,7 +66,7 @@ ENTRY_FUNCTION(start_imx6dl_tx6x_1g, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00920000 - 8);
+	arm_setup_stack(0x00920000);
 
 	IMD_USED(tx6x_mx6_memsize_1G);
 
@@ -86,7 +86,7 @@ ENTRY_FUNCTION(start_imx6q_tx6x_1g, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00920000 - 8);
+	arm_setup_stack(0x00920000);
 
 	IMD_USED(tx6x_mx6_memsize_1G);
 
@@ -106,7 +106,7 @@ ENTRY_FUNCTION(start_imx6q_tx6x_2g, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00920000 - 8);
+	arm_setup_stack(0x00920000);
 
 	IMD_USED(tx6x_mx6_memsize_2G);
 
diff --git a/arch/arm/boards/kindle-mx50/lowlevel.c b/arch/arm/boards/kindle-mx50/lowlevel.c
index 20f86c8fcb..992d1fd1a8 100644
--- a/arch/arm/boards/kindle-mx50/lowlevel.c
+++ b/arch/arm/boards/kindle-mx50/lowlevel.c
@@ -18,7 +18,7 @@ ENTRY_FUNCTION(start_imx50_kindle_d01100, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(MX50_IRAM_BASE_ADDR + MX50_IRAM_SIZE - 8);
+	arm_setup_stack(MX50_IRAM_BASE_ADDR + MX50_IRAM_SIZE);
 
 	fdt = __dtb_imx50_kindle_d01100_start + get_runtime_offset();
 
@@ -30,7 +30,7 @@ ENTRY_FUNCTION(start_imx50_kindle_d01200, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(MX50_IRAM_BASE_ADDR + MX50_IRAM_SIZE - 8);
+	arm_setup_stack(MX50_IRAM_BASE_ADDR + MX50_IRAM_SIZE);
 
 	fdt = __dtb_imx50_kindle_d01200_start + get_runtime_offset();
 
@@ -42,7 +42,7 @@ ENTRY_FUNCTION(start_imx50_kindle_ey21, r0, r1, r2)
 	void *fdt;
 
 	imx5_cpu_lowlevel_init();
-	arm_setup_stack(MX50_IRAM_BASE_ADDR + MX50_IRAM_SIZE - 8);
+	arm_setup_stack(MX50_IRAM_BASE_ADDR + MX50_IRAM_SIZE);
 
 	fdt = __dtb_imx50_kindle_ey21_start + get_runtime_offset();
 
diff --git a/arch/arm/boards/kindle3/lowlevel.c b/arch/arm/boards/kindle3/lowlevel.c
index 689767f8d6..19b95fc376 100644
--- a/arch/arm/boards/kindle3/lowlevel.c
+++ b/arch/arm/boards/kindle3/lowlevel.c
@@ -39,7 +39,7 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
+	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE);
 
 	r = get_cr();
 	r |= CR_Z; /* Flow prediction (Z) */
diff --git a/arch/arm/boards/kontron-samx6i/lowlevel.c b/arch/arm/boards/kontron-samx6i/lowlevel.c
index 9742469e20..afb7372323 100644
--- a/arch/arm/boards/kontron-samx6i/lowlevel.c
+++ b/arch/arm/boards/kontron-samx6i/lowlevel.c
@@ -42,7 +42,7 @@ static void __noreturn start_imx6_samx6i_common(void *fdt_blob_fixed_offset)
 	size = samx6i_get_size();
 
 	imx6_cpu_lowlevel_init();
-	arm_setup_stack(0x00920000 - 8);
+	arm_setup_stack(0x00920000);
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
diff --git a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
index 639958a459..0ce2b299ed 100644
--- a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
+++ b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
@@ -20,7 +20,7 @@ ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
+	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE);
 
 	fdt = __dtb_at91_microchip_ksz9477_evb_start + get_runtime_offset();
 
diff --git a/arch/arm/boards/mx31moboard/lowlevel.c b/arch/arm/boards/mx31moboard/lowlevel.c
index c93f76265c..307975d78c 100644
--- a/arch/arm/boards/mx31moboard/lowlevel.c
+++ b/arch/arm/boards/mx31moboard/lowlevel.c
@@ -107,7 +107,7 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 	arm_cpu_lowlevel_init();
 
 	/* Temporary stack location in internal SRAM */
-	arm_setup_stack(MX31_IRAM_BASE_ADDR + MX31_IRAM_SIZE - 8);
+	arm_setup_stack(MX31_IRAM_BASE_ADDR + MX31_IRAM_SIZE);
 
 	mx31moboard_startup();
 }
diff --git a/arch/arm/boards/nxp-imx6ull-evk/lowlevel.c b/arch/arm/boards/nxp-imx6ull-evk/lowlevel.c
index bb2e3623dc..cc0b98e1d8 100644
--- a/arch/arm/boards/nxp-imx6ull-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx6ull-evk/lowlevel.c
@@ -56,7 +56,7 @@ ENTRY_FUNCTION(start_nxp_imx6ull_evk, r0, r1, r2)
 
 	imx6ul_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00910000 - 8);
+	arm_setup_stack(0x00910000);
 
 	arm_early_mmu_cache_invalidate();
 
diff --git a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
index 09994e4492..bd46df0962 100644
--- a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
@@ -126,7 +126,7 @@ ENTRY_FUNCTION(start_phytec_phycard_imx27_64mb, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 12);
+	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE);
 
 	fdt = __dtb_imx27_phytec_phycard_s_rdk_bb_start + get_runtime_offset();
 
@@ -137,7 +137,7 @@ ENTRY_FUNCTION(start_phytec_phycard_imx27_128mb, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 12);
+	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE);
 
 	fdt = __dtb_imx27_phytec_phycard_s_rdk_bb_start + get_runtime_offset();
 
diff --git a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
index b858ff348b..a9e296a0af 100644
--- a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
@@ -106,7 +106,7 @@ ENTRY_FUNCTION(start_phytec_phycore_imx27, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 12);
+	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE);
 
 	fdt = __dtb_imx27_phytec_phycore_rdk_start + get_runtime_offset();
 
diff --git a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
index 19296e5dac..b5f333987a 100644
--- a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
@@ -38,7 +38,7 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(MX31_IRAM_BASE_ADDR + MX31_IRAM_SIZE - 12);
+	arm_setup_stack(MX31_IRAM_BASE_ADDR + MX31_IRAM_SIZE);
 
 	writel(1 << 6, MX31_IPU_CTRL_BASE_ADDR);
 
diff --git a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
index 6bfa0acce3..b80dafec16 100644
--- a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
@@ -44,7 +44,7 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
+	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE);
 
 	r = get_cr();
 	r |= CR_Z; /* Flow prediction (Z) */
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 07bb0ed1b5..2de84169c6 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -59,11 +59,11 @@ static void __noreturn start_imx6_phytec_common(uint32_t size,
 	    || cpu_type == IMX6_CPUTYPE_IMX6ULL) {
 		imx6ul_cpu_lowlevel_init();
 		/* OCRAM Free Area is 0x00907000 to 0x00918000 (68KB) */
-		arm_setup_stack(0x00910000 - 8);
+		arm_setup_stack(0x00910000);
 	} else {
 		imx6_cpu_lowlevel_init();
 		/* OCRAM Free Area is 0x00907000 to 0x00938000 (196KB) */
-		arm_setup_stack(0x00920000 - 8);
+		arm_setup_stack(0x00920000);
 	}
 
 	if (do_early_uart_config && IS_ENABLED(CONFIG_DEBUG_LL))
diff --git a/arch/arm/boards/pm9261/lowlevel_init.c b/arch/arm/boards/pm9261/lowlevel_init.c
index 7127d39943..b18cd067b7 100644
--- a/arch/arm/boards/pm9261/lowlevel_init.c
+++ b/arch/arm/boards/pm9261/lowlevel_init.c
@@ -115,7 +115,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9261_SRAM_BASE + AT91SAM9261_SRAM_SIZE - 16);
+	arm_setup_stack(AT91SAM9261_SRAM_BASE + AT91SAM9261_SRAM_SIZE);
 
 	pm9261_init();
 }
diff --git a/arch/arm/boards/pm9263/lowlevel_init.c b/arch/arm/boards/pm9263/lowlevel_init.c
index daeb183831..8f44adee99 100644
--- a/arch/arm/boards/pm9263/lowlevel_init.c
+++ b/arch/arm/boards/pm9263/lowlevel_init.c
@@ -136,7 +136,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
+	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE);
 
 	pm9263_board_init();
 }
diff --git a/arch/arm/boards/pm9g45/lowlevel.c b/arch/arm/boards/pm9g45/lowlevel.c
index 12cf950685..fc0bfe405b 100644
--- a/arch/arm/boards/pm9g45/lowlevel.c
+++ b/arch/arm/boards/pm9g45/lowlevel.c
@@ -17,7 +17,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9G45_SRAM_BASE + AT91SAM9G45_SRAM_SIZE - 16);
+	arm_setup_stack(AT91SAM9G45_SRAM_BASE + AT91SAM9G45_SRAM_SIZE);
 
 	barebox_arm_entry(AT91_CHIPSELECT_6, at91sam9g45_get_ddram_size(1),
 	                  NULL);
diff --git a/arch/arm/boards/qil-a926x/lowlevel.c b/arch/arm/boards/qil-a926x/lowlevel.c
index 25352672d7..7f52f824df 100644
--- a/arch/arm/boards/qil-a926x/lowlevel.c
+++ b/arch/arm/boards/qil-a926x/lowlevel.c
@@ -18,7 +18,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1,
 			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index 4b64f5d1d7..70f1936522 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -40,7 +40,7 @@ static inline void start_raspberry_pi(unsigned long memsize, void *fdt,
 
 	/* Copied from barebox_arm_entry(). We need stack here early
 	 * for normal function calls to work. */
-	arm_setup_stack(arm_mem_stack_top(membase, membase + memsize) - 16);
+	arm_setup_stack(arm_mem_stack_top(membase, membase + memsize));
 
 	fdt += get_runtime_offset();
 
diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index b3da58f71f..f910b67d5f 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -77,7 +77,7 @@ static noinline void achilles_start(void)
 ENTRY_FUNCTION(start_socfpga_achilles_xload, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
-	arm_setup_stack(ARRIA10_OCRAM_ADDR + SZ_256K - 32);
+	arm_setup_stack(ARRIA10_OCRAM_ADDR + SZ_256K);
 	achilles_start();
 }
 
@@ -96,7 +96,7 @@ ENTRY_FUNCTION(start_socfpga_achilles_bringup, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(ARRIA10_OCRAM_ADDR + SZ_256K - 16);
+	arm_setup_stack(ARRIA10_OCRAM_ADDR + SZ_256K);
 
 	arm_early_mmu_cache_invalidate();
 
diff --git a/arch/arm/boards/sama5d3_xplained/lowlevel.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
index 8492ae95fb..8653c48c69 100644
--- a/arch/arm/boards/sama5d3_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
@@ -17,7 +17,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
+	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE);
 
 	barebox_arm_entry(SAMA5_DDRCS, at91sama5d3_get_ddram_size(), NULL);
 }
diff --git a/arch/arm/boards/sama5d3xek/lowlevel.c b/arch/arm/boards/sama5d3xek/lowlevel.c
index 8492ae95fb..8653c48c69 100644
--- a/arch/arm/boards/sama5d3xek/lowlevel.c
+++ b/arch/arm/boards/sama5d3xek/lowlevel.c
@@ -17,7 +17,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
+	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE);
 
 	barebox_arm_entry(SAMA5_DDRCS, at91sama5d3_get_ddram_size(), NULL);
 }
diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
index 9021ef57c5..9a6a767e5f 100644
--- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
@@ -17,7 +17,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE - 16);
+	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE);
 
 	barebox_arm_entry(SAMA5_DDRCS, at91sama5d4_get_ddram_size(), NULL);
 }
diff --git a/arch/arm/boards/sama5d4ek/lowlevel.c b/arch/arm/boards/sama5d4ek/lowlevel.c
index 9021ef57c5..9a6a767e5f 100644
--- a/arch/arm/boards/sama5d4ek/lowlevel.c
+++ b/arch/arm/boards/sama5d4ek/lowlevel.c
@@ -17,7 +17,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE - 16);
+	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE);
 
 	barebox_arm_entry(SAMA5_DDRCS, at91sama5d4_get_ddram_size(), NULL);
 }
diff --git a/arch/arm/boards/technexion-pico-hobbit/lowlevel.c b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
index 77f48043da..f59c424dec 100644
--- a/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
+++ b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
@@ -39,7 +39,7 @@ static void __noreturn start_imx6_pico_hobbit_common(uint32_t size,
 
 	imx6ul_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00910000 - 8);
+	arm_setup_stack(0x00910000);
 
 	arm_early_mmu_cache_invalidate();
 
diff --git a/arch/arm/boards/technexion-wandboard/lowlevel.c b/arch/arm/boards/technexion-wandboard/lowlevel.c
index 9aae429d45..af04eadc9f 100644
--- a/arch/arm/boards/technexion-wandboard/lowlevel.c
+++ b/arch/arm/boards/technexion-wandboard/lowlevel.c
@@ -359,7 +359,7 @@ ENTRY_FUNCTION(start_imx6_wandboard, r0, r1, r2)
 {
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x0091ffb0);
+	arm_setup_stack(0x00920000);
 
 	relocate_to_current_adr();
 	setup_c();
diff --git a/arch/arm/boards/telit-evk-pro3/lowlevel.c b/arch/arm/boards/telit-evk-pro3/lowlevel.c
index 25352672d7..7f52f824df 100644
--- a/arch/arm/boards/telit-evk-pro3/lowlevel.c
+++ b/arch/arm/boards/telit-evk-pro3/lowlevel.c
@@ -18,7 +18,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1,
 			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
diff --git a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
index 25352672d7..7f52f824df 100644
--- a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
@@ -18,7 +18,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1,
 			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
diff --git a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
index 868df9d6c8..565ba438d2 100644
--- a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
@@ -122,7 +122,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
+	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE);
 
 	tny_a9263_init();
 }
diff --git a/arch/arm/boards/tqma53/lowlevel.c b/arch/arm/boards/tqma53/lowlevel.c
index 0d0b16846c..97a7ac556e 100644
--- a/arch/arm/boards/tqma53/lowlevel.c
+++ b/arch/arm/boards/tqma53/lowlevel.c
@@ -45,7 +45,7 @@ ENTRY_FUNCTION(start_imx53_mba53_512mib, r0, r1, r2)
 
 	imx5_cpu_lowlevel_init();
 
-	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE);
 
 	IMD_USED(tqma53_memsize_512M);
 
@@ -64,7 +64,7 @@ ENTRY_FUNCTION(start_imx53_mba53_1gib, r0, r1, r2)
 
 	imx5_cpu_lowlevel_init();
 
-	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
+	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE);
 
 	IMD_USED(tqma53_memsize_1G);
 
diff --git a/arch/arm/boards/tqma6x/lowlevel.c b/arch/arm/boards/tqma6x/lowlevel.c
index a90cd4007f..afbc1691eb 100644
--- a/arch/arm/boards/tqma6x/lowlevel.c
+++ b/arch/arm/boards/tqma6x/lowlevel.c
@@ -32,7 +32,7 @@ ENTRY_FUNCTION(start_imx6q_mba6x, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00920000 - 8);
+	arm_setup_stack(0x00920000);
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		writel(0x2, 0x020e0338);
@@ -53,7 +53,7 @@ ENTRY_FUNCTION(start_imx6dl_mba6x, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00920000 - 8);
+	arm_setup_stack(0x00920000);
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		writel(0x2, 0x020e035c);
diff --git a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
index 25352672d7..7f52f824df 100644
--- a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
@@ -18,7 +18,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1,
 			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
diff --git a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
index b362fcf7d4..2ad88d7f22 100644
--- a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
@@ -126,7 +126,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
+	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE);
 
 	usb_a9263_init();
 }
diff --git a/arch/arm/boards/variscite-mx6/lowlevel.c b/arch/arm/boards/variscite-mx6/lowlevel.c
index 337bc58c8d..d75d770a7e 100644
--- a/arch/arm/boards/variscite-mx6/lowlevel.c
+++ b/arch/arm/boards/variscite-mx6/lowlevel.c
@@ -45,7 +45,7 @@ ENTRY_FUNCTION(start_variscite_custom, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	arm_setup_stack(0x00920000 - 8);
+	arm_setup_stack(0x00920000);
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 	    setup_uart();
diff --git a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
index 9672a69bfd..3f5d90b61d 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
@@ -271,7 +271,7 @@ static noinline void rdu2_sram_setup(void)
 	enum bootsource bootsrc;
 	int instance;
 
-	arm_setup_stack(0x00920000 - 8);
+	arm_setup_stack(0x00920000);
 	relocate_to_current_adr();
 	setup_c();
 
diff --git a/arch/arm/cpu/entry.c b/arch/arm/cpu/entry.c
index b48c1ca11d..30df95f078 100644
--- a/arch/arm/cpu/entry.c
+++ b/arch/arm/cpu/entry.c
@@ -27,7 +27,7 @@
 void NAKED __noreturn barebox_arm_entry(unsigned long membase,
 					  unsigned long memsize, void *boarddata)
 {
-	arm_setup_stack(arm_mem_stack_top(membase, membase + memsize) - 16);
+	arm_setup_stack(arm_mem_stack_top(membase, membase + memsize));
 	arm_early_mmu_cache_invalidate();
 
 	if (IS_ENABLED(CONFIG_PBL_MULTI_IMAGES))
diff --git a/arch/arm/mach-socfpga/include/mach/lowlevel.h b/arch/arm/mach-socfpga/include/mach/lowlevel.h
index 03a2ea6435..657e07a881 100644
--- a/arch/arm/mach-socfpga/include/mach/lowlevel.h
+++ b/arch/arm/mach-socfpga/include/mach/lowlevel.h
@@ -72,7 +72,7 @@ static noinline void SECT(start_socfpga_c5_xload_common)(uint32_t size)
 	{								\
 		arm_cpu_lowlevel_init();				\
 									\
-		arm_setup_stack(0xffff0000 + SZ_64K - SZ_4K - 16);	\
+		arm_setup_stack(0xffff0000 + SZ_64K - SZ_4K);		\
 									\
 		start_socfpga_c5_xload_common(memory_size);		\
 	}
diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index c862778fc4..31f99eb175 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -261,7 +261,7 @@ void tegra_cpu_lowlevel_setup(char *fdt)
 	r |= 0xd3;
 	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
 
-	arm_setup_stack(TEGRA_IRAM_BASE + SZ_256K - 8);
+	arm_setup_stack(TEGRA_IRAM_BASE + SZ_256K);
 
 	if (tegra_cpu_is_maincomplex())
 		tegra_maincomplex_entry(fdt + get_runtime_offset());
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
