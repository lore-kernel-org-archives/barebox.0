Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SrTrN-0003op-Oj
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 13:00:23 +0000
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Wed, 18 Jul 2012 14:58:44 +0200
Message-Id: <1342616327-2765-1-git-send-email-J.Kilb@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Added SDR-size auto detection.
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>


Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 arch/arm/boards/phycard-a-l1/pca-a-l1.c |  169 +++++++++++++++++++++++--------
 1 files changed, 125 insertions(+), 44 deletions(-)

diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
index a388f63..1dc7678 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -73,10 +73,82 @@
 
 #define SMC911X_BASE 0x2c000000
 
+/* Slower full frequency range default timings for x32 operation */
+#define SDP_SDRC_SHARING	0x00000100
+/* Diabling power down mode using CKE pin */
+#define SDP_SDRC_POWER_POP	0x00000081
+/* rkw - need to find of 90/72 degree recommendation for speed like before. */
+#define SDP_SDRC_DLLAB_CTRL ((DLL_ENADLL << 3) | \
+	(DLL_LOCKDLL << 2) | (DLL_DLLPHASE_90 << 1))
+
+/* used to create an array of memory configuartions. */
+struct sdrc_config {
+	u32	cs_cfg;
+	u32	mcfg;
+	u32	mr;
+	u32	actim_ctrla;
+	u32	actim_ctrlb;
+	u32	rfr_ctrl;
+} const sdrc_config[] = {
+/* max cs_size for autodetection, common timing */
+/* 2x256MByte, 14 Rows, 10 Columns , RBC (BAL=2) */
+{ 0x00000004, 0x03590099, 0x00000032, 0x9A9DB4C6, 0x00011216, 0x0004e201},
+/* MT46H32M32LF 2x128MByte, 13 Rows, 10 Columns */
+{ 0x00000001, 0x02584099, 0x00000032, 0x9A9DB4C6, 0x00011216, 0x0004e201},
+/* MT46H64M32LF 1x256MByte, 14 Rows, 10 Columns */
+{ 0x00000002, 0x03588099, 0x00000032, 0x629DB4C6, 0x00011113, 0x0004e201},
+/* MT64H128M32L2 2x256MByte, 14 Rows, 10 Columns */
+{ 0x00000002, 0x03588099, 0x00000032, 0x629DB4C6, 0x00011113, 0x0004e201},
+};
+
 /*
  * Boot-time initialization(s)
  */
 
+/*********************************************************************
+ * init_sdram_ddr() - Init DDR controller.
+ *********************************************************************/
+void init_sdram_ddr(void)
+{
+	/* reset sdrc controller */
+	writel(SOFTRESET, SDRC_REG(SYSCONFIG));
+	wait_on_value(1<<0, 1<<0, SDRC_REG(STATUS), 12000000);
+	writel(0, SDRC_REG(SYSCONFIG));
+
+	/* setup sdrc to ball mux */
+	writel(SDP_SDRC_SHARING, SDRC_REG(SHARING));
+	writel(SDP_SDRC_POWER_POP, SDRC_REG(POWER));
+
+	/* set up dll */
+	writel(SDP_SDRC_DLLAB_CTRL, SDRC_REG(DLLA_CTRL));
+	sdelay(0x2000);	/* give time to lock */
+
+}
+/*********************************************************************
+ * config_sdram_ddr() - Init DDR on dev board.
+ *********************************************************************/
+void config_sdram_ddr(u8 cs, u8 cfg)
+{
+
+	writel(sdrc_config[cfg].mcfg, SDRC_REG(MCFG_0) + (0x30 * cs));
+	writel(sdrc_config[cfg].actim_ctrla, SDRC_REG(ACTIM_CTRLA_0) + (0x28 * cs));
+	writel(sdrc_config[cfg].actim_ctrlb, SDRC_REG(ACTIM_CTRLB_0) + (0x28 * cs));
+	writel(sdrc_config[cfg].rfr_ctrl, SDRC_REG(RFR_CTRL_0) + (0x30 * cs));
+
+	writel(CMD_NOP, SDRC_REG(MANUAL_0) + (0x30 * cs));
+
+	sdelay(5000);
+
+	writel(CMD_PRECHARGE, SDRC_REG(MANUAL_0) + (0x30 * cs));
+	writel(CMD_AUTOREFRESH, SDRC_REG(MANUAL_0) + (0x30 * cs));
+	writel(CMD_AUTOREFRESH, SDRC_REG(MANUAL_0) + (0x30 * cs));
+
+	/* set mr0 */
+	writel(sdrc_config[cfg].mr, SDRC_REG(MR_0) + (0x30 * cs));
+
+	sdelay(2000);
+}
+
 /**
  * @brief Initialize the SDRC module
  * Initialisation for 1x256MByte but normally
@@ -85,49 +157,55 @@
  */
 static void pcaal1_sdrc_init(void)
 {
-	/* SDRAM software reset */
-	/* No idle ack and RESET enable */
-	writel(0x1A, SDRC_REG(SYSCONFIG));
-	sdelay(100);
-	/* No idle ack and RESET disable */
-	writel(0x18, SDRC_REG(SYSCONFIG));
-
-	/* SDRC Sharing register */
-	/* 32-bit SDRAM on data lane [31:0] - CS0 */
-	/* pin tri-stated = 1 */
-	writel(0x00000100, SDRC_REG(SHARING));
-
-	/* ----- SDRC Registers Configuration --------- */
-	/* SDRC_MCFG0 register */
-	writel(0x03588099, SDRC_REG(MCFG_0));
-
-	/* SDRC_RFR_CTRL0 register */
-	writel(0x0004e201, SDRC_REG(RFR_CTRL_0));
-
-	/* SDRC_ACTIM_CTRLA0 register */
-	writel(0x629DB4C6, SDRC_REG(ACTIM_CTRLA_0));
-
-	/* SDRC_ACTIM_CTRLB0 register */
-	writel(0x00011113, SDRC_REG(ACTIM_CTRLB_0));
-
-	/* Disble Power Down of CKE due to 1 CKE on combo part */
-	writel(0x00000081, SDRC_REG(POWER));
-
-	/* SDRC_MANUAL command register */
-	/* NOP command */
-	writel(0x00000000, SDRC_REG(MANUAL_0));
-	/* Precharge command */
-	writel(0x00000001, SDRC_REG(MANUAL_0));
-	/* Auto-refresh command */
-	writel(0x00000002, SDRC_REG(MANUAL_0));
-	/* Auto-refresh command */
-	writel(0x00000002, SDRC_REG(MANUAL_0));
-
-	/* SDRC MR0 register Burst length=4 */
-	writel(0x00000032, SDRC_REG(MR_0));
-
-	/* SDRC DLLA control register */
-	writel(0x0000000A, SDRC_REG(DLLA_CTRL));
+	u32 test0, test1;
+	char cfg;
+
+	init_sdram_ddr();
+
+	config_sdram_ddr(0, 0); /* 256MByte at CS0 */
+	config_sdram_ddr(1, 0); /* 256MByte at CS1 */
+
+	test0 = get_ram_size((long *) 0x80000000, SZ_256M);
+	test1 = get_ram_size((long *) 0xA0000000, SZ_256M);
+
+	/* mask out lower nible, its not tested with
+	in common/memsize.c */
+	test1 &= 0xfffffff0;
+
+	if ((test1 > 0) && (test1 != test0))
+		hang();
+
+	cfg = -1; /* illegal configuration found */
+
+	if (test1 == 0) {
+		init_sdram_ddr();
+		writel((sdrc_config[(uchar) cfg].mcfg & 0xfffc00ff), SDRC_REG(MCFG_1));
+
+		/* 1 x 256MByte */
+		if (test0 == SZ_256M)
+			cfg = 2;
+
+		if (cfg != -1) {
+			config_sdram_ddr(0, cfg);
+			writel(sdrc_config[(uchar) cfg].cs_cfg, SDRC_REG(CS_CFG));
+		}
+		return;
+	}
+
+	/* reinit both cs with correct size */
+	/* 2 x 128MByte */
+	if (test0 == SZ_128M)
+		cfg = 1;
+	/* 2 x 256MByte */
+	if (test0 == SZ_256M)
+		cfg = 3;
+
+	if (cfg != -1) {
+		init_sdram_ddr();
+		writel(sdrc_config[(uchar) cfg].cs_cfg, SDRC_REG(CS_CFG));
+		config_sdram_ddr(0, cfg);
+		config_sdram_ddr(1, cfg);
+	}
 }
 
 /**
@@ -296,9 +374,12 @@ static int pcaal1_mem_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 
 	arm_add_mem_device("ram0", OMAP_SDRC_CS0, get_sdr_cs_size(SDRC_CS0_OSET));
+	printf("found %s at SDCS0\n", size_human_readable(get_sdr_cs_size(SDRC_CS0_OSET)));
 
-	if ((get_sdr_cs_size(SDRC_CS1_OSET) != 0) && (get_sdr_cs1_base() != OMAP_SDRC_CS0))
+	if ((get_sdr_cs_size(SDRC_CS1_OSET) != 0) && (get_sdr_cs1_base() != OMAP_SDRC_CS0)) {
 		arm_add_mem_device("ram1", get_sdr_cs1_base(), get_sdr_cs_size(SDRC_CS1_OSET));
+		printf("found %s at SDCS1\n", size_human_readable(get_sdr_cs_size(SDRC_CS1_OSET)));
+	}
 
 	return 0;
 }
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
