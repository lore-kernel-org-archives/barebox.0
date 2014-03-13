Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og116.obsmtp.com ([64.18.0.147])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOA5q-0001bJ-Rp
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 18:11:04 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 13 Mar 2014 18:09:58 +0000
Message-Id: <1394734204-8181-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1394734204-8181-1-git-send-email-renaud.barbier@ge.com>
References: <1394734204-8181-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/6] ppc: add SoC support for Freescale P1022
To: barebox@lists.infradead.org

CPU, DDR, and LBC definitions are added to support the Freescale P1022.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/fsl_lbc.h                     |  3 ++
 arch/ppc/include/asm/processor.h                   |  1 +
 arch/ppc/mach-mpc85xx/cpuid.c                      |  1 +
 .../ppc/mach-mpc85xx/include/mach/config_mpc85xx.h |  9 ++++++
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    | 34 ++++++++++++++++++++--
 5 files changed, 45 insertions(+), 3 deletions(-)

diff --git a/arch/ppc/include/asm/fsl_lbc.h b/arch/ppc/include/asm/fsl_lbc.h
index a59725c..27d194e 100644
--- a/arch/ppc/include/asm/fsl_lbc.h
+++ b/arch/ppc/include/asm/fsl_lbc.h
@@ -25,8 +25,10 @@
 #define BR_PS_8				0x00000800	/* Port Size 8 bit */
 #define BR_PS_16			0x00001000	/* Port Size 16 bit */
 #define BR_PS_32			0x00001800	/* Port Size 32 bit */
+#define BR_DECC_SHIFT			9
 #define BR_V				0x00000001
 #define BR_V_SHIFT			0
+#define BR_MS_FCM			0x00000020
 #define BR_MS_UPMA			0x00000080
 
 /* Convert an address into the right format for the BR registers */
@@ -61,6 +63,7 @@
 #define FSL_LBC_MDR_OFFSET	0x88
 #define FSL_LBC_LTESR_OFFSET	0xB0
 #define FSL_LBC_LTEIR_OFFSET	0xB8
+#define FSL_LBC_LBCR_OFFSET	0xD0
 
 #define MxMR_MAD_MSK		0x0000003f /* Machine Address Mask         */
 #define MxMR_GPL_x4DIS		0x00040000 /* GPL_A4 Ouput Line Disable    */
diff --git a/arch/ppc/include/asm/processor.h b/arch/ppc/include/asm/processor.h
index 819babb..c9633fe 100644
--- a/arch/ppc/include/asm/processor.h
+++ b/arch/ppc/include/asm/processor.h
@@ -867,6 +867,7 @@
 #define SVR_8641	0x8090
 #define SVR_8544	0x803401
 #define SVR_8544_E	0x803C01
+#define SVR_P1022	0x80E600
 #define SVR_P2020	0x80E200
 #define SVR_P2020_E	0x80EA00
 
diff --git a/arch/ppc/mach-mpc85xx/cpuid.c b/arch/ppc/mach-mpc85xx/cpuid.c
index 8094978..21892e3 100644
--- a/arch/ppc/mach-mpc85xx/cpuid.c
+++ b/arch/ppc/mach-mpc85xx/cpuid.c
@@ -29,6 +29,7 @@
 struct cpu_type cpu_type_list[] = {
 	CPU_TYPE_ENTRY(8544, 8544, 1),
 	CPU_TYPE_ENTRY(8544, 8544_E, 1),
+	CPU_TYPE_ENTRY(P1022, P1022, 2),
 	CPU_TYPE_ENTRY(P2020, P2020, 2),
 	CPU_TYPE_ENTRY(P2020, P2020_E, 2),
 };
diff --git a/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h b/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
index 27358e8..f9d8299 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
@@ -39,6 +39,15 @@
 #define FSL_ERRATUM_A005125
 #define PPC_E500_DEBUG_TLB 0
 
+#elif defined(CONFIG_P1022)
+#define MAX_CPUS		2
+#define FSL_NUM_LAWS		12
+#define FSL_NUM_TSEC		2
+#define FSL_SEC_COMPAT		2
+#define PPC_E500_DEBUG_TLB	2
+#define FSL_TSECV2
+#define FSL_ERRATUM_A005125
+
 #else
 #error Processor type not defined for this platform
 #endif
diff --git a/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h b/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
index d5a9c97..87bc5c7 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
@@ -36,7 +36,7 @@
 
 #define MPC85xx_GPIO_OFFSET	0xf000
 #define MPC85xx_L2_OFFSET	0x20000
-#ifdef CONFIG_TSECV2
+#ifdef FSL_TSECV2
 #define TSEC1_OFFSET		0xB0000
 #else
 #define TSEC1_OFFSET		0x24000
@@ -75,6 +75,11 @@
 #define MPC85xx_DDR_CS1_CONFIG_OFFSET		0x084
 #define MPC85xx_DDR_CS2_CONFIG_OFFSET		0x088
 #define MPC85xx_DDR_CS3_CONFIG_OFFSET		0x08c
+/* Chip Select 0, 1, 2, 3 Configuration 2 */
+#define MPC85xx_DDR_CS0_CONFIG_2_OFFSET		0x0c0
+#define MPC85xx_DDR_CS1_CONFIG_2_OFFSET		0x0c4
+#define MPC85xx_DDR_CS2_CONFIG_2_OFFSET		0x0c8
+#define MPC85xx_DDR_CS3_CONFIG_2_OFFSET		0x0cc
 /* SDRAM Timing Configuration 0, 1, 2, 3 */
 #define MPC85xx_DDR_TIMING_CFG_3_OFFSET		0x100
 #define MPC85xx_DDR_TIMING_CFG_0_OFFSET		0x104
@@ -97,9 +102,30 @@
 /* training init and extended addr */
 #define MPC85xx_DDR_SDRAM_INIT_ADDR_OFFSET	0x148
 #define MPC85xx_DDR_SDRAM_INIT_ADDR_EXT_OFFSET	0x14c
+/* SDRAM Timing Configuration 4,5 */
+#define MPC85xx_DDR_TIMING_CFG_4_OFFSET		0x160
+#define MPC85xx_DDR_TIMING_CFG_5_OFFSET		0x164
+/* DDR ZQ calibration control */
+#define MPC85xx_DDR_ZQ_CNTL_OFFSET		0x170
+/* DDR write leveling control */
+#define MPC85xx_DDR_WRLVL_CNTL_OFFSET		0x174
+/* Self Refresh Counter */
+#define MPC85xx_DDR_SR_CNTL_OFFSET		0x17c
+/* DDR SDRAM Register Control Word */
+#define MPC85xx_DDR_SDRAM_RCW_1_OFFSET		0x180
+#define MPC85xx_DDR_SDRAM_RCW_2_OFFSET		0x184
+/* DDR write leveling control */
+#define MPC85xx_DDR_WRLVL_CNTL_2_OFFSET		0x190
+#define MPC85xx_DDR_WRLVL_CNTL_3_OFFSET		0x194
+/* DDR Control Driver */
+#define MPC85xx_DDR_DDRCDR1_OFFSET		0xb28
+#define MPC85xx_DDR_DDRCDR2_OFFSET		0xb2c
 /* DDR IP block revision */
-#define MPC85xx_DDR_IP_REV1_OFFSET	0xbf8
-#define MPC85xx_DDR_IP_REV2_OFFSET	0xbfc
+#define MPC85xx_DDR_IP_REV1_OFFSET		0xbf8
+#define MPC85xx_DDR_IP_REV2_OFFSET		0xbfc
+/* Memory Error Disable */
+#define MPC85xx_DDR_ERR_DISABLE_OFFSET		0xe44
+#define MPC85xx_DDR_ERR_INT_EN_OFFSET		0xe48
 
 #define DDR_OFF(REGNAME)	(MPC85xx_DDR_##REGNAME##_OFFSET)
 
@@ -147,6 +173,8 @@
 #define		MPC85xx_PORPLLSR_DDR_RATIO_SHIFT	9
 #define MPC85xx_GUTS_PORDEVSR2_OFFSET	0x14
 #define		MPC85xx_PORDEVSR2_SEC_CFG		0x00000080
+#define MPC85xx_GUTS_PMUXCR_OFFSET	0x60
+#define MPC85xx_GUTS_PMUXCR2_OFFSET	0x64
 #define MPC85xx_GUTS_DEVDISR_OFFSET	0x70
 #define		MPC85xx_DEVDISR_TB0	0x00004000
 #define		MPC85xx_DEVDISR_TB1	0x00001000
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
