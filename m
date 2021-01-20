Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from cpanel.siel.si ([46.19.9.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2Cy8-0003Fv-5a
 for barebox@lists.infradead.org; Wed, 20 Jan 2021 12:52:17 +0000
Received: from 2e130e83.rdns.siel.si ([46.19.14.131]:36323
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <andrej.picej@norik.com>) id 1l2Cy2-008D7H-MC
 for barebox@lists.infradead.org; Wed, 20 Jan 2021 13:52:10 +0100
From: Andrej Picej <andrej.picej@norik.com>
Date: Wed, 20 Jan 2021 13:52:03 +0100
Message-Id: <20210120125203.736421-1-andrej.picej@norik.com>
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
Subject: [RFC PATCH] ARM: phytec-som-imx6: phycard DRAM autodetection
To: barebox@lists.infradead.org

Add support for automatic DRAM size detection on phytec phycard imx6q
machines. Currently supported SoM variants are 1 GiB (1 bank) and 2 GiB
variant. Machines now boot from internal SRAM (see DCD table loadaddr
0x00907000) and then do DRAM size detection and configuration in plain
C code (instead of hardcoded DCD table values). After initializing DRAM,
remaining barebox image is xloaded from GPMI NAND to DRAM and started
from there.

Booting process / strategy on phycard machines:
 1) lowlevel in SRAM (PBL)
  1.1) detect DRAM size
  1.2) configure DRAM accordingly
  1.3) copy remaining barebox image from NAND to DRAM (addr 0x10000000)
  1.4) jump to DRAM (addr 0x10000000)
 2) lowlevel in DRAM (PBL)
  2.1) skip DRAM detection since already running from DRAM
  2.2) main barebox entry
 3) board code
 4) ...

Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 .../flash-header-phytec-pcaaxl3.imxcfg        |   4 +
 arch/arm/boards/phytec-som-imx6/lowlevel.c    | 255 ++++++++++++++++++
 images/Makefile.imx                           |   2 +
 3 files changed, 261 insertions(+)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.imxcfg

diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.imxcfg
new file mode 100644
index 000000000..fcfef9c23
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.imxcfg
@@ -0,0 +1,4 @@
+soc imx6
+loadaddr 0x00907000
+max_load_size 0x31000
+ivtofs 0x400
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 62a1c8de7..7bc9d123a 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -16,6 +16,261 @@
 #include <asm/cache.h>
 #include <asm/mmu.h>
 #include <mach/imx6.h>
+#include <mach/imx6-mmdc.h>
+#include <mach/esdctl.h>
+#include <mach/xload.h>
+
+/* udelay() is not available in PBL, need to improvise */
+static void __udelay(int us)
+{
+	volatile int i;
+
+	for (i = 0; i < us * 4; i++);
+}
+
+#define	IMX6Q_UART2			2
+#define	IMX6Q_UART3			3
+#define	DRIVE_STRENGTH_40_OHM		0x30
+#define	DRIVE_STRENGTH_48_OHM		0x28
+
+/* mmdc DDR io registers */
+static struct mx6dq_iomux_ddr_regs mx6dq_ddr_ioregs = {
+	.dram_sdclk_0 = DRIVE_STRENGTH_40_OHM,
+	.dram_sdclk_1 = DRIVE_STRENGTH_40_OHM,
+	.dram_cas = DRIVE_STRENGTH_40_OHM,
+	.dram_ras = DRIVE_STRENGTH_40_OHM,
+	.dram_reset = DRIVE_STRENGTH_40_OHM,
+	.dram_sdcke0 = 0x00003000,
+	.dram_sdcke1 = 0x00003000,
+	.dram_sdba2 = 0x00000000,
+	.dram_sdodt0 = DRIVE_STRENGTH_40_OHM,
+	.dram_sdodt1 = DRIVE_STRENGTH_40_OHM,
+	.dram_sdqs0 = DRIVE_STRENGTH_40_OHM,
+	.dram_sdqs1 = DRIVE_STRENGTH_40_OHM,
+	.dram_sdqs2 = DRIVE_STRENGTH_40_OHM,
+	.dram_sdqs3 = DRIVE_STRENGTH_40_OHM,
+	.dram_sdqs4 = DRIVE_STRENGTH_40_OHM,
+	.dram_sdqs5 = DRIVE_STRENGTH_40_OHM,
+	.dram_sdqs6 = DRIVE_STRENGTH_40_OHM,
+	.dram_sdqs7 = DRIVE_STRENGTH_40_OHM,
+	.dram_dqm0 = DRIVE_STRENGTH_40_OHM,
+	.dram_dqm1 = DRIVE_STRENGTH_40_OHM,
+	.dram_dqm2 = DRIVE_STRENGTH_40_OHM,
+	.dram_dqm3 = DRIVE_STRENGTH_40_OHM,
+	.dram_dqm4 = DRIVE_STRENGTH_40_OHM,
+	.dram_dqm5 = DRIVE_STRENGTH_40_OHM,
+	.dram_dqm6 = DRIVE_STRENGTH_40_OHM,
+	.dram_dqm7 = DRIVE_STRENGTH_40_OHM,
+};
+
+static struct mx6_mmdc_calibration mx6q_mmdc_calib = {
+	.p0_mpwldectrl0 = 0x0013001b,
+	.p0_mpwldectrl1 = 0x003b0034,
+	.p1_mpwldectrl0 = 0x0037004b,
+	.p1_mpwldectrl1 = 0x004b0055,
+	.p0_mpdgctrl0 = 0x4350035e,
+	.p0_mpdgctrl1 = 0x035c0358,
+	.p1_mpdgctrl0 = 0x436e0376,
+	.p1_mpdgctrl1 = 0x03770352,
+	.p0_mprddlctl = 0x3c333436,
+	.p1_mprddlctl = 0x35332f3b,
+	.p0_mpwrdlctl = 0x37363e39,
+	.p1_mpwrdlctl = 0x432f433d,
+};
+
+/* MT41K128M16JT-125 IT */
+static struct mx6_ddr3_cfg mt41k128m16jt = {
+	.mem_speed = 1600,
+	.density = 2,
+	.width = 16,
+	.banks = 8,
+	.rowaddr = 14,
+	.coladdr = 10,
+	.pagesz = 2,
+	.trcd = 1375,
+	.trcmin = 4875,
+	.trasmin = 3500,
+};
+
+/* DDR 64bit 1GB */
+static struct mx6_ddr_sysinfo mem1g_q = {
+	.dsize		= 2,
+	.cs1_mirror	= 1,
+	.cs_density	= 8,
+	.ncs		= 1,
+	.bi_on		= 1,
+	.rtt_nom	= 1,
+	.rtt_wr		= 0,
+	.ralat		= 5,
+	.walat		= 1,
+	.mif3_mode	= 3,
+	.rst_to_cke	= 0x23,
+	.sde_to_rst	= 0x10,
+};
+
+/* DDR 64bit 2GB */
+static struct mx6_ddr_sysinfo mem2g_q = {
+	.dsize		= 2,
+	.cs1_mirror	= 1,
+	.cs_density	= 8,
+	.ncs		= 2,
+	.bi_on		= 1,
+	.rtt_nom	= 1,
+	.rtt_wr		= 0,
+	.ralat		= 5,
+	.walat		= 1,
+	.mif3_mode	= 3,
+	.rst_to_cke	= 0x23,
+	.sde_to_rst	= 0x10,
+};
+
+/* mmdc GRP io registers */
+static struct mx6dq_iomux_grp_regs mx6dq_grp_ioregs = {
+	.grp_ddr_type = 0x000c0000,
+	.grp_ddrmode_ctl = 0x00020000,
+	.grp_ddrpke = 0x00000000,
+	.grp_addds = DRIVE_STRENGTH_40_OHM,
+	.grp_ctlds = DRIVE_STRENGTH_40_OHM,
+	.grp_ddrmode = 0x00020000,
+	.grp_b0ds = DRIVE_STRENGTH_40_OHM,
+	.grp_b1ds = DRIVE_STRENGTH_40_OHM,
+	.grp_b2ds = DRIVE_STRENGTH_40_OHM,
+	.grp_b3ds = DRIVE_STRENGTH_40_OHM,
+	.grp_b4ds = DRIVE_STRENGTH_40_OHM,
+	.grp_b5ds = DRIVE_STRENGTH_40_OHM,
+	.grp_b6ds = DRIVE_STRENGTH_40_OHM,
+	.grp_b7ds = DRIVE_STRENGTH_40_OHM,
+};
+
+static inline void setup_uart_phycard_imx6q(int UARTn)
+{
+	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
+
+	switch (UARTn) {
+	case IMX6Q_UART2:
+		/* Setup UART2 pin muxing */
+		writel(0x4, iomuxbase + 0xc0);
+		writel(0x4, iomuxbase + 0xbc);
+		writel(0x1, iomuxbase + 0x928);
+
+		imx6_ungate_all_peripherals();
+		imx6_uart_setup((void *)MX6_UART2_BASE_ADDR);
+		pbl_set_putc(imx_uart_putc, (void *)MX6_UART2_BASE_ADDR);
+		break;
+	case IMX6Q_UART3:
+		/* Setup UART3 pin muxing */
+		writel(0x2, iomuxbase + 0xb4);
+		writel(0x2, iomuxbase + 0xb8);
+		writel(0x1, iomuxbase + 0x930);
+
+		imx6_ungate_all_peripherals();
+		imx6_uart_setup((void *)MX6_UART3_BASE_ADDR);
+		pbl_set_putc(imx_uart_putc, (void *)MX6_UART3_BASE_ADDR);
+		break;
+	default:
+		return;
+	}
+
+	putc_ll('>');
+}
+
+#define DRAM_CONFIG_DELAY	5000
+#define DRAM_CALIB_DELAY	50000
+
+static unsigned long phycard_imx6q_ll_autodetect_dram_init(void)
+{
+	unsigned long memsize = SZ_2G;
+	unsigned long dram_size = 0;
+
+	pr_debug("DRAM init & size detection\n");
+
+	/* First try with 2 GiB DRAM configuration */
+	mx6dq_dram_iocfg(64, &mx6dq_ddr_ioregs, &mx6dq_grp_ioregs);
+	mx6_dram_cfg(&mem2g_q, &mx6q_mmdc_calib, &mt41k128m16jt);
+	__udelay(DRAM_CONFIG_DELAY);
+
+	mmdc_do_write_level_calibration();
+	mmdc_do_dqs_calibration();
+	__udelay(DRAM_CALIB_DELAY);
+
+	pr_debug("DRAM probe with 2 GiB config\n");
+
+	dram_size = get_ram_size((volatile long *)0x10000000, (long)memsize);
+	pr_debug("DRAM detected size: 0x%lx\n", dram_size);
+
+	if (dram_size != SZ_2G) {
+		/* Next try with 1 GiB DRAM configuration */
+		memsize = SZ_1G;
+
+		mx6dq_dram_iocfg(64, &mx6dq_ddr_ioregs, &mx6dq_grp_ioregs);
+		mx6_dram_cfg(&mem1g_q, &mx6q_mmdc_calib, &mt41k128m16jt);
+		__udelay(DRAM_CONFIG_DELAY);
+
+		mmdc_do_write_level_calibration();
+		mmdc_do_dqs_calibration();
+		__udelay(DRAM_CALIB_DELAY);
+
+		pr_debug("DRAM probe with 1 GiB config\n");
+	} else {
+		pr_debug("DRAM size 0x%lx already detected, " \
+			"skipping DRAM re-configuration\n", dram_size);
+	}
+
+	dram_size = get_ram_size((volatile long *)0x10000000, (long)memsize);
+	pr_debug("DRAM final detected size: 0x%lx\n", dram_size);
+
+#ifdef DEBUG
+	pr_debug("DRAM calibration results:\n");
+	mmdc_print_calibration_results();
+#endif
+	return memsize;
+}
+
+static void phycard_imx6q_ll_autodetect_init(void)
+{
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart_phycard_imx6q(IMX6Q_UART3);
+
+	/* Already running from DRAM? */
+	if (get_pc() > 0x10000000) {
+		pr_debug("DRAM already initialized, skipping...\n");
+		return;
+	}
+
+	/* Running from SRAM, need to configure DRAM */
+	phycard_imx6q_ll_autodetect_dram_init();
+
+	/* Now xload remaining part of barebox image from NAND */
+	pr_debug("xloading barebox image from NAND\n");
+	imx6_nand_start_image();
+
+	pr_err("Booting failed!\n");
+	hang();
+}
+
+extern char __dtb_imx6q_phytec_phycard_start[];
+
+static noinline void phycard_imx6q_ll_autodetect_start(void)
+{
+	void *fdt = __dtb_imx6q_phytec_phycard_start + get_runtime_offset();
+
+	phycard_imx6q_ll_autodetect_init();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_phycard_imx6q_ll_autodetect, r0, r1, r2)
+{
+	imx6_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00940000);
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	phycard_imx6q_ll_autodetect_start();
+}
 
 static inline void setup_uart(void)
 {
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 514db326b..80d2fd805 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -205,6 +205,8 @@ $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phyboard_su
 
 $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phyboard_subra_1gib_1bank, phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank, phytec-phyboard-subra-1gib-1bank)
 
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phycard_imx6q_ll_autodetect, phytec-som-imx6/flash-header-phytec-pcaaxl3, phytec-phycard-imx6q-som-nand)
+
 $(call build_imx_habv4img, CONFIG_MACH_DFI_FS700_M60, start_imx6dl_dfi_fs700_m60_6s, dfi-fs700-m60/flash-header-fs700-m60-6s, dfi-fs700-m60-6s)
 
 $(call build_imx_habv4img, CONFIG_MACH_DFI_FS700_M60, start_imx6q_dfi_fs700_m60_6q_micron, dfi-fs700-m60/flash-header-fs700-m60-6q-micron, dfi-fs700-m60-6q-micron)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
