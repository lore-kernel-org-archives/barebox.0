Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos5-00067m-4a
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:55:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:52:39 +0100
Message-Id: <20180316125354.23462-4-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/78] ARM: return positive offset in get_runtime_offset()
To: Barebox List <barebox@lists.infradead.org>

When we are linked at 0x0 and running at 0x01000000 then
get_runtime_offset() should return 0x01000000 and not 0xff000000. This
makes get_runtime_offset() more consistent and better understandable.

This was tested on a Freescale i.MX53 Quickstart board. Additionally
relocate_to_adr() was tested since that is normally not called.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/afi-gf/lowlevel.c                    |  2 +-
 arch/arm/boards/altera-socdk/lowlevel.c              |  2 +-
 arch/arm/boards/at91sam9263ek/lowlevel_init.c        |  2 +-
 arch/arm/boards/at91sam9x5ek/lowlevel.c              |  2 +-
 arch/arm/boards/beaglebone/lowlevel.c                |  2 +-
 arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c | 10 +++++-----
 arch/arm/boards/ccxmx53/lowlevel.c                   |  4 ++--
 arch/arm/boards/datamodul-edm-qmx6/lowlevel.c        |  2 +-
 arch/arm/boards/dfi-fs700-m60/lowlevel.c             |  6 +++---
 arch/arm/boards/duckbill/lowlevel.c                  |  2 +-
 arch/arm/boards/ebv-socrates/lowlevel.c              |  2 +-
 arch/arm/boards/efika-mx-smartbook/lowlevel.c        |  2 +-
 arch/arm/boards/element14-warp7/lowlevel.c           |  2 +-
 arch/arm/boards/eltec-hipercam/lowlevel.c            |  2 +-
 arch/arm/boards/embedsky-e9/lowlevel.c               |  2 +-
 arch/arm/boards/embest-riotboard/lowlevel.c          |  2 +-
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c    |  2 +-
 arch/arm/boards/freescale-mx53-qsb/lowlevel.c        |  4 ++--
 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c      |  2 +-
 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c     |  2 +-
 arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c  |  2 +-
 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c     |  2 +-
 arch/arm/boards/freescale-vf610-twr/lowlevel.c       |  2 +-
 arch/arm/boards/gateworks-ventana/lowlevel.c         |  2 +-
 arch/arm/boards/gk802/lowlevel.c                     |  2 +-
 arch/arm/boards/globalscale-guruplug/lowlevel.c      |  2 +-
 arch/arm/boards/globalscale-mirabox/lowlevel.c       |  2 +-
 arch/arm/boards/karo-tx25/lowlevel.c                 |  2 +-
 arch/arm/boards/karo-tx6x/lowlevel.c                 |  8 ++++----
 arch/arm/boards/kindle-mx50/lowlevel.c               |  6 +++---
 arch/arm/boards/lenovo-ix4-300d/lowlevel.c           |  2 +-
 arch/arm/boards/marvell-armada-xp-gp/lowlevel.c      |  2 +-
 arch/arm/boards/netgear-rn104/lowlevel.c             |  2 +-
 arch/arm/boards/netgear-rn2120/lowlevel.c            |  2 +-
 arch/arm/boards/phytec-phycard-imx27/lowlevel.c      |  2 +-
 arch/arm/boards/phytec-phycore-imx27/lowlevel.c      |  2 +-
 arch/arm/boards/phytec-phycore-imx7/lowlevel.c       |  4 ++--
 arch/arm/boards/phytec-som-am335x/lowlevel.c         |  6 +++---
 arch/arm/boards/phytec-som-imx6/lowlevel.c           |  2 +-
 arch/arm/boards/phytec-som-rk3288/lowlevel.c         |  2 +-
 arch/arm/boards/plathome-openblocks-a6/lowlevel.c    |  2 +-
 arch/arm/boards/plathome-openblocks-ax3/lowlevel.c   |  2 +-
 arch/arm/boards/radxa-rock/lowlevel.c                |  2 +-
 arch/arm/boards/raspberry-pi/lowlevel.c              |  4 ++--
 arch/arm/boards/reflex-achilles/lowlevel.c           |  2 +-
 arch/arm/boards/solidrun-cubox/lowlevel.c            |  2 +-
 arch/arm/boards/solidrun-microsom/lowlevel.c         | 18 +++++++++---------
 arch/arm/boards/technexion-pico-hobbit/lowlevel.c    |  2 +-
 arch/arm/boards/terasic-de0-nano-soc/lowlevel.c      |  2 +-
 arch/arm/boards/terasic-sockit/lowlevel.c            |  2 +-
 arch/arm/boards/tqma53/lowlevel.c                    |  4 ++--
 arch/arm/boards/tqma6x/lowlevel.c                    |  4 ++--
 arch/arm/boards/turris-omnia/lowlevel.c              |  2 +-
 arch/arm/boards/udoo/lowlevel.c                      |  2 +-
 arch/arm/boards/usi-topkick/lowlevel.c               |  2 +-
 arch/arm/boards/variscite-mx6/lowlevel.c             |  2 +-
 arch/arm/boards/vexpress/lowlevel.c                  |  2 +-
 arch/arm/boards/vscom-baltos/lowlevel.c              |  2 +-
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c            |  4 ++--
 arch/arm/boards/zii-vf610-dev/lowlevel.c             |  2 +-
 arch/arm/cpu/common.c                                | 16 ++++++++--------
 arch/arm/cpu/setupc.S                                |  9 +++++----
 arch/arm/cpu/start-pbl.c                             |  4 ++--
 arch/arm/cpu/uncompress.c                            |  2 +-
 arch/arm/lib32/runtime-offset.S                      |  4 ++--
 arch/arm/mach-mvebu/include/mach/common.h            |  2 +-
 arch/arm/mach-tegra/include/mach/lowlevel.h          |  2 +-
 arch/arm/mach-tegra/tegra_avp_init.c                 |  2 +-
 68 files changed, 109 insertions(+), 108 deletions(-)

diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
index 91b4b68c6d..1afc96571b 100644
--- a/arch/arm/boards/afi-gf/lowlevel.c
+++ b/arch/arm/boards/afi-gf/lowlevel.c
@@ -258,7 +258,7 @@ ENTRY_FUNCTION(start_am33xx_afi_gf_sdram, r0, r1, r2)
 {
 	void *fdt;
 
-	fdt = __dtb_z_am335x_afi_gf_start - get_runtime_offset();
+	fdt = __dtb_z_am335x_afi_gf_start + get_runtime_offset();
 
 	putc_ll('>');
 
diff --git a/arch/arm/boards/altera-socdk/lowlevel.c b/arch/arm/boards/altera-socdk/lowlevel.c
index 8cfe839159..08e70a0fc6 100644
--- a/arch/arm/boards/altera-socdk/lowlevel.c
+++ b/arch/arm/boards/altera-socdk/lowlevel.c
@@ -26,7 +26,7 @@ ENTRY_FUNCTION(start_socfpga_socdk, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_socfpga_cyclone5_socdk_start - get_runtime_offset();
+	fdt = __dtb_socfpga_cyclone5_socdk_start + get_runtime_offset();
 
 	barebox_arm_entry(0x0, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index 2004d70cbe..30c14089d1 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -126,7 +126,7 @@ ENTRY_FUNCTION(start_at91sam9263ek, r0, r1, r2)
 	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
 
 	if (IS_ENABLED(CONFIG_MACH_AT91SAM9263EK_DT))
-		fdt = __dtb_at91sam9263ek_start - get_runtime_offset();
+		fdt = __dtb_at91sam9263ek_start + get_runtime_offset();
 	else
 		fdt = NULL;
 
diff --git a/arch/arm/boards/at91sam9x5ek/lowlevel.c b/arch/arm/boards/at91sam9x5ek/lowlevel.c
index acf80d7955..9aa0e8ba9b 100644
--- a/arch/arm/boards/at91sam9x5ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
@@ -15,7 +15,7 @@ ENTRY_FUNCTION(start_at91sam9x5ek, r0, r1, r2)
 	arm_cpu_lowlevel_init();
 	arm_setup_stack(AT91SAM9X5_SRAM_BASE + AT91SAM9X5_SRAM_SIZE - 16);
 
-	fdt = __dtb_at91sam9x5ek_start - get_runtime_offset();
+	fdt = __dtb_at91sam9x5ek_start + get_runtime_offset();
 
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9x5_get_ddram_size(), fdt);
 }
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index a56b4b6240..a1ba1d32f9 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -184,7 +184,7 @@ ENTRY_FUNCTION(start_am33xx_beaglebone_sdram, r0, r1, r2)
 		fdt = __dtb_z_am335x_bone_start;
 	}
 
-	fdt -= get_runtime_offset();
+	fdt += get_runtime_offset();
 
 	barebox_arm_entry(0x80000000, sdram_size, fdt);
 }
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c b/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
index bee70a5af4..74ff71fc24 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
@@ -11,7 +11,7 @@ ENTRY_FUNCTION(start_imx6q_nitrogen6x_1g, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_nitrogen6x_start - get_runtime_offset();
+	fdt = __dtb_imx6q_nitrogen6x_start + get_runtime_offset();
 
 	imx6q_barebox_entry(fdt);
 }
@@ -22,7 +22,7 @@ ENTRY_FUNCTION(start_imx6q_nitrogen6x_2g, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_nitrogen6x_start - get_runtime_offset();
+	fdt = __dtb_imx6q_nitrogen6x_start + get_runtime_offset();
 
 	imx6q_barebox_entry(fdt);
 }
@@ -35,7 +35,7 @@ ENTRY_FUNCTION(start_imx6dl_nitrogen6x_1g, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6dl_nitrogen6x_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_nitrogen6x_start + get_runtime_offset();
 
 	imx6q_barebox_entry(fdt);
 }
@@ -46,7 +46,7 @@ ENTRY_FUNCTION(start_imx6dl_nitrogen6x_2g, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6dl_nitrogen6x_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_nitrogen6x_start + get_runtime_offset();
 
 	imx6q_barebox_entry(fdt);
 }
@@ -59,7 +59,7 @@ ENTRY_FUNCTION(start_imx6qp_nitrogen6_max, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6qp_nitrogen6_max_start - get_runtime_offset();
+	fdt = __dtb_imx6qp_nitrogen6_max_start + get_runtime_offset();
 
 	imx6q_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/ccxmx53/lowlevel.c b/arch/arm/boards/ccxmx53/lowlevel.c
index 22492140d8..c27e33098c 100644
--- a/arch/arm/boards/ccxmx53/lowlevel.c
+++ b/arch/arm/boards/ccxmx53/lowlevel.c
@@ -41,7 +41,7 @@ ENTRY_FUNCTION(start_ccxmx53_512mb, r0, r1, r2)
 
 	IMD_USED(ccxmx53_memsize_SZ_512M);
 
-	fdt = __dtb_imx53_ccxmx53_start - get_runtime_offset();
+	fdt = __dtb_imx53_ccxmx53_start + get_runtime_offset();
 
 	imx53_barebox_entry(fdt);
 }
@@ -55,7 +55,7 @@ ENTRY_FUNCTION(start_ccxmx53_1gib, r0, r1, r2)
 
 	IMD_USED(ccxmx53_memsize_SZ_1G);
 
-	fdt = __dtb_imx53_ccxmx53_start - get_runtime_offset();
+	fdt = __dtb_imx53_ccxmx53_start + get_runtime_offset();
 
 	imx53_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
index 28b4aa280d..3ecdb66bc5 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
@@ -147,7 +147,7 @@ ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)
 
 	arm_setup_stack(0x00940000 - 8);
 
-	fdt = __dtb_imx6q_dmo_edmqmx6_start - get_runtime_offset();
+	fdt = __dtb_imx6q_dmo_edmqmx6_start + get_runtime_offset();
 
 	if (get_pc() < 0x10000000) {
 		sdram_init();
diff --git a/arch/arm/boards/dfi-fs700-m60/lowlevel.c b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
index a22f66a11b..b419228505 100644
--- a/arch/arm/boards/dfi-fs700-m60/lowlevel.c
+++ b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
@@ -115,7 +115,7 @@ ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q_nanya, r0, r1, r2)
 
 	early_uart_init_6q();
 
-	fdt = __dtb_imx6q_dfi_fs700_m60_6q_start - get_runtime_offset();
+	fdt = __dtb_imx6q_dfi_fs700_m60_6q_start + get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, memsize_1G_2G(), fdt);
 }
@@ -134,7 +134,7 @@ ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q_micron, r0, r1, r2)
 
 	early_uart_init_6q();
 
-	fdt = __dtb_imx6q_dfi_fs700_m60_6q_start - get_runtime_offset();
+	fdt = __dtb_imx6q_dfi_fs700_m60_6q_start + get_runtime_offset();
 
 	*(uint32_t *)0x10000000 = SZ_1G;
 
@@ -157,7 +157,7 @@ ENTRY_FUNCTION(start_imx6dl_dfi_fs700_m60_6s, r0, r1, r2)
 
 	early_uart_init_6s();
 
-	fdt = __dtb_imx6dl_dfi_fs700_m60_6s_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_dfi_fs700_m60_6s_start + get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, memsize_512M_1G(), fdt);
 }
diff --git a/arch/arm/boards/duckbill/lowlevel.c b/arch/arm/boards/duckbill/lowlevel.c
index c00a9a0b04..2922e40f2a 100644
--- a/arch/arm/boards/duckbill/lowlevel.c
+++ b/arch/arm/boards/duckbill/lowlevel.c
@@ -20,7 +20,7 @@ ENTRY_FUNCTION(start_barebox_duckbill, r0, r1, r2)
 
 	pr_debug("here we are!\n");
 
-	fdt = __dtb_imx28_duckbill_start - get_runtime_offset();
+	fdt = __dtb_imx28_duckbill_start + get_runtime_offset();
 
 	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, fdt);
 }
diff --git a/arch/arm/boards/ebv-socrates/lowlevel.c b/arch/arm/boards/ebv-socrates/lowlevel.c
index 9643269f8e..ef9f4535f6 100644
--- a/arch/arm/boards/ebv-socrates/lowlevel.c
+++ b/arch/arm/boards/ebv-socrates/lowlevel.c
@@ -52,7 +52,7 @@ ENTRY_FUNCTION(start_socfpga_socrates, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_socfpga_cyclone5_socrates_start - get_runtime_offset();
+	fdt = __dtb_socfpga_cyclone5_socrates_start + get_runtime_offset();
 
 	barebox_arm_entry(0x0, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/efika-mx-smartbook/lowlevel.c b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
index 52454c7d50..6da5bfaf55 100644
--- a/arch/arm/boards/efika-mx-smartbook/lowlevel.c
+++ b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
@@ -15,7 +15,7 @@ ENTRY_FUNCTION(start_imx51_genesi_efikasb, r0, r1, r2)
 	arm_setup_stack(0x20000000 - 16);
 	imx51_init_lowlevel(800);
 
-	fdt = __dtb_imx51_genesi_efika_sb_start - get_runtime_offset();
+	fdt = __dtb_imx51_genesi_efika_sb_start + get_runtime_offset();
 
 	imx51_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/element14-warp7/lowlevel.c b/arch/arm/boards/element14-warp7/lowlevel.c
index 89a77d2f88..6ca733a0be 100644
--- a/arch/arm/boards/element14-warp7/lowlevel.c
+++ b/arch/arm/boards/element14-warp7/lowlevel.c
@@ -35,7 +35,7 @@ static noinline void warp7_start(void)
 
 	pr_debug("Element14 i.MX7 Warp\n");
 
-	fdt = __dtb_imx7s_warp_start - get_runtime_offset();
+	fdt = __dtb_imx7s_warp_start + get_runtime_offset();
 
 	barebox_arm_entry(0x80000000, SZ_512M, fdt);
 }
diff --git a/arch/arm/boards/eltec-hipercam/lowlevel.c b/arch/arm/boards/eltec-hipercam/lowlevel.c
index 21542e49e9..b0d3155023 100644
--- a/arch/arm/boards/eltec-hipercam/lowlevel.c
+++ b/arch/arm/boards/eltec-hipercam/lowlevel.c
@@ -44,7 +44,7 @@ ENTRY_FUNCTION(start_imx6dl_eltec_hipercam, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6dl_eltec_hipercam_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_eltec_hipercam_start + get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_256M, fdt);
 }
diff --git a/arch/arm/boards/embedsky-e9/lowlevel.c b/arch/arm/boards/embedsky-e9/lowlevel.c
index fb1ba5f64a..845c4ec90c 100644
--- a/arch/arm/boards/embedsky-e9/lowlevel.c
+++ b/arch/arm/boards/embedsky-e9/lowlevel.c
@@ -12,7 +12,7 @@ ENTRY_FUNCTION(start_imx6q_embedsky_e9, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_embedsky_e9_start - get_runtime_offset();
+	fdt = __dtb_imx6q_embedsky_e9_start + get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_2G, fdt);
 }
diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/boards/embest-riotboard/lowlevel.c
index d26bc98bbb..07f669fc03 100644
--- a/arch/arm/boards/embest-riotboard/lowlevel.c
+++ b/arch/arm/boards/embest-riotboard/lowlevel.c
@@ -23,6 +23,6 @@ ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
 		putc_ll('a');
 	}
 
-	fdt = __dtb_imx6s_riotboard_start - get_runtime_offset();
+	fdt = __dtb_imx6s_riotboard_start + get_runtime_offset();
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
index af40f4405e..1c20b6a7ae 100644
--- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
@@ -50,7 +50,7 @@ ENTRY_FUNCTION(start_imx51_babbage, r0, r1, r2)
 
 	arm_setup_stack(0x20000000 - 16);
 
-	fdt = __dtb_imx51_babbage_start - get_runtime_offset();
+	fdt = __dtb_imx51_babbage_start + get_runtime_offset();
 
 	imx51_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
index bed886357c..cfe01f7807 100644
--- a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
@@ -15,7 +15,7 @@ ENTRY_FUNCTION(start_imx53_loco, r0, r1, r2)
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
 
-	fdt = __dtb_imx53_qsb_start - get_runtime_offset();
+	fdt = __dtb_imx53_qsb_start + get_runtime_offset();
 
 	imx53_barebox_entry(fdt);
 }
@@ -29,7 +29,7 @@ ENTRY_FUNCTION(start_imx53_loco_r, r0, r1, r2)
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
 
-	fdt = __dtb_imx53_qsrb_start - get_runtime_offset();
+	fdt = __dtb_imx53_qsrb_start + get_runtime_offset();
 
 	imx53_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
index 3545a1c352..aac784ca6e 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
@@ -13,7 +13,7 @@ ENTRY_FUNCTION(start_imx53_vmx53, r0, r1, r2)
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(0xf8020000 - 8);
 
-	fdt = __dtb_imx53_voipac_bsb_start - get_runtime_offset();
+	fdt = __dtb_imx53_voipac_bsb_start + get_runtime_offset();
 
 	imx53_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
index 5743dbcf30..ae847feaa6 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
@@ -31,7 +31,7 @@ ENTRY_FUNCTION(start_imx6q_sabresd, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6q_sabresd_start - get_runtime_offset();
+	fdt = __dtb_imx6q_sabresd_start + get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
index af26557e90..6a6e27bf44 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
@@ -46,7 +46,7 @@ ENTRY_FUNCTION(start_imx6sx_sabresdb, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6sx_sdb_start - get_runtime_offset();
+	fdt = __dtb_imx6sx_sdb_start + get_runtime_offset();
 
 	barebox_arm_entry(0x80000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
index 96ccbbfeb8..43aa610759 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
@@ -40,7 +40,7 @@ ENTRY_FUNCTION(start_imx7d_sabresd, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx7d_sdb_start - get_runtime_offset();
+	fdt = __dtb_imx7d_sdb_start + get_runtime_offset();
 
 	barebox_arm_entry(0x80000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/freescale-vf610-twr/lowlevel.c b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
index 53c7b3af6b..deabe4e371 100644
--- a/arch/arm/boards/freescale-vf610-twr/lowlevel.c
+++ b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
@@ -34,6 +34,6 @@ ENTRY_FUNCTION(start_vf610_twr, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_vf610_twr_start - get_runtime_offset();
+	fdt = __dtb_vf610_twr_start + get_runtime_offset();
 	barebox_arm_entry(0x80000000, SZ_128M, fdt);
 }
diff --git a/arch/arm/boards/gateworks-ventana/lowlevel.c b/arch/arm/boards/gateworks-ventana/lowlevel.c
index 746beb87e5..0a79d82049 100644
--- a/arch/arm/boards/gateworks-ventana/lowlevel.c
+++ b/arch/arm/boards/gateworks-ventana/lowlevel.c
@@ -12,7 +12,7 @@ ENTRY_FUNCTION(start_imx6q_gw54xx_1gx64, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_gw54xx_start - get_runtime_offset();
+	fdt = __dtb_imx6q_gw54xx_start + get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/gk802/lowlevel.c b/arch/arm/boards/gk802/lowlevel.c
index b571969884..a41b711e36 100644
--- a/arch/arm/boards/gk802/lowlevel.c
+++ b/arch/arm/boards/gk802/lowlevel.c
@@ -12,6 +12,6 @@ ENTRY_FUNCTION(start_imx6_gk802, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_gk802_start - get_runtime_offset();
+	fdt = __dtb_imx6q_gk802_start + get_runtime_offset();
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/globalscale-guruplug/lowlevel.c b/arch/arm/boards/globalscale-guruplug/lowlevel.c
index 67c3b23f2c..92424cbd6b 100644
--- a/arch/arm/boards/globalscale-guruplug/lowlevel.c
+++ b/arch/arm/boards/globalscale-guruplug/lowlevel.c
@@ -28,7 +28,7 @@ ENTRY_FUNCTION(start_globalscale_guruplug, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_kirkwood_guruplug_server_plus_bb_start -
+	fdt = __dtb_kirkwood_guruplug_server_plus_bb_start +
 		get_runtime_offset();
 
 	kirkwood_barebox_entry(fdt);
diff --git a/arch/arm/boards/globalscale-mirabox/lowlevel.c b/arch/arm/boards/globalscale-mirabox/lowlevel.c
index 7b070d70b1..69786c88fb 100644
--- a/arch/arm/boards/globalscale-mirabox/lowlevel.c
+++ b/arch/arm/boards/globalscale-mirabox/lowlevel.c
@@ -28,7 +28,7 @@ ENTRY_FUNCTION(start_globalscale_mirabox, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_armada_370_mirabox_bb_start -
+	fdt = __dtb_armada_370_mirabox_bb_start +
 		get_runtime_offset();
 
 	armada_370_xp_barebox_entry(fdt);
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index b7ff2d44c6..78e6f4d823 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -171,7 +171,7 @@ ENTRY_FUNCTION(start_imx25_karo_tx25, r0, r1, r2)
 
 	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 8);
 
-	fdt = __dtb_imx25_karo_tx25_start - get_runtime_offset();
+	fdt = __dtb_imx25_karo_tx25_start + get_runtime_offset();
 
 	karo_tx25_common_init(fdt);
 }
diff --git a/arch/arm/boards/karo-tx6x/lowlevel.c b/arch/arm/boards/karo-tx6x/lowlevel.c
index f2643efb05..7b58a496ef 100644
--- a/arch/arm/boards/karo-tx6x/lowlevel.c
+++ b/arch/arm/boards/karo-tx6x/lowlevel.c
@@ -53,7 +53,7 @@ ENTRY_FUNCTION(start_imx6dl_tx6x_512m, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6dl_tx6u_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_tx6u_start + get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_512M, fdt);
 }
@@ -73,7 +73,7 @@ ENTRY_FUNCTION(start_imx6dl_tx6x_1g, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6dl_tx6u_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_tx6u_start + get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
@@ -93,7 +93,7 @@ ENTRY_FUNCTION(start_imx6q_tx6x_1g, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6q_tx6q_start - get_runtime_offset();
+	fdt = __dtb_imx6q_tx6q_start + get_runtime_offset();
 
 	imx6q_barebox_entry(fdt);
 }
@@ -113,7 +113,7 @@ ENTRY_FUNCTION(start_imx6q_tx6x_2g, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6q_tx6q_start - get_runtime_offset();
+	fdt = __dtb_imx6q_tx6q_start + get_runtime_offset();
 
 	imx6q_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/kindle-mx50/lowlevel.c b/arch/arm/boards/kindle-mx50/lowlevel.c
index dc321b533b..20f86c8fcb 100644
--- a/arch/arm/boards/kindle-mx50/lowlevel.c
+++ b/arch/arm/boards/kindle-mx50/lowlevel.c
@@ -20,7 +20,7 @@ ENTRY_FUNCTION(start_imx50_kindle_d01100, r0, r1, r2)
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(MX50_IRAM_BASE_ADDR + MX50_IRAM_SIZE - 8);
 
-	fdt = __dtb_imx50_kindle_d01100_start - get_runtime_offset();
+	fdt = __dtb_imx50_kindle_d01100_start + get_runtime_offset();
 
 	barebox_arm_entry(MX50_CSD0_BASE_ADDR, SZ_256M, fdt);
 }
@@ -32,7 +32,7 @@ ENTRY_FUNCTION(start_imx50_kindle_d01200, r0, r1, r2)
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(MX50_IRAM_BASE_ADDR + MX50_IRAM_SIZE - 8);
 
-	fdt = __dtb_imx50_kindle_d01200_start - get_runtime_offset();
+	fdt = __dtb_imx50_kindle_d01200_start + get_runtime_offset();
 
 	barebox_arm_entry(MX50_CSD0_BASE_ADDR, SZ_256M, fdt);
 }
@@ -44,7 +44,7 @@ ENTRY_FUNCTION(start_imx50_kindle_ey21, r0, r1, r2)
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(MX50_IRAM_BASE_ADDR + MX50_IRAM_SIZE - 8);
 
-	fdt = __dtb_imx50_kindle_ey21_start - get_runtime_offset();
+	fdt = __dtb_imx50_kindle_ey21_start + get_runtime_offset();
 
 	barebox_arm_entry(MX50_CSD0_BASE_ADDR, SZ_256M, fdt);
 }
diff --git a/arch/arm/boards/lenovo-ix4-300d/lowlevel.c b/arch/arm/boards/lenovo-ix4-300d/lowlevel.c
index f8313cd210..40145b5cef 100644
--- a/arch/arm/boards/lenovo-ix4-300d/lowlevel.c
+++ b/arch/arm/boards/lenovo-ix4-300d/lowlevel.c
@@ -28,7 +28,7 @@ ENTRY_FUNCTION(start_lenovo_ix4_300d, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_armada_xp_lenovo_ix4_300d_bb_start -
+	fdt = __dtb_armada_xp_lenovo_ix4_300d_bb_start +
 		get_runtime_offset();
 
 	armada_370_xp_barebox_entry(fdt);
diff --git a/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c b/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
index da6d4aaf4e..e62627c324 100644
--- a/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
+++ b/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
@@ -28,7 +28,7 @@ ENTRY_FUNCTION(start_marvell_armada_xp_gp, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_armada_xp_gp_bb_start - get_runtime_offset();
+	fdt = __dtb_armada_xp_gp_bb_start + get_runtime_offset();
 
 	armada_370_xp_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/netgear-rn104/lowlevel.c b/arch/arm/boards/netgear-rn104/lowlevel.c
index 97590d8a6f..8a53615018 100644
--- a/arch/arm/boards/netgear-rn104/lowlevel.c
+++ b/arch/arm/boards/netgear-rn104/lowlevel.c
@@ -15,7 +15,7 @@ ENTRY_FUNCTION(start_netgear_rn104, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_armada_370_rn104_bb_start -
+	fdt = __dtb_armada_370_rn104_bb_start +
 		get_runtime_offset();
 
 	armada_370_xp_barebox_entry(fdt);
diff --git a/arch/arm/boards/netgear-rn2120/lowlevel.c b/arch/arm/boards/netgear-rn2120/lowlevel.c
index 59b9985ca9..e05f2f4c17 100644
--- a/arch/arm/boards/netgear-rn2120/lowlevel.c
+++ b/arch/arm/boards/netgear-rn2120/lowlevel.c
@@ -51,7 +51,7 @@ ENTRY_FUNCTION(start_netgear_rn2120, r0, r1, r2)
 	/* Win 0 Control Register: size=0x4000000, wincs=0, en=1 */
 	writel(0x3fffffe1, base + 0x20184);
 
-	fdt = __dtb_armada_xp_rn2120_bb_start -
+	fdt = __dtb_armada_xp_rn2120_bb_start +
 		get_runtime_offset();
 
 	armada_370_xp_barebox_entry(fdt);
diff --git a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
index 7e4a9f02f0..e1132e0b54 100644
--- a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
@@ -109,7 +109,7 @@ ENTRY_FUNCTION(start_phytec_phycard_imx27, r0, r1, r2)
 
 	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 12);
 
-	fdt = __dtb_imx27_phytec_phycard_s_rdk_bb_start - get_runtime_offset();
+	fdt = __dtb_imx27_phytec_phycard_s_rdk_bb_start + get_runtime_offset();
 
 	phytec_phycard_imx27_common_init(fdt);
 }
diff --git a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
index b9b2ab5935..b858ff348b 100644
--- a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
@@ -108,7 +108,7 @@ ENTRY_FUNCTION(start_phytec_phycore_imx27, r0, r1, r2)
 
 	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 12);
 
-	fdt = __dtb_imx27_phytec_phycore_rdk_start - get_runtime_offset();
+	fdt = __dtb_imx27_phytec_phycore_rdk_start + get_runtime_offset();
 
 	phytec_phycorce_imx27_common_init(fdt);
 }
diff --git a/arch/arm/boards/phytec-phycore-imx7/lowlevel.c b/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
index ee2d7ae553..3d2038e4a8 100644
--- a/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
@@ -29,7 +29,7 @@ static noinline void phytec_phycore_imx7_start(void)
 
 	pr_debug("Phytec phyCORE i.MX7\n");
 
-	fdt = __dtb_imx7d_phyboard_zeta_start - get_runtime_offset();
+	fdt = __dtb_imx7d_phyboard_zeta_start + get_runtime_offset();
 
 	barebox_arm_entry(0x80000000, SZ_512M, fdt);
 }
@@ -45,4 +45,4 @@ ENTRY_FUNCTION(start_phytec_phycore_imx7, r0, r1, r2)
 	barrier();
 
 	phytec_phycore_imx7_start();
-}
\ No newline at end of file
+}
diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 338d13a391..a028449fc0 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -210,7 +210,7 @@ static noinline void physom_board_entry(unsigned long bootinfo, int sdram,
 	ENTRY_FUNCTION(name, bootinfo, r1, r2)				\
 	{								\
 		extern char __dtb_z_##fdt_name##_start[];		\
-		void *fdt = __dtb_z_##fdt_name##_start -		\
+		void *fdt = __dtb_z_##fdt_name##_start +		\
 			get_runtime_offset();				\
 		physom_board_entry(bootinfo, 0, fdt, module_family);	\
 	}
@@ -219,7 +219,7 @@ static noinline void physom_board_entry(unsigned long bootinfo, int sdram,
 	ENTRY_FUNCTION(name, bootinfo, r1, r2)				\
 	{								\
 		extern char __dtb_z_##fdt_name##_start[];		\
-		void *fdt = __dtb_z_##fdt_name##_start -		\
+		void *fdt = __dtb_z_##fdt_name##_start +		\
 			get_runtime_offset();				\
 		physom_board_entry(bootinfo, sdram, fdt, NONE);		\
 	}
@@ -228,7 +228,7 @@ static noinline void physom_board_entry(unsigned long bootinfo, int sdram,
 	ENTRY_FUNCTION(name, r0, r1, r2)				\
 	{								\
 		extern char __dtb_z_##fdt_name##_start[];		\
-		void *fdt = __dtb_z_##fdt_name##_start -		\
+		void *fdt = __dtb_z_##fdt_name##_start +		\
 			get_runtime_offset();				\
 		am335x_barebox_entry(fdt);				\
 	}
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 29811d34ef..12c3cfa642 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -68,7 +68,7 @@ static void __noreturn start_imx6_phytec_common(uint32_t size,
 	if (do_early_uart_config && IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = fdt_blob_fixed_offset - get_runtime_offset();
+	fdt = fdt_blob_fixed_offset + get_runtime_offset();
 
 	if (cpu_type == IMX6_CPUTYPE_IMX6UL
 	    || cpu_type == IMX6_CPUTYPE_IMX6ULL)
diff --git a/arch/arm/boards/phytec-som-rk3288/lowlevel.c b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
index 7649ef864a..9def80ddb8 100644
--- a/arch/arm/boards/phytec-som-rk3288/lowlevel.c
+++ b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
@@ -37,7 +37,7 @@ ENTRY_FUNCTION(start_rk3288_phycore_som, r0, r1, r2)
 			     GPIO7C6_UART2DBG_SIN << GPIO7C6_SHIFT);
 		INIT_LL();
 	}
-	fdt = __dtb_rk3288_phycore_som_start - get_runtime_offset();
+	fdt = __dtb_rk3288_phycore_som_start + get_runtime_offset();
 
 	barebox_arm_entry(0x0, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/plathome-openblocks-a6/lowlevel.c b/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
index 785ec210dc..31a28c8916 100644
--- a/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
+++ b/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
@@ -25,7 +25,7 @@ ENTRY_FUNCTION(start_plathome_openblocks_a6, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_kirkwood_openblocks_a6_bb_start -
+	fdt = __dtb_kirkwood_openblocks_a6_bb_start +
 		get_runtime_offset();
 
 	kirkwood_barebox_entry(fdt);
diff --git a/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c b/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
index ae3664defc..f029bd1ba6 100644
--- a/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
+++ b/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
@@ -28,7 +28,7 @@ ENTRY_FUNCTION(start_plathome_openblocks_ax3, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_armada_xp_openblocks_ax3_4_bb_start -
+	fdt = __dtb_armada_xp_openblocks_ax3_4_bb_start +
 		get_runtime_offset();
 
 	armada_370_xp_barebox_entry(fdt);
diff --git a/arch/arm/boards/radxa-rock/lowlevel.c b/arch/arm/boards/radxa-rock/lowlevel.c
index 1c07bc3377..611dc938cf 100644
--- a/arch/arm/boards/radxa-rock/lowlevel.c
+++ b/arch/arm/boards/radxa-rock/lowlevel.c
@@ -24,7 +24,7 @@ ENTRY_FUNCTION(start_radxa_rock, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_rk3188_radxarock_start - get_runtime_offset();
+	fdt = __dtb_rk3188_radxarock_start + get_runtime_offset();
 
 	barebox_arm_entry(0x60000000, SZ_2G, fdt);
 }
diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index 4e71e29e0c..cbc6caa4b9 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -7,7 +7,7 @@
 extern char __dtb_bcm2835_rpi_start[];
 ENTRY_FUNCTION(start_raspberry_pi1, r0, r1, r2)
 {
-	void *fdt = __dtb_bcm2835_rpi_start - get_runtime_offset();
+	void *fdt = __dtb_bcm2835_rpi_start + get_runtime_offset();
 
 	arm_cpu_lowlevel_init();
 
@@ -17,7 +17,7 @@ ENTRY_FUNCTION(start_raspberry_pi1, r0, r1, r2)
 extern char __dtb_bcm2836_rpi_2_start[];
 ENTRY_FUNCTION(start_raspberry_pi2, r0, r1, r2)
 {
-	void *fdt = __dtb_bcm2836_rpi_2_start - get_runtime_offset();
+	void *fdt = __dtb_bcm2836_rpi_2_start + get_runtime_offset();
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index 12994177cc..25e7ad0f1c 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -33,7 +33,7 @@ static noinline void achilles_entry(void)
 
 	puts_ll("SDRAM setup done\n");
 
-	fdt = __dtb_socfpga_arria10_achilles_start - get_runtime_offset();
+	fdt = __dtb_socfpga_arria10_achilles_start + get_runtime_offset();
 
 	barebox_arm_entry(0x0, SZ_2G + SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/solidrun-cubox/lowlevel.c b/arch/arm/boards/solidrun-cubox/lowlevel.c
index 071309ee3d..ec63986b38 100644
--- a/arch/arm/boards/solidrun-cubox/lowlevel.c
+++ b/arch/arm/boards/solidrun-cubox/lowlevel.c
@@ -29,7 +29,7 @@ ENTRY_FUNCTION(start_solidrun_cubox, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_dove_cubox_bb_start - get_runtime_offset();
+	fdt = __dtb_dove_cubox_bb_start + get_runtime_offset();
 
 	dove_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/solidrun-microsom/lowlevel.c b/arch/arm/boards/solidrun-microsom/lowlevel.c
index cc15958d64..ea204e15f3 100644
--- a/arch/arm/boards/solidrun-microsom/lowlevel.c
+++ b/arch/arm/boards/solidrun-microsom/lowlevel.c
@@ -15,7 +15,7 @@ ENTRY_FUNCTION(start_hummingboard_microsom_i1, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6dl_hummingboard_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_hummingboard_start + get_runtime_offset();
 	imx6q_barebox_entry(fdt);
 }
 
@@ -25,7 +25,7 @@ ENTRY_FUNCTION(start_hummingboard_microsom_i2, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6dl_hummingboard_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_hummingboard_start + get_runtime_offset();
 	imx6q_barebox_entry(fdt);
 }
 
@@ -35,7 +35,7 @@ ENTRY_FUNCTION(start_hummingboard_microsom_i2ex, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_hummingboard_start - get_runtime_offset();
+	fdt = __dtb_imx6q_hummingboard_start + get_runtime_offset();
 	imx6q_barebox_entry(fdt);
 }
 
@@ -45,7 +45,7 @@ ENTRY_FUNCTION(start_hummingboard_microsom_i4, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_hummingboard_start - get_runtime_offset();
+	fdt = __dtb_imx6q_hummingboard_start + get_runtime_offset();
 	imx6q_barebox_entry(fdt);
 }
 
@@ -55,7 +55,7 @@ ENTRY_FUNCTION(start_hummingboard2_microsom_i1, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6dl_hummingboard2_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_hummingboard2_start + get_runtime_offset();
 	imx6q_barebox_entry(fdt);
 }
 
@@ -65,7 +65,7 @@ ENTRY_FUNCTION(start_hummingboard2_microsom_i2, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6dl_hummingboard2_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_hummingboard2_start + get_runtime_offset();
 	imx6q_barebox_entry(fdt);
 }
 
@@ -75,7 +75,7 @@ ENTRY_FUNCTION(start_hummingboard2_microsom_i2ex, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_hummingboard2_start - get_runtime_offset();
+	fdt = __dtb_imx6q_hummingboard2_start + get_runtime_offset();
 	imx6q_barebox_entry(fdt);
 }
 
@@ -85,7 +85,7 @@ ENTRY_FUNCTION(start_hummingboard2_microsom_i4, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_hummingboard2_start - get_runtime_offset();
+	fdt = __dtb_imx6q_hummingboard2_start + get_runtime_offset();
 	imx6q_barebox_entry(fdt);
 }
 
@@ -95,6 +95,6 @@ ENTRY_FUNCTION(start_h100_microsom_i2ex, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_h100_start - get_runtime_offset();
+	fdt = __dtb_imx6q_h100_start + get_runtime_offset();
 	imx6q_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/technexion-pico-hobbit/lowlevel.c b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
index f351e67dd7..77f48043da 100644
--- a/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
+++ b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
@@ -55,7 +55,7 @@ static void __noreturn start_imx6_pico_hobbit_common(uint32_t size,
 	writew(0x0, 0x020c0008);
 	writew(0x0, 0x021e4008);
 
-	fdt = fdt_blob_fixed_offset - get_runtime_offset();
+	fdt = fdt_blob_fixed_offset + get_runtime_offset();
 
 	imx6ul_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
index 1d5ea6b12a..dfb8271724 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/lowlevel.c
@@ -26,7 +26,7 @@ ENTRY_FUNCTION(start_socfpga_de0_nano_soc, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_socfpga_cyclone5_de0_nano_soc_start - get_runtime_offset();
+	fdt = __dtb_socfpga_cyclone5_de0_nano_soc_start + get_runtime_offset();
 
 	barebox_arm_entry(0x0, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/terasic-sockit/lowlevel.c b/arch/arm/boards/terasic-sockit/lowlevel.c
index 0a6eb21365..05b7d800a2 100644
--- a/arch/arm/boards/terasic-sockit/lowlevel.c
+++ b/arch/arm/boards/terasic-sockit/lowlevel.c
@@ -52,7 +52,7 @@ ENTRY_FUNCTION(start_socfpga_sockit, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_socfpga_cyclone5_sockit_start - get_runtime_offset();
+	fdt = __dtb_socfpga_cyclone5_sockit_start + get_runtime_offset();
 
 	barebox_arm_entry(0x0, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/tqma53/lowlevel.c b/arch/arm/boards/tqma53/lowlevel.c
index 0cb5952608..0d0b16846c 100644
--- a/arch/arm/boards/tqma53/lowlevel.c
+++ b/arch/arm/boards/tqma53/lowlevel.c
@@ -51,7 +51,7 @@ ENTRY_FUNCTION(start_imx53_mba53_512mib, r0, r1, r2)
 
 	imx53_init_lowlevel_early(800);
 
-	fdt = __dtb_imx53_mba53_start - get_runtime_offset();
+	fdt = __dtb_imx53_mba53_start + get_runtime_offset();
 
 	start_imx53_tqma53_common(fdt);
 }
@@ -70,7 +70,7 @@ ENTRY_FUNCTION(start_imx53_mba53_1gib, r0, r1, r2)
 
 	imx53_init_lowlevel_early(800);
 
-	fdt = __dtb_imx53_mba53_start - get_runtime_offset();
+	fdt = __dtb_imx53_mba53_start + get_runtime_offset();
 
 	start_imx53_tqma53_common(fdt);
 }
diff --git a/arch/arm/boards/tqma6x/lowlevel.c b/arch/arm/boards/tqma6x/lowlevel.c
index 52afee4b75..a90cd4007f 100644
--- a/arch/arm/boards/tqma6x/lowlevel.c
+++ b/arch/arm/boards/tqma6x/lowlevel.c
@@ -42,7 +42,7 @@ ENTRY_FUNCTION(start_imx6q_mba6x, r0, r1, r2)
 
 	arm_early_mmu_cache_invalidate();
 
-	fdt = __dtb_imx6q_mba6x_start - get_runtime_offset();
+	fdt = __dtb_imx6q_mba6x_start + get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
@@ -63,7 +63,7 @@ ENTRY_FUNCTION(start_imx6dl_mba6x, r0, r1, r2)
 
 	arm_early_mmu_cache_invalidate();
 
-	fdt = __dtb_imx6dl_mba6x_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_mba6x_start + get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_512M, fdt);
 }
diff --git a/arch/arm/boards/turris-omnia/lowlevel.c b/arch/arm/boards/turris-omnia/lowlevel.c
index 3f20908ff7..7236211c40 100644
--- a/arch/arm/boards/turris-omnia/lowlevel.c
+++ b/arch/arm/boards/turris-omnia/lowlevel.c
@@ -26,7 +26,7 @@ ENTRY_FUNCTION(start_turris_omnia, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_armada_385_turris_omnia_bb_start -
+	fdt = __dtb_armada_385_turris_omnia_bb_start +
 		get_runtime_offset();
 
 	armada_370_xp_barebox_entry(fdt);
diff --git a/arch/arm/boards/udoo/lowlevel.c b/arch/arm/boards/udoo/lowlevel.c
index 785ab16678..1f06f7e37f 100644
--- a/arch/arm/boards/udoo/lowlevel.c
+++ b/arch/arm/boards/udoo/lowlevel.c
@@ -12,7 +12,7 @@ ENTRY_FUNCTION(start_imx6_udoo, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_udoo_start - get_runtime_offset();
+	fdt = __dtb_imx6q_udoo_start + get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/usi-topkick/lowlevel.c b/arch/arm/boards/usi-topkick/lowlevel.c
index 4c731e5621..4202138986 100644
--- a/arch/arm/boards/usi-topkick/lowlevel.c
+++ b/arch/arm/boards/usi-topkick/lowlevel.c
@@ -28,7 +28,7 @@ ENTRY_FUNCTION(start_usi_topkick, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_kirkwood_topkick_bb_start - get_runtime_offset();
+	fdt = __dtb_kirkwood_topkick_bb_start + get_runtime_offset();
 
 	kirkwood_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/variscite-mx6/lowlevel.c b/arch/arm/boards/variscite-mx6/lowlevel.c
index 5cb738acb2..337bc58c8d 100644
--- a/arch/arm/boards/variscite-mx6/lowlevel.c
+++ b/arch/arm/boards/variscite-mx6/lowlevel.c
@@ -50,7 +50,7 @@ ENTRY_FUNCTION(start_variscite_custom, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 	    setup_uart();
 
-	fdt = __dtb_imx6q_var_custom_start - get_runtime_offset();
+	fdt = __dtb_imx6q_var_custom_start + get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/vexpress/lowlevel.c b/arch/arm/boards/vexpress/lowlevel.c
index 9fe7c836b7..ac27fbd7c6 100644
--- a/arch/arm/boards/vexpress/lowlevel.c
+++ b/arch/arm/boards/vexpress/lowlevel.c
@@ -14,7 +14,7 @@
 
 static inline void start_vexpress_common(void *internal_dt)
 {
-	void *fdt = internal_dt - get_runtime_offset();
+	void *fdt = internal_dt + get_runtime_offset();
 	unsigned long membase, memsize = SZ_512M;
 
 	arm_cpu_lowlevel_init();
diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
index c4e234196e..98bbbaae16 100644
--- a/arch/arm/boards/vscom-baltos/lowlevel.c
+++ b/arch/arm/boards/vscom-baltos/lowlevel.c
@@ -134,7 +134,7 @@ ENTRY_FUNCTION(start_am33xx_baltos_sdram, r0, r1, r2)
 
 	fdt = __dtb_am335x_baltos_minimal_start;
 
-	fdt -= get_runtime_offset();
+	fdt += get_runtime_offset();
 
 	am335x_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
index fb5e961e09..22ffdf85ea 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
@@ -308,9 +308,9 @@ ENTRY_FUNCTION(start_imx6_zii_rdu2, r0, r1, r2)
 		rdu2_sram_setup();
 
 	if (__imx6_cpu_revision() == IMX_CHIP_REV_2_0)
-		imx6q_barebox_entry(__dtb_imx6qp_zii_rdu2_start -
+		imx6q_barebox_entry(__dtb_imx6qp_zii_rdu2_start +
 				    get_runtime_offset());
 	else
-		imx6q_barebox_entry(__dtb_imx6q_zii_rdu2_start -
+		imx6q_barebox_entry(__dtb_imx6q_zii_rdu2_start +
 				    get_runtime_offset());
 }
diff --git a/arch/arm/boards/zii-vf610-dev/lowlevel.c b/arch/arm/boards/zii-vf610-dev/lowlevel.c
index 95b68d5dce..c6663c1415 100644
--- a/arch/arm/boards/zii-vf610-dev/lowlevel.c
+++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
@@ -133,5 +133,5 @@ ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
 		break;
 	}
 
-	barebox_arm_entry(0x80000000, SZ_512M, fdt - get_runtime_offset());
+	barebox_arm_entry(0x80000000, SZ_512M, fdt + get_runtime_offset());
 }
diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 7d749967e1..6670f4b9f8 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -37,26 +37,26 @@ void relocate_to_current_adr(void)
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
 
-	dstart = (void *)(ld_var(__rel_dyn_start) - offset);
-	dend = (void *)(ld_var(__rel_dyn_end) - offset);
+	dstart = (void *)(ld_var(__rel_dyn_start) + offset);
+	dend = (void *)(ld_var(__rel_dyn_end) + offset);
 
-	dynsym = (void *)(ld_var(__dynsym_start) - offset);
-	dynend = (void *)(ld_var(__dynsym_end) - offset);
+	dynsym = (void *)(ld_var(__dynsym_start) + offset);
+	dynend = (void *)(ld_var(__dynsym_end) + offset);
 
 	while (dstart < dend) {
-		uint32_t *fixup = (uint32_t *)(*dstart - offset);
+		uint32_t *fixup = (uint32_t *)(*dstart + offset);
 		uint32_t type = *(dstart + 1);
 
 		if ((type & 0xff) == 0x17) {
-			*fixup = *fixup - offset;
+			*fixup = *fixup + offset;
 		} else {
 			int index = type >> 8;
 			uint32_t r = dynsym[index * 4 + 1];
 
-			*fixup = *fixup + r - offset;
+			*fixup = *fixup + r + offset;
 		}
 
-		*dstart -= offset;
+		*dstart += offset;
 		dstart += 2;
 	}
 
diff --git a/arch/arm/cpu/setupc.S b/arch/arm/cpu/setupc.S
index c232b08d3b..30e88330e7 100644
--- a/arch/arm/cpu/setupc.S
+++ b/arch/arm/cpu/setupc.S
@@ -15,7 +15,7 @@ ENTRY(setup_c)
 	push	{r4, r5}
 	mov	r5, lr
 	bl	get_runtime_offset
-	subs	r4, r0, #0
+	adds	r4, r0, #0
 	beq	1f			/* skip memcpy if already at correct address */
 	ldr	r0,=_text
 	ldr	r2,=__bss_start
@@ -58,7 +58,7 @@ ENTRY(relocate_to_adr)
 	ld_var	_text, r0, r4
 	mov	r8, r0
 
-	sub	r1, r0, r5		/* r1: from address */
+	add	r1, r0, r5		/* r1: from address */
 
 	cmp	r1, r6			/* already at correct address? */
 	beq	1f			/* yes, skip copy to new address */
@@ -68,8 +68,9 @@ ENTRY(relocate_to_adr)
 	sub	r2, r2, r0		/* r2: size */
 	mov	r0, r6			/* r0: target */
 
-	add	r7, r7, r0		/* adjust return address */
-	sub	r7, r7, r1		/* lr += offset */
+	/* adjust return address */
+	sub	r7, r7, r1		/* sub address where we are actually running */
+	add	r7, r7, r0		/* add address where we are going to run */
 
 	bl	memcpy			/* copy binary */
 
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index e851b4a2da..865aa1b1c4 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -61,8 +61,8 @@ __noreturn void barebox_single_pbl_start(unsigned long membase,
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
 
-	pg_start = (uint32_t)&input_data - offset;
-	pg_end = (uint32_t)&input_data_end - offset;
+	pg_start = (uint32_t)&input_data + offset;
+	pg_end = (uint32_t)&input_data_end + offset;
 	pg_len = pg_end - pg_start;
 	uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
 
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 9d7fe0e921..5530919118 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -53,7 +53,7 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 	void *pg_start;
 	unsigned long pc = get_pc();
 
-	image_end = (void *)ld_var(__image_end) - get_runtime_offset();
+	image_end = (void *)ld_var(__image_end) + get_runtime_offset();
 
 	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE)) {
 		/*
diff --git a/arch/arm/lib32/runtime-offset.S b/arch/arm/lib32/runtime-offset.S
index 7375cb961b..39b525b187 100644
--- a/arch/arm/lib32/runtime-offset.S
+++ b/arch/arm/lib32/runtime-offset.S
@@ -10,8 +10,8 @@
 ENTRY(get_runtime_offset)
 1:	adr r0, 1b
 	ldr r1, linkadr
-	subs r0, r1, r0
-THUMB(	subs r0, r0, #1)
+	subs r0, r0, r1
+THUMB(	adds r0, r0, #1)
 	mov pc, lr
 
 linkadr:
diff --git a/arch/arm/mach-mvebu/include/mach/common.h b/arch/arm/mach-mvebu/include/mach/common.h
index 529eb61cfd..aa4babcfa7 100644
--- a/arch/arm/mach-mvebu/include/mach/common.h
+++ b/arch/arm/mach-mvebu/include/mach/common.h
@@ -30,7 +30,7 @@ uint32_t get_runtime_offset(void);
 static inline void __iomem *mvebu_get_initial_int_reg_base(void)
 {
 #ifdef __PBL__
-	u32 base = __get_unaligned_le32(_text - get_runtime_offset() + 0x30);
+	u32 base = __get_unaligned_le32(_text + get_runtime_offset() + 0x30);
 	return (void __force __iomem *)base;
 #else
 	return (void __force __iomem *)MVEBU_REMAP_INT_REG_BASE;
diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index e9ba5ee393..c862778fc4 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -264,7 +264,7 @@ void tegra_cpu_lowlevel_setup(char *fdt)
 	arm_setup_stack(TEGRA_IRAM_BASE + SZ_256K - 8);
 
 	if (tegra_cpu_is_maincomplex())
-		tegra_maincomplex_entry(fdt - get_runtime_offset());
+		tegra_maincomplex_entry(fdt + get_runtime_offset());
 
 	tegra_ll_delay_setup();
 }
diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 16dc65be07..8a11e06c53 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -140,7 +140,7 @@ static void init_pllx(void)
 
 	conf = &pllx_config_table[chiptype][osc_freq];
 	/* we are not relocated yet - globals are a bit more tricky here */
-	conf = (struct pll_config *)((char *)conf - get_runtime_offset());
+	conf = (struct pll_config *)((char *)conf + get_runtime_offset());
 
 	/* set PLL bypass and frequency parameters */
 	reg = CRC_PLLX_BASE_BYPASS;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
