Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WfybU-0000Ag-4M
 for barebox@lists.infradead.org; Thu, 01 May 2014 21:33:21 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Wfyb3-00058a-0O
 for barebox@lists.infradead.org; Thu, 01 May 2014 23:32:49 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  1 May 2014 23:32:49 +0200
Message-Id: <1398979972-14446-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1398979972-14446-1-git-send-email-l.stach@pengutronix.de>
References: <1398979972-14446-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: change signature of barebox_arm_entry
To: barebox@lists.infradead.org

Mostly to make it clear that boarddata needs to be
something we can dereference.

As this is a pretty invasive change, use the opportunity
to make the signature 64bit safe.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/archosg9/lowlevel.c                |  2 +-
 arch/arm/boards/avnet-zedboard/lowlevel.c          |  2 +-
 arch/arm/boards/beagle/lowlevel.c                  |  2 +-
 arch/arm/boards/beaglebone/lowlevel.c              | 20 ++++++++++---------
 .../boards/boundarydevices-nitrogen6x/lowlevel.c   |  8 ++++----
 arch/arm/boards/ccxmx51/lowlevel.c                 |  2 +-
 arch/arm/boards/chumby_falconwing/lowlevel.c       |  2 +-
 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c   |  2 +-
 arch/arm/boards/datamodul-edm-qmx6/lowlevel.c      | 12 +++++------
 arch/arm/boards/dfi-fs700-m60/lowlevel.c           | 12 +++++------
 arch/arm/boards/ebv-socrates/lowlevel.c            |  6 +++---
 arch/arm/boards/efika-mx-smartbook/lowlevel.c      |  4 ++--
 arch/arm/boards/embest-riotboard/lowlevel.c        |  4 ++--
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c         |  2 +-
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c         |  2 +-
 arch/arm/boards/eukrea_cpuimx51/lowlevel.c         |  2 +-
 arch/arm/boards/freescale-mx23-evk/lowlevel.c      |  2 +-
 arch/arm/boards/freescale-mx28-evk/lowlevel.c      |  2 +-
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c  |  4 ++--
 arch/arm/boards/freescale-mx53-qsb/lowlevel.c      |  8 ++++----
 arch/arm/boards/freescale-mx53-smd/lowlevel.c      |  2 +-
 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c    |  4 ++--
 arch/arm/boards/freescale-mx6-arm2/lowlevel.c      |  2 +-
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c |  8 ++++----
 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c   |  4 ++--
 arch/arm/boards/friendlyarm-mini6410/lowlevel.c    |  2 +-
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c     |  2 +-
 arch/arm/boards/friendlyarm-tiny6410/lowlevel.c    |  2 +-
 arch/arm/boards/gk802/lowlevel.c                   |  4 ++--
 arch/arm/boards/guf-cupid/lowlevel.c               |  2 +-
 arch/arm/boards/guf-neso/lowlevel.c                |  2 +-
 arch/arm/boards/guf-santaro/lowlevel.c             |  4 ++--
 arch/arm/boards/guf-vincell/lowlevel.c             |  4 ++--
 arch/arm/boards/highbank/lowlevel.c                |  2 +-
 arch/arm/boards/imx233-olinuxino/lowlevel.c        |  2 +-
 arch/arm/boards/karo-tx25/lowlevel.c               |  6 +++---
 arch/arm/boards/karo-tx28/lowlevel.c               |  2 +-
 arch/arm/boards/karo-tx51/lowlevel.c               |  2 +-
 arch/arm/boards/karo-tx53/lowlevel.c               |  2 +-
 arch/arm/boards/mioa701/lowlevel.c                 |  2 +-
 arch/arm/boards/mx31moboard/lowlevel.c             |  4 ++--
 arch/arm/boards/nhk8815/lowlevel.c                 |  2 +-
 arch/arm/boards/omap343xdsp/lowlevel.c             |  2 +-
 arch/arm/boards/omap3evm/lowlevel.c                |  2 +-
 arch/arm/boards/panda/lowlevel.c                   |  2 +-
 arch/arm/boards/phytec-phycard-imx27/lowlevel.c    |  2 +-
 arch/arm/boards/phytec-phycard-omap3/lowlevel.c    |  2 +-
 arch/arm/boards/phytec-phycard-omap4/lowlevel.c    |  2 +-
 arch/arm/boards/phytec-phycore-am335x/lowlevel.c   |  9 +++++----
 arch/arm/boards/phytec-phycore-imx27/lowlevel.c    |  2 +-
 arch/arm/boards/phytec-phycore-imx31/lowlevel.c    |  4 ++--
 arch/arm/boards/phytec-phycore-imx35/lowlevel.c    |  2 +-
 arch/arm/boards/phytec-phycore-omap4460/lowlevel.c |  2 +-
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c     | 20 +++++++++----------
 arch/arm/boards/radxa-rock/lowlevel.c              |  4 ++--
 arch/arm/boards/raspberry-pi/lowlevel.c            |  2 +-
 arch/arm/boards/solidrun-cubox/lowlevel.c          |  4 ++--
 arch/arm/boards/solidrun-hummingboard/lowlevel.c   |  4 ++--
 arch/arm/boards/terasic-sockit/lowlevel.c          |  6 +++---
 arch/arm/boards/tqma53/lowlevel.c                  | 10 +++++-----
 arch/arm/boards/tqma6x/lowlevel.c                  |  8 ++++----
 arch/arm/boards/udoo/lowlevel.c                    |  4 ++--
 arch/arm/boards/variscite-mx6/lowlevel.c           |  4 ++--
 arch/arm/boards/versatile/lowlevel.c               |  2 +-
 arch/arm/boards/vexpress/lowlevel.c                |  4 ++--
 arch/arm/boards/virt2real/lowlevel.c               |  2 +-
 arch/arm/cpu/start-pbl.c                           | 10 +++++-----
 arch/arm/cpu/start.c                               | 23 +++++++++++-----------
 arch/arm/cpu/uncompress.c                          | 10 +++++-----
 arch/arm/include/asm/barebox-arm.h                 |  4 ++--
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c      |  2 +-
 arch/arm/mach-at91/at91sam9260_lowlevel_init.c     |  3 ++-
 arch/arm/mach-at91/at91sam9261_lowlevel_init.c     |  3 ++-
 arch/arm/mach-at91/at91sam9263_lowlevel_init.c     |  3 ++-
 arch/arm/mach-at91/at91sam9g45_lowlevel_init.c     |  3 ++-
 arch/arm/mach-at91/at91sam9n12_lowlevel_init.c     |  3 ++-
 arch/arm/mach-at91/at91sam9x5_lowlevel_init.c      |  2 +-
 arch/arm/mach-at91/sama5d3_lowlevel_init.c         |  2 +-
 arch/arm/mach-clps711x/lowlevel.c                  |  2 +-
 arch/arm/mach-imx/esdctl.c                         | 14 ++++++-------
 arch/arm/mach-imx/external-nand-boot.c             | 11 ++++++-----
 arch/arm/mach-imx/include/mach/esdctl.h            | 16 +++++++--------
 arch/arm/mach-imx/include/mach/imx-nand.h          | 10 +++++-----
 arch/arm/mach-mvebu/common.c                       |  2 +-
 arch/arm/mach-mvebu/include/mach/lowlevel.h        |  2 +-
 arch/arm/mach-mvebu/lowlevel.c                     |  2 +-
 arch/arm/mach-tegra/tegra_maincomplex_init.c       |  2 +-
 87 files changed, 204 insertions(+), 196 deletions(-)

diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
index 6c939928d621..6813e0d18a01 100644
--- a/arch/arm/boards/archosg9/lowlevel.c
+++ b/arch/arm/boards/archosg9/lowlevel.c
@@ -79,5 +79,5 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t *data)
 
 	archosg9_init_lowlevel();
 out:
-	barebox_arm_entry(0x80000000, SZ_1G, 0);
+	barebox_arm_entry(0x80000000, SZ_1G, NULL);
 }
diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index fb05ef895d0f..7770bcb7cfbb 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -257,5 +257,5 @@ void __naked barebox_arm_reset_vector(void)
 	writel(0x0000767B, ZYNQ_SLCR_LOCK);
 
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0, SZ_512M, 0);
+	barebox_arm_entry(0, SZ_512M, NULL);
 }
diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index cdb88caa127c..62c98a9cec1d 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -189,5 +189,5 @@ void __naked  __bare_init barebox_arm_reset_vector(uint32_t *data)
 
 	beagle_board_init();
 
-	barebox_arm_entry(0x80000000, SZ_128M, 0);
+	barebox_arm_entry(0x80000000, SZ_128M, NULL);
 }
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 92389a95576e..0869cb9f1555 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -119,18 +119,19 @@ extern char __dtb_am335x_bone_end[];
  */
 static noinline int beaglebone_sram_init(void)
 {
-	uint32_t fdt, fdt_end, sdram_start, sdram_size;
+	uint32_t sdram_start, sdram_size;
+	void *fdt, *fdt_end;
 
 	sdram_start = 0x80000000;
 
 	if (is_beaglebone_black()) {
 		sdram_size = SZ_512M;
-		fdt = (uint32_t)__dtb_am335x_boneblack_start;
-		fdt_end = (uint32_t)__dtb_am335x_boneblack_end;
+		fdt = __dtb_am335x_boneblack_start;
+		fdt_end = __dtb_am335x_boneblack_end;
 	} else {
 		sdram_size = SZ_256M;
-		fdt = (uint32_t)__dtb_am335x_bone_start;
-		fdt_end = (uint32_t)__dtb_am335x_bone_end;
+		fdt = __dtb_am335x_bone_start;
+		fdt_end = __dtb_am335x_bone_end;
 	}
 
 	/* WDT1 is already running when the bootloader gets control
@@ -161,7 +162,7 @@ static noinline int beaglebone_sram_init(void)
 	 * Copy the devicetree blob to sdram so that the barebox code finds it
 	 * inside valid SDRAM instead of SRAM.
 	 */
-	memcpy((void *)sdram_start, (void *)fdt, fdt_end - fdt);
+	memcpy((void *)sdram_start, fdt, fdt_end - fdt);
 	fdt = sdram_start;
 
 	barebox_arm_entry(sdram_start, sdram_size, fdt);
@@ -183,14 +184,15 @@ ENTRY_FUNCTION(start_am33xx_beaglebone_sram, bootinfo, r1, r2)
 
 ENTRY_FUNCTION(start_am33xx_beaglebone_sdram, r0, r1, r2)
 {
-	uint32_t fdt, sdram_size;
+	uint32_t sdram_size;
+	void *fdt;
 
 	if (is_beaglebone_black()) {
 		sdram_size = SZ_512M;
-		fdt = (uint32_t)__dtb_am335x_boneblack_start;
+		fdt = __dtb_am335x_boneblack_start;
 	} else {
 		sdram_size = SZ_256M;
-		fdt = (uint32_t)__dtb_am335x_bone_start;
+		fdt = __dtb_am335x_bone_start;
 	}
 
 	fdt -= get_runtime_offset();
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c b/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
index 5b110846703c..60a84ef63ab5 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
@@ -7,11 +7,11 @@ extern char __dtb_imx6q_nitrogen6x_start[];
 
 ENTRY_FUNCTION(start_imx6q_nitrogen6x_1g, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_imx6q_nitrogen6x_start - get_runtime_offset();
+	fdt = __dtb_imx6q_nitrogen6x_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
@@ -20,11 +20,11 @@ extern char __dtb_imx6dl_nitrogen6x_start[];
 
 ENTRY_FUNCTION(start_imx6dl_nitrogen6x_1g, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_imx6dl_nitrogen6x_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_nitrogen6x_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/ccxmx51/lowlevel.c b/arch/arm/boards/ccxmx51/lowlevel.c
index 9519b77335ac..3e67b314a791 100644
--- a/arch/arm/boards/ccxmx51/lowlevel.c
+++ b/arch/arm/boards/ccxmx51/lowlevel.c
@@ -7,5 +7,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(MX51_CSD0_BASE_ADDR, SZ_128M, 0);
+	barebox_arm_entry(MX51_CSD0_BASE_ADDR, SZ_128M, NULL);
 }
diff --git a/arch/arm/boards/chumby_falconwing/lowlevel.c b/arch/arm/boards/chumby_falconwing/lowlevel.c
index c23a12db12f6..d26562c02bf3 100644
--- a/arch/arm/boards/chumby_falconwing/lowlevel.c
+++ b/arch/arm/boards/chumby_falconwing/lowlevel.c
@@ -7,5 +7,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, 0);
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, NULL);
 }
diff --git a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
index f7b90331bbf9..aa3b09b2ee68 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
@@ -7,5 +7,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, 0);
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, NULL);
 }
diff --git a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
index 81b6ac4cbe0a..071918cb5341 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
@@ -140,13 +140,14 @@ extern char __dtb_imx6q_dmo_edmqmx6_end[];
 
 ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)
 {
-	unsigned long fdt, sdram = 0x10000000;
+	unsigned long sdram = 0x10000000;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00940000 - 8);
 
-	fdt = (unsigned long)__dtb_imx6q_dmo_edmqmx6_start - get_runtime_offset();
+	fdt = __dtb_imx6q_dmo_edmqmx6_start - get_runtime_offset();
 
 	if (get_pc() < 0x10000000) {
 		sdram_init();
@@ -158,10 +159,9 @@ ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)
 		 * Copy the devicetree blob to sdram so that the barebox code finds it
 		 * inside valid SDRAM instead of SRAM.
 		 */
-		memcpy((void *)sdram, (void *)fdt,
-				__dtb_imx6q_dmo_edmqmx6_end -
-				__dtb_imx6q_dmo_edmqmx6_start);
-		fdt = sdram;
+		memcpy((void*)sdram, fdt, __dtb_imx6q_dmo_edmqmx6_end -
+		       __dtb_imx6q_dmo_edmqmx6_start);
+		fdt = (void *)sdram;
 	}
 
 	barebox_arm_entry(sdram, SZ_2G, fdt);
diff --git a/arch/arm/boards/dfi-fs700-m60/lowlevel.c b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
index 5d1e5f409eb5..541e6c18743c 100644
--- a/arch/arm/boards/dfi-fs700-m60/lowlevel.c
+++ b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
@@ -103,7 +103,7 @@ extern char __dtb_imx6q_dfi_fs700_m60_6q_start[];
 
 ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q_nanya, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 	int i;
 
 	arm_cpu_lowlevel_init();
@@ -115,14 +115,14 @@ ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q_nanya, r0, r1, r2)
 
 	early_uart_init_6q();
 
-	fdt = (uint32_t)__dtb_imx6q_dfi_fs700_m60_6q_start - get_runtime_offset();
+	fdt = __dtb_imx6q_dfi_fs700_m60_6q_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, memsize_1G_2G(), fdt);
 }
 
 ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q_micron, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 	int i;
 
 	arm_cpu_lowlevel_init();
@@ -134,7 +134,7 @@ ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q_micron, r0, r1, r2)
 
 	early_uart_init_6q();
 
-	fdt = (uint32_t)__dtb_imx6q_dfi_fs700_m60_6q_start - get_runtime_offset();
+	fdt = __dtb_imx6q_dfi_fs700_m60_6q_start - get_runtime_offset();
 
 	*(uint32_t *)0x10000000 = SZ_1G;
 
@@ -145,7 +145,7 @@ extern char __dtb_imx6dl_dfi_fs700_m60_6s_start[];
 
 ENTRY_FUNCTION(start_imx6dl_dfi_fs700_m60_6s, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 	int i;
 
 	arm_cpu_lowlevel_init();
@@ -157,7 +157,7 @@ ENTRY_FUNCTION(start_imx6dl_dfi_fs700_m60_6s, r0, r1, r2)
 
 	early_uart_init_6s();
 
-	fdt = (uint32_t)__dtb_imx6dl_dfi_fs700_m60_6s_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_dfi_fs700_m60_6s_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, memsize_512M_1G(), fdt);
 }
diff --git a/arch/arm/boards/ebv-socrates/lowlevel.c b/arch/arm/boards/ebv-socrates/lowlevel.c
index 035df70839d7..9c1154320954 100644
--- a/arch/arm/boards/ebv-socrates/lowlevel.c
+++ b/arch/arm/boards/ebv-socrates/lowlevel.c
@@ -47,11 +47,11 @@ extern char __dtb_socfpga_cyclone5_socrates_start[];
 
 ENTRY_FUNCTION(start_socfpga_socrates, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_socfpga_cyclone5_socrates_start - get_runtime_offset();
+	fdt = __dtb_socfpga_cyclone5_socrates_start - get_runtime_offset();
 
 	barebox_arm_entry(0x0, SZ_1G, fdt);
 }
@@ -82,7 +82,7 @@ static noinline void socrates_entry(void)
 
 	puts_ll("done\n");
 
-	barebox_arm_entry(0x0, SZ_1G, 0);
+	barebox_arm_entry(0x0, SZ_1G, NULL);
 }
 
 ENTRY_FUNCTION(start_socfpga_socrates_xload, r0, r1, r2)
diff --git a/arch/arm/boards/efika-mx-smartbook/lowlevel.c b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
index 72c8b00a3121..0d32eee860e4 100644
--- a/arch/arm/boards/efika-mx-smartbook/lowlevel.c
+++ b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
@@ -8,13 +8,13 @@ extern char __dtb_imx51_genesi_efika_sb_start[];
 
 ENTRY_FUNCTION(start_imx51_genesi_efikasb, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 	arm_setup_stack(0x20000000 - 16);
 	imx51_init_lowlevel(800);
 
-	fdt = (uint32_t)__dtb_imx51_genesi_efika_sb_start - get_runtime_offset();
+	fdt = __dtb_imx51_genesi_efika_sb_start - get_runtime_offset();
 
 	imx51_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/boards/embest-riotboard/lowlevel.c
index 814658aaf5dd..64edd61cc666 100644
--- a/arch/arm/boards/embest-riotboard/lowlevel.c
+++ b/arch/arm/boards/embest-riotboard/lowlevel.c
@@ -28,7 +28,7 @@ extern char __dtb_imx6s_riotboard_start[];
 
 ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
@@ -38,6 +38,6 @@ ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
 		putc_ll('a');
 	}
 
-	fdt = (uint32_t)__dtb_imx6s_riotboard_start - get_runtime_offset();
+	fdt = __dtb_imx6s_riotboard_start - get_runtime_offset();
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index f0bf2c7fd51e..4edbbe4b8abb 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -134,5 +134,5 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 		imx25_barebox_boot_nand_external(0);
 	}
 out:
-	imx25_barebox_entry(0);
+	imx25_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index b8ba3c871629..4788ae2e424d 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -144,5 +144,5 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	}
 
 out:
-	imx35_barebox_entry(0);
+	imx35_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
index 3e6a0ee328b2..c3f7b4acbb46 100644
--- a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
@@ -5,5 +5,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	imx51_barebox_entry(0);
+	imx51_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/freescale-mx23-evk/lowlevel.c b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
index 155944468fe0..2a26a7763ee8 100644
--- a/arch/arm/boards/freescale-mx23-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
@@ -7,5 +7,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_32M, 0);
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_32M, NULL);
 }
diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
index f7b90331bbf9..aa3b09b2ee68 100644
--- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
@@ -7,5 +7,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, 0);
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, NULL);
 }
diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
index f60601194da1..5a5a83c436cd 100644
--- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
@@ -7,11 +7,11 @@ extern char __dtb_imx51_babbage_start[];
 
 ENTRY_FUNCTION(start_imx51_babbage, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_imx51_babbage_start - get_runtime_offset();
+	fdt = __dtb_imx51_babbage_start - get_runtime_offset();
 
 	imx51_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
index c9e057ae679d..51b9ef8db7cf 100644
--- a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
@@ -7,11 +7,11 @@ extern char __dtb_imx53_qsb_start[];
 
 ENTRY_FUNCTION(start_imx53_loco, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_imx53_qsb_start - get_runtime_offset();
+	fdt = __dtb_imx53_qsb_start - get_runtime_offset();
 
 	imx53_barebox_entry(fdt);
 }
@@ -20,11 +20,11 @@ extern char __dtb_imx53_qsrb_start[];
 
 ENTRY_FUNCTION(start_imx53_loco_r, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_imx53_qsrb_start - get_runtime_offset();
+	fdt = __dtb_imx53_qsrb_start - get_runtime_offset();
 
 	imx53_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/freescale-mx53-smd/lowlevel.c b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
index 60c28f7856bd..1db07e2e2c6c 100644
--- a/arch/arm/boards/freescale-mx53-smd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
@@ -5,5 +5,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	imx53_barebox_entry(0);
+	imx53_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
index ba356cdde31f..4054fd51e255 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
@@ -7,11 +7,11 @@ extern char __dtb_imx53_voipac_bsb_start[];
 
 ENTRY_FUNCTION(start_imx53_vmx53, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_imx53_voipac_bsb_start - get_runtime_offset();
+	fdt = __dtb_imx53_voipac_bsb_start - get_runtime_offset();
 
 	imx53_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/freescale-mx6-arm2/lowlevel.c b/arch/arm/boards/freescale-mx6-arm2/lowlevel.c
index 15d9287adbae..53783bb0ab73 100644
--- a/arch/arm/boards/freescale-mx6-arm2/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-arm2/lowlevel.c
@@ -6,5 +6,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0x10000000, SZ_2G, 0);
+	barebox_arm_entry(0x10000000, SZ_2G, NULL);
 }
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
index 14a7f322f72b..a154381bfa7b 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
@@ -7,11 +7,11 @@ extern char __dtb_imx6q_sabrelite_start[];
 
 ENTRY_FUNCTION(start_imx6q_sabrelite, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_imx6q_sabrelite_start - get_runtime_offset();
+	fdt = __dtb_imx6q_sabrelite_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
@@ -20,11 +20,11 @@ extern char __dtb_imx6dl_sabrelite_start[];
 
 ENTRY_FUNCTION(start_imx6dl_sabrelite, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_imx6dl_sabrelite_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_sabrelite_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
index c8b542aa254a..325de84983f5 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
@@ -7,11 +7,11 @@ extern char __dtb_imx6q_sabresd_start[];
 
 ENTRY_FUNCTION(start_imx6q_sabresd, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_imx6q_sabresd_start - get_runtime_offset();
+	fdt = __dtb_imx6q_sabresd_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/friendlyarm-mini6410/lowlevel.c b/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
index 3a8af812290b..a21a3f8301a8 100644
--- a/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-mini6410/lowlevel.c
@@ -7,5 +7,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(S3C_SDRAM_BASE, SZ_128M, 0);
+	barebox_arm_entry(S3C_SDRAM_BASE, SZ_128M, NULL);
 }
diff --git a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
index d98095773930..236fe7f19555 100644
--- a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
@@ -113,5 +113,5 @@ void __bare_init barebox_arm_reset_vector(void)
 	debug_led(1, 0);
 
 boot:
-	barebox_arm_entry(S3C_SDRAM_BASE, SZ_256M, 0);
+	barebox_arm_entry(S3C_SDRAM_BASE, SZ_256M, NULL);
 }
diff --git a/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c b/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
index 3a8af812290b..a21a3f8301a8 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
@@ -7,5 +7,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(S3C_SDRAM_BASE, SZ_128M, 0);
+	barebox_arm_entry(S3C_SDRAM_BASE, SZ_128M, NULL);
 }
diff --git a/arch/arm/boards/gk802/lowlevel.c b/arch/arm/boards/gk802/lowlevel.c
index e159ddbb23ed..bfedfb6c991a 100644
--- a/arch/arm/boards/gk802/lowlevel.c
+++ b/arch/arm/boards/gk802/lowlevel.c
@@ -7,10 +7,10 @@ extern char __dtb_imx6q_gk802_start[];
 
 ENTRY_FUNCTION(start_imx6_gk802, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_imx6q_gk802_start - get_runtime_offset();
+	fdt = __dtb_imx6q_gk802_start - get_runtime_offset();
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index 4c0de9caedf2..6fc90fbbdc57 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -320,5 +320,5 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	}
 
 out:
-	imx35_barebox_entry(0);
+	imx35_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index d26ee73ef112..282835959828 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -94,5 +94,5 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	}
 
 out:
-	imx27_barebox_entry(0);
+	imx27_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/guf-santaro/lowlevel.c b/arch/arm/boards/guf-santaro/lowlevel.c
index da6d92af3b1e..daf9709dfb1d 100644
--- a/arch/arm/boards/guf-santaro/lowlevel.c
+++ b/arch/arm/boards/guf-santaro/lowlevel.c
@@ -30,7 +30,7 @@ extern char __dtb_imx6q_guf_santaro_start[];
 
 ENTRY_FUNCTION(start_imx6q_guf_santaro, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 	int i;
 
 	arm_cpu_lowlevel_init();
@@ -42,7 +42,7 @@ ENTRY_FUNCTION(start_imx6q_guf_santaro, r0, r1, r2)
 
 	setup_uart();
 
-	fdt = (uint32_t)__dtb_imx6q_guf_santaro_start - get_runtime_offset();
+	fdt = __dtb_imx6q_guf_santaro_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index 534e506e7b84..186c0d9dd02e 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -132,7 +132,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x70000000 && r < 0xf0000000)
-		imx53_barebox_entry(0);
+		imx53_barebox_entry(NULL);
 
 	/* Setup a preliminary stack */
 	r = 0xf8000000 + 0x60000 - 16;
@@ -146,5 +146,5 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 
 	imx_esdctlv4_init();
 
-	imx53_barebox_entry(0);
+	imx53_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/highbank/lowlevel.c b/arch/arm/boards/highbank/lowlevel.c
index b862a1f85736..c0405ed3a4e9 100644
--- a/arch/arm/boards/highbank/lowlevel.c
+++ b/arch/arm/boards/highbank/lowlevel.c
@@ -13,5 +13,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0x00000000, SZ_512M, 0);
+	barebox_arm_entry(0x00000000, SZ_512M, NULL);
 }
diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
index c23a12db12f6..d26562c02bf3 100644
--- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
+++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
@@ -7,5 +7,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, 0);
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, NULL);
 }
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index be27bc7bd3e5..861c27b8a6e1 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -75,7 +75,7 @@ static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl,
 	writel(esdctl, esdctlreg);
 }
 
-static void __bare_init karo_tx25_common_init(uint32_t fdt)
+static void __bare_init karo_tx25_common_init(void *fdt)
 {
 	uint32_t r;
 
@@ -167,11 +167,11 @@ extern char __dtb_imx25_karo_tx25_start[];
 
 ENTRY_FUNCTION(start_imx25_karo_tx25, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 8);
 
-	fdt = (uint32_t)__dtb_imx25_karo_tx25_start - get_runtime_offset();
+	fdt = __dtb_imx25_karo_tx25_start - get_runtime_offset();
 
 	karo_tx25_common_init(fdt);
 }
diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
index f7b90331bbf9..aa3b09b2ee68 100644
--- a/arch/arm/boards/karo-tx28/lowlevel.c
+++ b/arch/arm/boards/karo-tx28/lowlevel.c
@@ -7,5 +7,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, 0);
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, NULL);
 }
diff --git a/arch/arm/boards/karo-tx51/lowlevel.c b/arch/arm/boards/karo-tx51/lowlevel.c
index 3e6a0ee328b2..c3f7b4acbb46 100644
--- a/arch/arm/boards/karo-tx51/lowlevel.c
+++ b/arch/arm/boards/karo-tx51/lowlevel.c
@@ -5,5 +5,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	imx51_barebox_entry(0);
+	imx51_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
index f47f2607220f..d82e6669b009 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -16,5 +16,5 @@ void __naked barebox_arm_reset_vector(void)
 	if (IS_ENABLED(CONFIG_TX53_REV_XX30))
 		imx53_init_lowlevel_early(800);
 
-	imx53_barebox_entry(0);
+	imx53_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/mioa701/lowlevel.c b/arch/arm/boards/mioa701/lowlevel.c
index 02dc58696c93..aa4a82e598f6 100644
--- a/arch/arm/boards/mioa701/lowlevel.c
+++ b/arch/arm/boards/mioa701/lowlevel.c
@@ -6,5 +6,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0xa0000000, SZ_64M, 0);
+	barebox_arm_entry(0xa0000000, SZ_64M, NULL);
 }
diff --git a/arch/arm/boards/mx31moboard/lowlevel.c b/arch/arm/boards/mx31moboard/lowlevel.c
index e9ffb74e235f..b00c4bb2c008 100644
--- a/arch/arm/boards/mx31moboard/lowlevel.c
+++ b/arch/arm/boards/mx31moboard/lowlevel.c
@@ -83,7 +83,7 @@ static noinline __noreturn void mx31moboard_startup(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x80000000 && r < 0xa0000000)
-		imx31_barebox_entry(0);
+		imx31_barebox_entry(NULL);
 
 	writel(0x00000004, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC);
 	writel(0x00695727, MX31_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
@@ -99,7 +99,7 @@ static noinline __noreturn void mx31moboard_startup(void)
 	writel(0xDEADBEEF, MX31_CSD0_BASE_ADDR);
 	writel(0x0000000c, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC);
 
-	imx31_barebox_entry(0);
+	imx31_barebox_entry(NULL);
 
 }
 
diff --git a/arch/arm/boards/nhk8815/lowlevel.c b/arch/arm/boards/nhk8815/lowlevel.c
index b694c8946ddc..ce06f45c91b3 100644
--- a/arch/arm/boards/nhk8815/lowlevel.c
+++ b/arch/arm/boards/nhk8815/lowlevel.c
@@ -6,5 +6,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0x0, SZ_64M, 0);
+	barebox_arm_entry(0x0, SZ_64M, NULL);
 }
diff --git a/arch/arm/boards/omap343xdsp/lowlevel.c b/arch/arm/boards/omap343xdsp/lowlevel.c
index 816f400c837d..18ddff362501 100644
--- a/arch/arm/boards/omap343xdsp/lowlevel.c
+++ b/arch/arm/boards/omap343xdsp/lowlevel.c
@@ -556,5 +556,5 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t *data)
 
 	sdp343x_board_init();
 
-	barebox_arm_entry(0x80000000, SZ_128M, 0);
+	barebox_arm_entry(0x80000000, SZ_128M, NULL);
 }
diff --git a/arch/arm/boards/omap3evm/lowlevel.c b/arch/arm/boards/omap3evm/lowlevel.c
index 56075c1e6f18..5c3e8902a0cf 100644
--- a/arch/arm/boards/omap3evm/lowlevel.c
+++ b/arch/arm/boards/omap3evm/lowlevel.c
@@ -169,5 +169,5 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t *data)
 
 	omap3_evm_board_init();
 
-	barebox_arm_entry(0x80000000, SZ_128M, 0);
+	barebox_arm_entry(0x80000000, SZ_128M, NULL);
 }
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index 205aaaf81784..2679ae46908d 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -92,5 +92,5 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
 
 	panda_init_lowlevel();
 out:
-	barebox_arm_entry(0x80000000, SZ_1G, 0);
+	barebox_arm_entry(0x80000000, SZ_1G, NULL);
 }
diff --git a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
index 5b3bdafa7128..75b97881f5d9 100644
--- a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
@@ -74,7 +74,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* Skip SDRAM initialization if we run from RAM */
         r = get_pc();
         if (r > 0xa0000000 && r < 0xc0000000)
-                imx27_barebox_entry(0);
+                imx27_barebox_entry(NULL);
 
 	/* 399 MHz */
 	writel(IMX_PLL_PD(0) |
diff --git a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
index 7a67493fd686..57f63896645d 100644
--- a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
@@ -260,5 +260,5 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
 
 	pcaal1_board_init();
 
-	barebox_arm_entry(0x80000000, SZ_256M, 0);
+	barebox_arm_entry(0x80000000, SZ_256M, NULL);
 }
diff --git a/arch/arm/boards/phytec-phycard-omap4/lowlevel.c b/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
index 1ddf8a07ed29..841ac4b20683 100644
--- a/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
@@ -102,5 +102,5 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
 
 	pcaaxl2_init_lowlevel();
 out:
-	barebox_arm_entry(0x80000000, SZ_512M, 0);
+	barebox_arm_entry(0x80000000, SZ_512M, NULL);
 }
diff --git a/arch/arm/boards/phytec-phycore-am335x/lowlevel.c b/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
index d3cac6860ba3..a413b677538f 100644
--- a/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
@@ -60,7 +60,8 @@ extern char __dtb_am335x_phytec_phycore_end[];
  */
 static noinline void pcm051_board_init(void)
 {
-	unsigned long sdram = 0x80000000, fdt;
+	uint32_t sdram = 0x80000000;
+	void *fdt;
 
 	/* WDT1 is already running when the bootloader gets control
 	 * Disable it to avoid "random" resets
@@ -89,7 +90,7 @@ static noinline void pcm051_board_init(void)
 	memcpy((void *)sdram, __dtb_am335x_phytec_phycore_start,
 			__dtb_am335x_phytec_phycore_end -
 			__dtb_am335x_phytec_phycore_start);
-	fdt = sdram;
+	fdt = (void *)sdram;
 
 	barebox_arm_entry(sdram, SZ_512M, fdt);
 }
@@ -112,9 +113,9 @@ ENTRY_FUNCTION(start_am33xx_phytec_phycore_sram, bootinfo, r1, r2)
 
 ENTRY_FUNCTION(start_am33xx_phytec_phycore_sdram, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
-	fdt = (uint32_t)__dtb_am335x_phytec_phycore_start - get_runtime_offset();
+	fdt = __dtb_am335x_phytec_phycore_start - get_runtime_offset();
 
 	barebox_arm_entry(0x80000000, SZ_512M, fdt);
 }
diff --git a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
index 4f55af82642d..16b916ba0de0 100644
--- a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
@@ -100,5 +100,5 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 		imx27_barebox_boot_nand_external(0);
 	}
 out:
-	imx27_barebox_entry(0);
+	imx27_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
index cd894c25cedd..44fc5bc7658f 100644
--- a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
@@ -84,7 +84,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x80000000 && r < 0xa0000000)
-		imx31_barebox_entry(0);
+		imx31_barebox_entry(NULL);
 
 #if defined CONFIG_PCM037_SDRAM_BANK0_128MB
 #define ROWS0	ESDCTL0_ROW13
@@ -131,6 +131,6 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 
 		imx31_barebox_boot_nand_external(0);
 	} else {
-		imx31_barebox_entry(0);
+		imx31_barebox_entry(NULL);
 	}
 }
diff --git a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
index 8376bb4f00c8..919a9af3dac2 100644
--- a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
@@ -196,5 +196,5 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	}
 
 out:
-	imx35_barebox_entry(0);
+	imx35_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
index 4f3960043662..8ea62c7f56d0 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
@@ -122,5 +122,5 @@ void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
 
 	pcm049_init_lowlevel();
 out:
-	barebox_arm_entry(0x80000000, SZ_512M, 0);
+	barebox_arm_entry(0x80000000, SZ_512M, NULL);
 }
diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index fb7b186d2162..6c6f660d85d0 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
@@ -59,7 +59,7 @@ extern char __dtb_imx6s_phytec_pbab01_start[];
 
 ENTRY_FUNCTION(start_phytec_pbab01_1gib, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
@@ -68,14 +68,14 @@ ENTRY_FUNCTION(start_phytec_pbab01_1gib, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = (uint32_t)__dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
+	fdt = __dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
 
 ENTRY_FUNCTION(start_phytec_pbab01_2gib, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
@@ -84,14 +84,14 @@ ENTRY_FUNCTION(start_phytec_pbab01_2gib, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = (uint32_t)__dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
+	fdt = __dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_2G, fdt);
 }
 
 ENTRY_FUNCTION(start_phytec_pbab01_4gib, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	__barebox_arm_head();
 
@@ -99,14 +99,14 @@ ENTRY_FUNCTION(start_phytec_pbab01_4gib, r0, r1, r2)
 
 	arm_setup_stack(0x00920000 - 8);
 
-	fdt = (uint32_t)__dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
+	fdt = __dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, 0xEFFFFFF8, fdt);
 }
 
 ENTRY_FUNCTION(start_phytec_pbab01dl_1gib, r0, r1, r2)
 {
-        uint32_t fdt;
+	void *fdt;
 
         __barebox_arm_head();
 
@@ -114,14 +114,14 @@ ENTRY_FUNCTION(start_phytec_pbab01dl_1gib, r0, r1, r2)
 
         arm_setup_stack(0x00920000 - 8);
 
-	fdt = (uint32_t)__dtb_imx6dl_phytec_pbab01_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_phytec_pbab01_start - get_runtime_offset();
 
         barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
 
 ENTRY_FUNCTION(start_phytec_pbab01s_512mb, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	__barebox_arm_head();
 
@@ -129,7 +129,7 @@ ENTRY_FUNCTION(start_phytec_pbab01s_512mb, r0, r1, r2)
 
 	arm_setup_stack(0x00920000 - 8);
 
-	fdt = (uint32_t)__dtb_imx6s_phytec_pbab01_start - get_runtime_offset();
+	fdt = __dtb_imx6s_phytec_pbab01_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_512M, fdt);
 }
diff --git a/arch/arm/boards/radxa-rock/lowlevel.c b/arch/arm/boards/radxa-rock/lowlevel.c
index 0b40f105996b..65014e6bb507 100644
--- a/arch/arm/boards/radxa-rock/lowlevel.c
+++ b/arch/arm/boards/radxa-rock/lowlevel.c
@@ -20,11 +20,11 @@ extern char __dtb_rk3188_radxarock_start[];
 
 ENTRY_FUNCTION(start_radxa_rock, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_rk3188_radxarock_start - get_runtime_offset();
+	fdt = __dtb_rk3188_radxarock_start - get_runtime_offset();
 
 	barebox_arm_entry(0x60000000, SZ_2G, fdt);
 }
diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index 4c94cc92d863..022b11d29fc0 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -7,5 +7,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
         arm_cpu_lowlevel_init();
-        barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_128M, 0);
+	barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_128M, NULL);
 }
diff --git a/arch/arm/boards/solidrun-cubox/lowlevel.c b/arch/arm/boards/solidrun-cubox/lowlevel.c
index 4b35731e2beb..a28c2b18c5e6 100644
--- a/arch/arm/boards/solidrun-cubox/lowlevel.c
+++ b/arch/arm/boards/solidrun-cubox/lowlevel.c
@@ -25,11 +25,11 @@ extern char __dtb_dove_cubox_bb_start[];
 
 ENTRY_FUNCTION(start_solidrun_cubox, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_dove_cubox_bb_start - get_runtime_offset();
+	fdt = __dtb_dove_cubox_bb_start - get_runtime_offset();
 
 	mvebu_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/solidrun-hummingboard/lowlevel.c b/arch/arm/boards/solidrun-hummingboard/lowlevel.c
index 049a8a41be00..8710d85c75c4 100644
--- a/arch/arm/boards/solidrun-hummingboard/lowlevel.c
+++ b/arch/arm/boards/solidrun-hummingboard/lowlevel.c
@@ -7,10 +7,10 @@ extern char __dtb_imx6dl_hummingboard_start[];
 
 ENTRY_FUNCTION(start_imx6dl_hummingboard, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_imx6dl_hummingboard_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_hummingboard_start - get_runtime_offset();
 	barebox_arm_entry(0x10000000, SZ_512M, fdt);
 }
diff --git a/arch/arm/boards/terasic-sockit/lowlevel.c b/arch/arm/boards/terasic-sockit/lowlevel.c
index 0a4a9230313a..5b3b89a92417 100644
--- a/arch/arm/boards/terasic-sockit/lowlevel.c
+++ b/arch/arm/boards/terasic-sockit/lowlevel.c
@@ -47,11 +47,11 @@ extern char __dtb_socfpga_cyclone5_sockit_start[];
 
 ENTRY_FUNCTION(start_socfpga_sockit, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_socfpga_cyclone5_sockit_start - get_runtime_offset();
+	fdt = __dtb_socfpga_cyclone5_sockit_start - get_runtime_offset();
 
 	barebox_arm_entry(0x0, SZ_1G, fdt);
 }
@@ -82,7 +82,7 @@ static noinline void sockit_entry(void)
 
 	puts_ll("done\n");
 
-	barebox_arm_entry(0x0, SZ_1G, 0);
+	barebox_arm_entry(0x0, SZ_1G, NULL);
 }
 
 ENTRY_FUNCTION(start_socfpga_sockit_xload, r0, r1, r2)
diff --git a/arch/arm/boards/tqma53/lowlevel.c b/arch/arm/boards/tqma53/lowlevel.c
index 320a03e7b99e..0a672280081a 100644
--- a/arch/arm/boards/tqma53/lowlevel.c
+++ b/arch/arm/boards/tqma53/lowlevel.c
@@ -22,7 +22,7 @@ static inline void setup_uart(void __iomem *base)
 	writel(0x00000001, base + 0x80);
 }
 
-static void __noreturn start_imx53_tqma53_common(uint32_t fdt)
+static void __noreturn start_imx53_tqma53_common(void *fdt)
 {
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x278);
@@ -36,7 +36,7 @@ static void __noreturn start_imx53_tqma53_common(uint32_t fdt)
 
 ENTRY_FUNCTION(start_imx53_mba53_512mib, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
@@ -44,14 +44,14 @@ ENTRY_FUNCTION(start_imx53_mba53_512mib, r0, r1, r2)
 
 	imx53_init_lowlevel_early(800);
 
-	fdt = (uint32_t)__dtb_imx53_mba53_start - get_runtime_offset();
+	fdt = __dtb_imx53_mba53_start - get_runtime_offset();
 
 	start_imx53_tqma53_common(fdt);
 }
 
 ENTRY_FUNCTION(start_imx53_mba53_1gib, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
@@ -59,7 +59,7 @@ ENTRY_FUNCTION(start_imx53_mba53_1gib, r0, r1, r2)
 
 	imx53_init_lowlevel_early(800);
 
-	fdt = (uint32_t)__dtb_imx53_mba53_start - get_runtime_offset();
+	fdt = __dtb_imx53_mba53_start - get_runtime_offset();
 
 	start_imx53_tqma53_common(fdt);
 }
diff --git a/arch/arm/boards/tqma6x/lowlevel.c b/arch/arm/boards/tqma6x/lowlevel.c
index a09a2f5671a6..aed95e6fc747 100644
--- a/arch/arm/boards/tqma6x/lowlevel.c
+++ b/arch/arm/boards/tqma6x/lowlevel.c
@@ -43,7 +43,7 @@ extern char __dtb_imx6dl_mba6x_start[];
 
 ENTRY_FUNCTION(start_imx6q_mba6x, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
@@ -57,14 +57,14 @@ ENTRY_FUNCTION(start_imx6q_mba6x, r0, r1, r2)
 
 	arm_early_mmu_cache_invalidate();
 
-	fdt = (uint32_t)__dtb_imx6q_mba6x_start - get_runtime_offset();
+	fdt = __dtb_imx6q_mba6x_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
 
 ENTRY_FUNCTION(start_imx6dl_mba6x, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
@@ -78,7 +78,7 @@ ENTRY_FUNCTION(start_imx6dl_mba6x, r0, r1, r2)
 
 	arm_early_mmu_cache_invalidate();
 
-	fdt = (uint32_t)__dtb_imx6dl_mba6x_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_mba6x_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_512M, fdt);
 }
diff --git a/arch/arm/boards/udoo/lowlevel.c b/arch/arm/boards/udoo/lowlevel.c
index b54ddfec7b7d..5eac7a3bce46 100644
--- a/arch/arm/boards/udoo/lowlevel.c
+++ b/arch/arm/boards/udoo/lowlevel.c
@@ -7,11 +7,11 @@ extern char __dtb_imx6q_udoo_start[];
 
 ENTRY_FUNCTION(start_imx6_udoo, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_imx6q_udoo_start - get_runtime_offset();
+	fdt = __dtb_imx6q_udoo_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/variscite-mx6/lowlevel.c b/arch/arm/boards/variscite-mx6/lowlevel.c
index e93e87484c23..a2c0874d8013 100644
--- a/arch/arm/boards/variscite-mx6/lowlevel.c
+++ b/arch/arm/boards/variscite-mx6/lowlevel.c
@@ -59,7 +59,7 @@ extern char __dtb_imx6q_var_custom_start[];
 
 ENTRY_FUNCTION(start_variscite_custom, r0, r1, r2)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
@@ -68,7 +68,7 @@ ENTRY_FUNCTION(start_variscite_custom, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 	    setup_uart();
 
-	fdt = (uint32_t)__dtb_imx6q_var_custom_start - get_runtime_offset();
+	fdt = __dtb_imx6q_var_custom_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/versatile/lowlevel.c b/arch/arm/boards/versatile/lowlevel.c
index b694c8946ddc..ce06f45c91b3 100644
--- a/arch/arm/boards/versatile/lowlevel.c
+++ b/arch/arm/boards/versatile/lowlevel.c
@@ -6,5 +6,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0x0, SZ_64M, 0);
+	barebox_arm_entry(0x0, SZ_64M, NULL);
 }
diff --git a/arch/arm/boards/vexpress/lowlevel.c b/arch/arm/boards/vexpress/lowlevel.c
index a296352cf100..2ef94c59d691 100644
--- a/arch/arm/boards/vexpress/lowlevel.c
+++ b/arch/arm/boards/vexpress/lowlevel.c
@@ -16,7 +16,7 @@ void __naked barebox_arm_reset_vector(void)
 	arm_cpu_lowlevel_init();
 
 	if (amba_is_arm_sp804(IOMEM(0x10011000)))
-		barebox_arm_entry(0x60000000, SZ_512M, 0);
+		barebox_arm_entry(0x60000000, SZ_512M, NULL);
 	else
-		barebox_arm_entry(0x80000000, SZ_512M, 0);
+		barebox_arm_entry(0x80000000, SZ_512M, NULL);
 }
diff --git a/arch/arm/boards/virt2real/lowlevel.c b/arch/arm/boards/virt2real/lowlevel.c
index 3c90d78678bd..731e2cae64e6 100644
--- a/arch/arm/boards/virt2real/lowlevel.c
+++ b/arch/arm/boards/virt2real/lowlevel.c
@@ -30,5 +30,5 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
 
-	barebox_arm_entry(VIRT2REAL_SRAM_BASE, VIRT2REAL_SRAM_SIZE, 0);
+	barebox_arm_entry(VIRT2REAL_SRAM_BASE, VIRT2REAL_SRAM_SIZE, NULL);
 }
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 3ef01185219d..407ece506948 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -48,12 +48,12 @@ void __naked __section(.text_head_entry) pbl_start(void)
 extern void *input_data;
 extern void *input_data_end;
 
-static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
-		uint32_t memsize, uint32_t boarddata)
+static noinline __noreturn void __barebox_arm_entry(unsigned long membase,
+		unsigned long memsize, void *boarddata)
 {
 	uint32_t offset;
 	uint32_t pg_start, pg_end, pg_len;
-	void __noreturn (*barebox)(uint32_t, uint32_t, uint32_t);
+	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
 	uint32_t endmem = membase + memsize;
 	unsigned long barebox_base;
 
@@ -127,8 +127,8 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
  * Usually a TEXT_BASE of 1MiB below your lowest possible end of memory should
  * be fine.
  */
-void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
-		uint32_t boarddata)
+void __naked __noreturn barebox_arm_entry(unsigned long membase,
+		unsigned long memsize, void *boarddata)
 {
 	arm_setup_stack(membase + memsize - 16);
 
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 399e6b8330a2..961873d6bbeb 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -32,12 +32,12 @@
 #include "mmu-early.h"
 
 unsigned long arm_stack_top;
-static unsigned long barebox_boarddata;
+static void *barebox_boarddata;
 
 /*
  * return the boarddata variable passed to barebox_arm_entry
  */
-unsigned long barebox_arm_boarddata(void)
+void *barebox_arm_boarddata(void)
 {
 	return barebox_boarddata;
 }
@@ -49,8 +49,8 @@ void *barebox_arm_boot_dtb(void)
 	return barebox_boot_dtb;
 }
 
-static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
-		uint32_t boarddata)
+static noinline __noreturn void __start(unsigned long membase,
+		unsigned long memsize, void *boarddata)
 {
 	unsigned long endmem = membase + memsize;
 	unsigned long malloc_start, malloc_end;
@@ -83,12 +83,11 @@ static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
 	 * If boarddata is a pointer inside valid memory and contains a
 	 * FDT magic then use it as later to probe devices
 	 */
-	if (boarddata >= membase && boarddata < membase + memsize &&
-			get_unaligned_be32((void *)boarddata) == FDT_MAGIC) {
-		uint32_t totalsize = get_unaligned_be32((void *)boarddata + 4);
+	if (boarddata && get_unaligned_be32(boarddata) == FDT_MAGIC) {
+		uint32_t totalsize = get_unaligned_be32(boarddata + 4);
 		endmem -= ALIGN(totalsize, 64);
 		barebox_boot_dtb = (void *)endmem;
-		memcpy(barebox_boot_dtb, (void *)boarddata, totalsize);
+		memcpy(barebox_boot_dtb, boarddata, totalsize);
 	}
 
 	if ((unsigned long)_text > membase + memsize ||
@@ -144,8 +143,8 @@ void __naked __section(.text_entry) start(void)
  * Usually a TEXT_BASE of 1MiB below your lowest possible end of memory should
  * be fine.
  */
-void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
-                uint32_t boarddata)
+void __naked __noreturn barebox_arm_entry(unsigned long membase,
+		unsigned long memsize, void *boarddata)
 {
 	arm_setup_stack(membase + memsize - 16);
 
@@ -158,8 +157,8 @@ void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
  * First function in the uncompressed image. We get here from
  * the pbl. The stack already has been set up by the pbl.
  */
-void __naked __section(.text_entry) start(uint32_t membase, uint32_t memsize,
-                uint32_t boarddata)
+void __naked __section(.text_entry) start(unsigned long membase,
+		unsigned long memsize, void *boarddata)
 {
 	__start(membase, memsize, boarddata);
 }
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 7397c7de322e..7081aa78b12c 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -43,11 +43,11 @@ static int __attribute__((__used__))
 	__attribute__((__section__(".image_end")))
 	__image_end_dummy = 0xdeadbeef;
 
-static void __noreturn noinline uncompress_start_payload(uint32_t membase,
-		uint32_t memsize, uint32_t boarddata)
+static void __noreturn noinline uncompress_start_payload(unsigned long membase,
+		unsigned long memsize, void *boarddata)
 {
 	uint32_t pg_len;
-	void __noreturn (*barebox)(uint32_t, uint32_t, uint32_t);
+	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
 	uint32_t endmem = membase + memsize;
 	unsigned long barebox_base;
 	uint32_t *ptr;
@@ -98,8 +98,8 @@ static void __noreturn noinline uncompress_start_payload(uint32_t membase,
  * For the multi images startup process board code jumps here. We will uncompress
  * the attached barebox image and start it.
  */
-void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
-		uint32_t boarddata)
+void __naked __noreturn barebox_arm_entry(unsigned long membase,
+		unsigned long memsize, void *boarddata)
 {
 	arm_setup_stack(membase + memsize - 16);
 
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index faf9afaab992..66f6fe5ef6b4 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -43,8 +43,8 @@ uint32_t get_runtime_offset(void);
 void setup_c(void);
 void relocate_to_current_adr(void);
 void relocate_to_adr(unsigned long target);
-void __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize, uint32_t boarddata);
-unsigned long barebox_arm_boarddata(void);
+void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize, void *boarddata);
+void *barebox_arm_boarddata(void);
 
 #if defined(CONFIG_RELOCATABLE) && defined(CONFIG_ARM_EXCEPTIONS)
 void arm_fixup_vectors(void);
diff --git a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
index a99cfec22545..f78e368086ab 100644
--- a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
@@ -129,5 +129,5 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 	set_cr(r);
 
 end:
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91rm9200_get_sdram_size(), 0);
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91rm9200_get_sdram_size(), NULL);
 }
diff --git a/arch/arm/mach-at91/at91sam9260_lowlevel_init.c b/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
index 165bff3a4542..f745b8de4fd6 100644
--- a/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
@@ -34,7 +34,8 @@ void __bare_init at91sam9260_lowlevel_init(void)
 
 	at91sam926x_lowlevel_init(&cfg);
 
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc), 0);
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
+	                  NULL);
 }
 
 void __naked __bare_init barebox_arm_reset_vector(void)
diff --git a/arch/arm/mach-at91/at91sam9261_lowlevel_init.c b/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
index 9e558ea9f194..b9b4dfbb0ec7 100644
--- a/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
@@ -34,7 +34,8 @@ void __bare_init at91sam9261_lowlevel_init(void)
 
 	at91sam926x_lowlevel_init(&cfg);
 
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc), 0);
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
+	                  NULL);
 }
 
 void __naked __bare_init barebox_arm_reset_vector(void)
diff --git a/arch/arm/mach-at91/at91sam9263_lowlevel_init.c b/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
index 1f7d78833a02..00d78f2375af 100644
--- a/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
@@ -34,7 +34,8 @@ void __bare_init at91sam9263_lowlevel_init(void)
 
 	at91sam926x_lowlevel_init(&cfg);
 
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc), 0);
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
+	                  NULL);
 }
 
 void __naked __bare_init barebox_arm_reset_vector(void)
diff --git a/arch/arm/mach-at91/at91sam9g45_lowlevel_init.c b/arch/arm/mach-at91/at91sam9g45_lowlevel_init.c
index df65b86a07e3..b58f101ee25d 100644
--- a/arch/arm/mach-at91/at91sam9g45_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam9g45_lowlevel_init.c
@@ -22,5 +22,6 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 
 	arm_setup_stack(AT91SAM9G45_SRAM_BASE + AT91SAM9G45_SRAM_SIZE - 16);
 
-	barebox_arm_entry(AT91_CHIPSELECT_6, at91sam9g45_get_ddram_size(1), 0);
+	barebox_arm_entry(AT91_CHIPSELECT_6, at91sam9g45_get_ddram_size(1),
+	                  NULL);
 }
diff --git a/arch/arm/mach-at91/at91sam9n12_lowlevel_init.c b/arch/arm/mach-at91/at91sam9n12_lowlevel_init.c
index eca12c548a06..72a092899f20 100644
--- a/arch/arm/mach-at91/at91sam9n12_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam9n12_lowlevel_init.c
@@ -22,5 +22,6 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 
 	arm_setup_stack(AT91SAM9N12_SRAM_BASE + AT91SAM9N12_SRAM_SIZE - 16);
 
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9n12_get_ddram_size(), 0);
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9n12_get_ddram_size(),
+	                  NULL);
 }
diff --git a/arch/arm/mach-at91/at91sam9x5_lowlevel_init.c b/arch/arm/mach-at91/at91sam9x5_lowlevel_init.c
index 67dbd005027f..7781036e3df2 100644
--- a/arch/arm/mach-at91/at91sam9x5_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam9x5_lowlevel_init.c
@@ -22,5 +22,5 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 
 	arm_setup_stack(AT91SAM9X5_SRAM_BASE + AT91SAM9X5_SRAM_SIZE - 16);
 
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9x5_get_ddram_size(), 0);
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9x5_get_ddram_size(), NULL);
 }
diff --git a/arch/arm/mach-at91/sama5d3_lowlevel_init.c b/arch/arm/mach-at91/sama5d3_lowlevel_init.c
index 9bb25e309704..d3fcbc2625c4 100644
--- a/arch/arm/mach-at91/sama5d3_lowlevel_init.c
+++ b/arch/arm/mach-at91/sama5d3_lowlevel_init.c
@@ -21,5 +21,5 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
 
-	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), 0);
+	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
 }
diff --git a/arch/arm/mach-clps711x/lowlevel.c b/arch/arm/mach-clps711x/lowlevel.c
index 58306f29fc59..93a64a11c06f 100644
--- a/arch/arm/mach-clps711x/lowlevel.c
+++ b/arch/arm/mach-clps711x/lowlevel.c
@@ -69,5 +69,5 @@ void __naked __bare_init clps711x_barebox_entry(u32 pllmult)
 	/* Disable LED flasher */
 	writew(0, LEDFLSH);
 
-	barebox_arm_entry(SDRAM0_BASE, SZ_8M, 0);
+	barebox_arm_entry(SDRAM0_BASE, SZ_8M, NULL);
 }
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 5b49a3d1a013..c756c65f20d7 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -436,7 +436,7 @@ mem_initcall(imx_esdctl_init);
  * - cs0 enabled, cs1 enabled: The largest continuous region, that is, cs0 + cs1
  *                             if cs0 is taking the whole address space.
  */
-void __naked __noreturn imx1_barebox_entry(uint32_t boarddata)
+void __naked __noreturn imx1_barebox_entry(void *boarddata)
 {
 	unsigned long base;
 	unsigned long size;
@@ -450,7 +450,7 @@ void __naked __noreturn imx1_barebox_entry(uint32_t boarddata)
 	barebox_arm_entry(base, size, boarddata);
 }
 
-void __naked __noreturn imx25_barebox_entry(uint32_t boarddata)
+void __naked __noreturn imx25_barebox_entry(void *boarddata)
 {
 	unsigned long base;
 	unsigned long size;
@@ -464,7 +464,7 @@ void __naked __noreturn imx25_barebox_entry(uint32_t boarddata)
 	barebox_arm_entry(base, size, boarddata);
 }
 
-void __naked __noreturn imx27_barebox_entry(uint32_t boarddata)
+void __naked __noreturn imx27_barebox_entry(void *boarddata)
 {
 	unsigned long base;
 	unsigned long size;
@@ -480,7 +480,7 @@ void __naked __noreturn imx27_barebox_entry(uint32_t boarddata)
 	barebox_arm_entry(base, size, boarddata);
 }
 
-void __naked __noreturn imx31_barebox_entry(uint32_t boarddata)
+void __naked __noreturn imx31_barebox_entry(void *boarddata)
 {
 	unsigned long base;
 	unsigned long size;
@@ -496,7 +496,7 @@ void __naked __noreturn imx31_barebox_entry(uint32_t boarddata)
 	barebox_arm_entry(base, size, boarddata);
 }
 
-void __naked __noreturn imx35_barebox_entry(uint32_t boarddata)
+void __naked __noreturn imx35_barebox_entry(void *boarddata)
 {
 	unsigned long base;
 	unsigned long size;
@@ -512,7 +512,7 @@ void __naked __noreturn imx35_barebox_entry(uint32_t boarddata)
 	barebox_arm_entry(base, size, boarddata);
 }
 
-void __naked __noreturn imx51_barebox_entry(uint32_t boarddata)
+void __naked __noreturn imx51_barebox_entry(void *boarddata)
 {
 	unsigned long base;
 	unsigned long size;
@@ -526,7 +526,7 @@ void __naked __noreturn imx51_barebox_entry(uint32_t boarddata)
 	barebox_arm_entry(base, size, boarddata);
 }
 
-void __naked __noreturn imx53_barebox_entry(uint32_t boarddata)
+void __naked __noreturn imx53_barebox_entry(void *boarddata)
 {
 	unsigned long base;
 	unsigned long size;
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 24b978287ec7..17878e400b2c 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -319,7 +319,7 @@ static inline int imx35_pagesize_2k(void)
 #define DEFINE_EXTERNAL_NAND_ENTRY(soc)					\
 									\
 void __noreturn BARE_INIT_FUNCTION(imx##soc##_boot_nand_external_cont)  \
-			(uint32_t boarddata)				\
+			(void *boarddata)				\
 {									\
 	unsigned long nfc_base = MX##soc##_NFC_BASE_ADDR;		\
 	void *sdram = (void *)MX##soc##_CSD0_BASE_ADDR;			\
@@ -336,20 +336,21 @@ void __noreturn BARE_INIT_FUNCTION(imx##soc##_boot_nand_external_cont)  \
 }									\
 									\
 void __noreturn BARE_INIT_FUNCTION(imx##soc##_barebox_boot_nand_external) \
-			(uint32_t boarddata)				\
+			(void *bd)				\
 {									\
 	unsigned long nfc_base = MX##soc##_NFC_BASE_ADDR;		\
 	unsigned long sdram = MX##soc##_CSD0_BASE_ADDR;			\
+	unsigned long boarddata = (unsigned long)bd;			\
 	unsigned long __fn;						\
 	u32 r;								\
 	u32 *src, *trg;							\
 	int i;								\
-	void __noreturn (*fn)(uint32_t);				\
+	void __noreturn (*fn)(void *);					\
 									\
 	/* skip NAND boot if not running from NFC space */		\
 	r = get_pc();							\
 	if (r < nfc_base || r > nfc_base + 0x800)			\
-		imx##soc##_barebox_entry(boarddata);			\
+		imx##soc##_barebox_entry(bd);				\
 									\
 	src = (unsigned int *)nfc_base;					\
 	trg = (unsigned int *)sdram;					\
@@ -378,7 +379,7 @@ void __noreturn BARE_INIT_FUNCTION(imx##soc##_barebox_boot_nand_external) \
 		boarddata += sdram;					\
 	}								\
 									\
-	fn(boarddata);							\
+	fn((void *)boarddata);						\
 }
 
 #ifdef BROKEN
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index b7219d9c4e28..28d44da9382c 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -128,14 +128,14 @@
 #define ESDCFGx_tRC_16			0x0000000f
 
 #ifndef __ASSEMBLY__
-void __naked __noreturn imx1_barebox_entry(uint32_t boarddata);
-void __naked __noreturn imx25_barebox_entry(uint32_t boarddata);
-void __naked __noreturn imx27_barebox_entry(uint32_t boarddata);
-void __naked __noreturn imx31_barebox_entry(uint32_t boarddata);
-void __naked __noreturn imx35_barebox_entry(uint32_t boarddata);
-void __naked __noreturn imx51_barebox_entry(uint32_t boarddata);
-void __naked __noreturn imx53_barebox_entry(uint32_t boarddata);
-void __naked __noreturn imx6_barebox_entry(uint32_t boarddata);
+void __naked __noreturn imx1_barebox_entry(void *boarddata);
+void __naked __noreturn imx25_barebox_entry(void *boarddata);
+void __naked __noreturn imx27_barebox_entry(void *boarddata);
+void __naked __noreturn imx31_barebox_entry(void *boarddata);
+void __naked __noreturn imx35_barebox_entry(void *boarddata);
+void __naked __noreturn imx51_barebox_entry(void *boarddata);
+void __naked __noreturn imx53_barebox_entry(void *boarddata);
+void __naked __noreturn imx6_barebox_entry(void *boarddata);
 void imx_esdctl_disable(void);
 #endif
 
diff --git a/arch/arm/mach-imx/include/mach/imx-nand.h b/arch/arm/mach-imx/include/mach/imx-nand.h
index 972a0da5d7ba..b9305e2e9dcb 100644
--- a/arch/arm/mach-imx/include/mach/imx-nand.h
+++ b/arch/arm/mach-imx/include/mach/imx-nand.h
@@ -3,11 +3,11 @@
 
 #include <linux/mtd/mtd.h>
 
-void imx21_barebox_boot_nand_external(uint32_t boarddata);
-void imx25_barebox_boot_nand_external(uint32_t boarddata);
-void imx27_barebox_boot_nand_external(uint32_t boarddata);
-void imx31_barebox_boot_nand_external(uint32_t boarddata);
-void imx35_barebox_boot_nand_external(uint32_t boarddata);
+void imx21_barebox_boot_nand_external(void *boarddata);
+void imx25_barebox_boot_nand_external(void *boarddata);
+void imx27_barebox_boot_nand_external(void *boarddata);
+void imx31_barebox_boot_nand_external(void *boarddata);
+void imx35_barebox_boot_nand_external(void *boarddata);
 void imx_nand_set_layout(int writesize, int datawidth);
 
 struct imx_nand_platform_data {
diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
index 921b5150f654..d52b88d71318 100644
--- a/arch/arm/mach-mvebu/common.c
+++ b/arch/arm/mach-mvebu/common.c
@@ -49,7 +49,7 @@ static void mvebu_remap_registers(void)
 #define MVEBU_BOOTUP_MEMORY_BASE	0x00000000
 #define MVEBU_BOOTUP_MEMORY_SIZE	SZ_64M
 
-void __naked __noreturn mvebu_barebox_entry(uint32_t boarddata)
+void __naked __noreturn mvebu_barebox_entry(void *boarddata)
 {
 	mvebu_remap_registers();
 	barebox_arm_entry(MVEBU_BOOTUP_MEMORY_BASE,
diff --git a/arch/arm/mach-mvebu/include/mach/lowlevel.h b/arch/arm/mach-mvebu/include/mach/lowlevel.h
index 9fbf1eaf450e..c922a27a7c62 100644
--- a/arch/arm/mach-mvebu/include/mach/lowlevel.h
+++ b/arch/arm/mach-mvebu/include/mach/lowlevel.h
@@ -18,6 +18,6 @@
 #ifndef __MACH_LOWLEVEL_H__
 #define __MACH_LOWLEVEL_H__
 
-void mvebu_barebox_entry(uint32_t boarddata);
+void mvebu_barebox_entry(void *boarddata);
 
 #endif
diff --git a/arch/arm/mach-mvebu/lowlevel.c b/arch/arm/mach-mvebu/lowlevel.c
index 11810cc6b576..147a717ad9f3 100644
--- a/arch/arm/mach-mvebu/lowlevel.c
+++ b/arch/arm/mach-mvebu/lowlevel.c
@@ -24,5 +24,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	mvebu_barebox_entry(0);
+	mvebu_barebox_entry(NULL);
 }
diff --git a/arch/arm/mach-tegra/tegra_maincomplex_init.c b/arch/arm/mach-tegra/tegra_maincomplex_init.c
index 776af64aeab9..2a85f26a9d92 100644
--- a/arch/arm/mach-tegra/tegra_maincomplex_init.c
+++ b/arch/arm/mach-tegra/tegra_maincomplex_init.c
@@ -51,5 +51,5 @@ void tegra_maincomplex_entry(void)
 	}
 
 	barebox_arm_entry(rambase, ramsize,
-			  readl(TEGRA_PMC_BASE + PMC_SCRATCH(10)));
+			  (void *)readl(TEGRA_PMC_BASE + PMC_SCRATCH(10)));
 }
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
