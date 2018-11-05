Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJh9z-0000Ow-28
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:51:03 +0100
Message-Id: <20181105155113.3434-13-s.hauer@pengutronix.de>
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/22] ARM: at91rm9200: Add SoC namespace to memory controller
 defines
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91rm9200ek/config.h         |  26 +-
 arch/arm/boards/at91rm9200ek/lowlevel.c       |  19 +-
 arch/arm/mach-at91/at91rm9200_devices.c       |  18 +-
 .../mach-at91/include/mach/at91rm9200_mc.h    | 274 +++++++++---------
 4 files changed, 171 insertions(+), 166 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/config.h b/arch/arm/boards/at91rm9200ek/config.h
index 070c9a171c..5f4f6fe1ae 100644
--- a/arch/arm/boards/at91rm9200ek/config.h
+++ b/arch/arm/boards/at91rm9200ek/config.h
@@ -30,30 +30,30 @@
 /* flash */
 #define CONFIG_SYS_EBI_CFGR_VAL	0x00000000
 #define CONFIG_SYS_SMC_CSR0_VAL							\
-		(AT91_SMC_NWS_(4) |	/* Number of Wait States */		\
-		 AT91_SMC_WSEN |	/* Wait State Enable */			\
-		 AT91_SMC_TDF_(2) |	/* Data Float Time */			\
-		 AT91_SMC_BAT |		/* Byte Access Type */			\
-		 AT91_SMC_DBW_16)	/* Data Bus Width */
+		(AT91RM9200_SMC_NWS_(4) |	/* Number of Wait States */		\
+		 AT91RM9200_SMC_WSEN |	/* Wait State Enable */			\
+		 AT91RM9200_SMC_TDF_(2) |	/* Data Float Time */			\
+		 AT91RM9200_SMC_BAT |		/* Byte Access Type */			\
+		 AT91RM9200_SMC_DBW_16)	/* Data Bus Width */
 
 /* sdram */
 #define CONFIG_SYS_PIOC_ASR_VAL	0xFFFF0000 /* Configure PIOC as peripheral (D16/D31) */
 #define CONFIG_SYS_PIOC_BSR_VAL	0x00000000
 #define CONFIG_SYS_PIOC_PDR_VAL	0xFFFF0000
 #define CONFIG_SYS_EBI_CSA_VAL							\
-		(AT91_EBI_CS0A_SMC |						\
-		 AT91_EBI_CS1A_SDRAMC |						\
-		 AT91_EBI_CS3A_SMC |						\
-		 AT91_EBI_CS4A_SMC)						\
+		(AT91RM9200_EBI_CS0A_SMC |					\
+		 AT91RM9200_EBI_CS1A_SDRAMC |					\
+		 AT91RM9200_EBI_CS3A_SMC |					\
+		 AT91RM9200_EBI_CS4A_SMC)					\
 
 /* SDRAM */
 /* SDRAMC_MR Mode register */
 /* SDRAMC_CR - Configuration register*/
 #define CONFIG_SYS_SDRC_CR_VAL							\
-		(AT91_SDRAMC_NC_9 |						\
-		 AT91_SDRAMC_NR_12 |						\
-		 AT91_SDRAMC_NB_4 |						\
-		 AT91_SDRAMC_CAS_2 |						\
+		(AT91RM9200_SDRAMC_NC_9 |					\
+		 AT91RM9200_SDRAMC_NR_12 |					\
+		 AT91RM9200_SDRAMC_NB_4 |					\
+		 AT91RM9200_SDRAMC_CAS_2 |					\
 		 (1 <<  8) |		/* Write Recovery Delay */		\
 		 (12 << 12) |		/* Row Cycle Delay */			\
 		 (8 << 16) |		/* Row Precharge Delay */		\
diff --git a/arch/arm/boards/at91rm9200ek/lowlevel.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
index acff615779..3fb6ca3381 100644
--- a/arch/arm/boards/at91rm9200ek/lowlevel.c
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -25,6 +25,7 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 {
 	u32 r;
 	int i;
+	void __iomem *mc = IOMEM(AT91RM9200_BASE_MC);
 
 	arm_cpu_lowlevel_init();
 
@@ -47,12 +48,12 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 	/*
 	 * EBI_CFGR
 	 */
-	at91_sys_write(AT91_EBI_CFGR, CONFIG_SYS_EBI_CFGR_VAL);
+	__raw_writel(CONFIG_SYS_EBI_CFGR_VAL, mc + AT91RM9200_EBI_CFGR);
 
 	/*
 	 * SMC2_CSR[0]: 16bit, 2 TDF, 4 WS
 	 */
-	at91_sys_write(AT91_SMC_CSR(0), CONFIG_SYS_SMC_CSR0_VAL);
+	__raw_writel(CONFIG_SYS_SMC_CSR0_VAL, mc + AT91RM9200_SMC_CSR(0));
 
 	/*
 	 * Init Clocks
@@ -93,31 +94,31 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 	__raw_writel(CONFIG_SYS_PIOC_PDR_VAL, AT91RM9200_BASE_PIOC + PIO_PDR);
 
 	/* EBI_CSA : CS1=SDRAM */
-	at91_sys_write(AT91_EBI_CSA, CONFIG_SYS_EBI_CSA_VAL);
+	__raw_writel(CONFIG_SYS_EBI_CSA_VAL, mc + AT91RM9200_EBI_CSA);
 
 	/* SDRC_CR */
-	at91_sys_write(AT91_SDRAMC_CR, CONFIG_SYS_SDRC_CR_VAL);
+	__raw_writel(CONFIG_SYS_SDRC_CR_VAL, mc + AT91RM9200_SDRAMC_CR);
 	/* SDRC_MR : Precharge All */
-	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_PRECHARGE);
+	__raw_writel(AT91RM9200_SDRAMC_MODE_PRECHARGE, mc + AT91RM9200_SDRAMC_MR);
 	/* access SDRAM */
 	access_sdram();
 	/* SDRC_MR : refresh */
-	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_REFRESH);
+	__raw_writel(AT91RM9200_SDRAMC_MODE_REFRESH, mc + AT91RM9200_SDRAMC_MR);
 
 	/* access SDRAM 8 times */
 	for (i = 0; i < 8; i++)
 		access_sdram();
 
 	/* SDRC_MR : Load Mode Register */
-	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_LMR);
+	__raw_writel(AT91RM9200_SDRAMC_MODE_LMR, mc + AT91RM9200_SDRAMC_MR);
 	/* access SDRAM */
 	access_sdram();
 	/* SDRC_TR : Write refresh rate */
-	at91_sys_write(AT91_SDRAMC_TR, CONFIG_SYS_SDRC_TR_VAL);
+	__raw_writel(CONFIG_SYS_SDRC_TR_VAL, mc + AT91RM9200_SDRAMC_TR);
 	/* access SDRAM */
 	access_sdram();
 	/* SDRC_MR : Normal Mode */
-	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
+	__raw_writel(AT91RM9200_SDRAMC_MODE_NORMAL, mc + AT91RM9200_SDRAMC_MR);
 	/* access SDRAM */
 	access_sdram();
 
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index b4d7cb1e24..2563b6c834 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -135,15 +135,19 @@ void __init at91_add_device_nand(struct atmel_nand_data *data)
 		return;
 
 	/* enable the address range of CS3 */
-	csa = at91_sys_read(AT91_EBI_CSA);
-	at91_sys_write(AT91_EBI_CSA, csa | AT91_EBI_CS3A_SMC_SMARTMEDIA);
+	csa = readl(AT91RM9200_BASE_MC + AT91RM9200_EBI_CSA);
+	csa |= AT91RM9200_EBI_CS3A_SMC_SMARTMEDIA;
+	writel(csa, AT91RM9200_BASE_MC + AT91RM9200_EBI_CSA);
 
 	/* set the bus interface characteristics */
-	at91_sys_write(AT91_SMC_CSR(3), AT91_SMC_ACSS_STD | AT91_SMC_DBW_8 | AT91_SMC_WSEN
-		| AT91_SMC_NWS_(5)
-		| AT91_SMC_TDF_(1)
-		| AT91_SMC_RWSETUP_(0)	/* tDS Data Set up Time 30 - ns */
-		| AT91_SMC_RWHOLD_(1)	/* tDH Data Hold Time 20 - ns */
+	writel(AT91RM9200_SMC_ACSS_STD |
+		AT91RM9200_SMC_DBW_8 |
+		AT91RM9200_SMC_WSEN |
+		AT91RM9200_SMC_NWS_(5) |
+		AT91RM9200_SMC_TDF_(1) |
+		AT91RM9200_SMC_RWSETUP_(0) |	/* tDS Data Set up Time 30 - ns */
+		AT91RM9200_SMC_RWHOLD_(1),	/* tDH Data Hold Time 20 - ns */
+	        AT91RM9200_BASE_MC + AT91RM9200_SMC_CSR(3)
 	);
 
 	/* enable pin */
diff --git a/arch/arm/mach-at91/include/mach/at91rm9200_mc.h b/arch/arm/mach-at91/include/mach/at91rm9200_mc.h
index fc44a61090..14da76b85a 100644
--- a/arch/arm/mach-at91/include/mach/at91rm9200_mc.h
+++ b/arch/arm/mach-at91/include/mach/at91rm9200_mc.h
@@ -17,145 +17,145 @@
 #define AT91RM9200_MC_H
 
 /* Memory Controller */
-#define AT91_MC_RCR		(AT91_MC + 0x00)	/* MC Remap Control Register */
-#define		AT91_MC_RCB		(1 <<  0)		/* Remap Command Bit */
-
-#define AT91_MC_ASR		(AT91_MC + 0x04)	/* MC Abort Status Register */
-#define		AT91_MC_UNADD		(1 <<  0)		/* Undefined Address Abort Status */
-#define		AT91_MC_MISADD		(1 <<  1)		/* Misaligned Address Abort Status */
-#define		AT91_MC_ABTSZ		(3 <<  8)		/* Abort Size Status */
-#define			AT91_MC_ABTSZ_BYTE		(0 << 8)
-#define			AT91_MC_ABTSZ_HALFWORD		(1 << 8)
-#define			AT91_MC_ABTSZ_WORD		(2 << 8)
-#define		AT91_MC_ABTTYP		(3 << 10)		/* Abort Type Status */
-#define			AT91_MC_ABTTYP_DATAREAD		(0 << 10)
-#define			AT91_MC_ABTTYP_DATAWRITE	(1 << 10)
-#define			AT91_MC_ABTTYP_FETCH		(2 << 10)
-#define		AT91_MC_MST0		(1 << 16)		/* ARM920T Abort Source */
-#define		AT91_MC_MST1		(1 << 17)		/* PDC Abort Source */
-#define		AT91_MC_MST2		(1 << 18)		/* UHP Abort Source */
-#define		AT91_MC_MST3		(1 << 19)		/* EMAC Abort Source */
-#define		AT91_MC_SVMST0		(1 << 24)		/* Saved ARM920T Abort Source */
-#define		AT91_MC_SVMST1		(1 << 25)		/* Saved PDC Abort Source */
-#define		AT91_MC_SVMST2		(1 << 26)		/* Saved UHP Abort Source */
-#define		AT91_MC_SVMST3		(1 << 27)		/* Saved EMAC Abort Source */
-
-#define AT91_MC_AASR		(AT91_MC + 0x08)	/* MC Abort Address Status Register */
-
-#define AT91_MC_MPR		(AT91_MC + 0x0c)	/* MC Master Priority Register */
-#define		AT91_MPR_MSTP0		(7 <<  0)		/* ARM920T Priority */
-#define		AT91_MPR_MSTP1		(7 <<  4)		/* PDC Priority */
-#define		AT91_MPR_MSTP2		(7 <<  8)		/* UHP Priority */
-#define		AT91_MPR_MSTP3		(7 << 12)		/* EMAC Priority */
+#define AT91RM9200_MC_RCR		(0x00)	/* MC Remap Control Register */
+#define		AT91RM9200_MC_RCB		(1 <<  0)		/* Remap Command Bit */
+
+#define AT91RM9200_MC_ASR		(0x04)	/* MC Abort Status Register */
+#define		AT91RM9200_MC_UNADD		(1 <<  0)		/* Undefined Address Abort Status */
+#define		AT91RM9200_MC_MISADD		(1 <<  1)		/* Misaligned Address Abort Status */
+#define		AT91RM9200_MC_ABTSZ		(3 <<  8)		/* Abort Size Status */
+#define			AT91RM9200_MC_ABTSZ_BYTE		(0 << 8)
+#define			AT91RM9200_MC_ABTSZ_HALFWORD		(1 << 8)
+#define			AT91RM9200_MC_ABTSZ_WORD		(2 << 8)
+#define		AT91RM9200_MC_ABTTYP		(3 << 10)		/* Abort Type Status */
+#define			AT91RM9200_MC_ABTTYP_DATAREAD		(0 << 10)
+#define			AT91RM9200_MC_ABTTYP_DATAWRITE	(1 << 10)
+#define			AT91RM9200_MC_ABTTYP_FETCH		(2 << 10)
+#define		AT91RM9200_MC_MST0		(1 << 16)		/* ARM920T Abort Source */
+#define		AT91RM9200_MC_MST1		(1 << 17)		/* PDC Abort Source */
+#define		AT91RM9200_MC_MST2		(1 << 18)		/* UHP Abort Source */
+#define		AT91RM9200_MC_MST3		(1 << 19)		/* EMAC Abort Source */
+#define		AT91RM9200_MC_SVMST0		(1 << 24)		/* Saved ARM920T Abort Source */
+#define		AT91RM9200_MC_SVMST1		(1 << 25)		/* Saved PDC Abort Source */
+#define		AT91RM9200_MC_SVMST2		(1 << 26)		/* Saved UHP Abort Source */
+#define		AT91RM9200_MC_SVMST3		(1 << 27)		/* Saved EMAC Abort Source */
+
+#define AT91RM9200_MC_AASR		(0x08)	/* MC Abort Address Status Register */
+
+#define AT91RM9200_MC_MPR		(0x0c)	/* MC Master Priority Register */
+#define		AT91RM9200_MPR_MSTP0		(7 <<  0)		/* ARM920T Priority */
+#define		AT91RM9200_MPR_MSTP1		(7 <<  4)		/* PDC Priority */
+#define		AT91RM9200_MPR_MSTP2		(7 <<  8)		/* UHP Priority */
+#define		AT91RM9200_MPR_MSTP3		(7 << 12)		/* EMAC Priority */
 
 /* External Bus Interface (EBI) registers */
-#define AT91_EBI_CSA		(AT91_MC + 0x60)	/* Chip Select Assignment Register */
-#define		AT91_EBI_CS0A		(1 << 0)		/* Chip Select 0 Assignment */
-#define			AT91_EBI_CS0A_SMC		(0 << 0)
-#define			AT91_EBI_CS0A_BFC		(1 << 0)
-#define		AT91_EBI_CS1A		(1 << 1)		/* Chip Select 1 Assignment */
-#define			AT91_EBI_CS1A_SMC		(0 << 1)
-#define			AT91_EBI_CS1A_SDRAMC		(1 << 1)
-#define		AT91_EBI_CS3A		(1 << 3)		/* Chip Select 2 Assignment */
-#define			AT91_EBI_CS3A_SMC		(0 << 3)
-#define			AT91_EBI_CS3A_SMC_SMARTMEDIA	(1 << 3)
-#define		AT91_EBI_CS4A		(1 << 4)		/* Chip Select 3 Assignment */
-#define			AT91_EBI_CS4A_SMC		(0 << 4)
-#define			AT91_EBI_CS4A_SMC_COMPACTFLASH	(1 << 4)
-#define AT91_EBI_CFGR		(AT91_MC + 0x64)	/* Configuration Register */
-#define		AT91_EBI_DBPUC		(1 << 0)		/* Data Bus Pull-Up Configuration */
+#define AT91RM9200_EBI_CSA		(0x60)	/* Chip Select Assignment Register */
+#define		AT91RM9200_EBI_CS0A		(1 << 0)		/* Chip Select 0 Assignment */
+#define			AT91RM9200_EBI_CS0A_SMC		(0 << 0)
+#define			AT91RM9200_EBI_CS0A_BFC		(1 << 0)
+#define		AT91RM9200_EBI_CS1A		(1 << 1)		/* Chip Select 1 Assignment */
+#define			AT91RM9200_EBI_CS1A_SMC		(0 << 1)
+#define			AT91RM9200_EBI_CS1A_SDRAMC		(1 << 1)
+#define		AT91RM9200_EBI_CS3A		(1 << 3)		/* Chip Select 2 Assignment */
+#define			AT91RM9200_EBI_CS3A_SMC		(0 << 3)
+#define			AT91RM9200_EBI_CS3A_SMC_SMARTMEDIA	(1 << 3)
+#define		AT91RM9200_EBI_CS4A		(1 << 4)		/* Chip Select 3 Assignment */
+#define			AT91RM9200_EBI_CS4A_SMC		(0 << 4)
+#define			AT91RM9200_EBI_CS4A_SMC_COMPACTFLASH	(1 << 4)
+#define AT91RM9200_EBI_CFGR		(0x64)	/* Configuration Register */
+#define		AT91RM9200_EBI_DBPUC		(1 << 0)		/* Data Bus Pull-Up Configuration */
 
 /* Static Memory Controller (SMC) registers */
-#define	AT91_SMC_CSR(n)		(AT91_MC + 0x70 + ((n) * 4))/* SMC Chip Select Register */
-#define		AT91_SMC_NWS		(0x7f <<  0)		/* Number of Wait States */
-#define			AT91_SMC_NWS_(x)	((x) << 0)
-#define		AT91_SMC_WSEN		(1    <<  7)		/* Wait State Enable */
-#define		AT91_SMC_TDF		(0xf  <<  8)		/* Data Float Time */
-#define			AT91_SMC_TDF_(x)	((x) << 8)
-#define		AT91_SMC_BAT		(1    << 12)		/* Byte Access Type */
-#define		AT91_SMC_DBW		(3    << 13)		/* Data Bus Width */
-#define			AT91_SMC_DBW_16		(1 << 13)
-#define			AT91_SMC_DBW_8		(2 << 13)
-#define		AT91_SMC_DPR		(1 << 15)		/* Data Read Protocol */
-#define		AT91_SMC_ACSS		(3 << 16)		/* Address to Chip Select Setup */
-#define			AT91_SMC_ACSS_STD	(0 << 16)
-#define			AT91_SMC_ACSS_1		(1 << 16)
-#define			AT91_SMC_ACSS_2		(2 << 16)
-#define			AT91_SMC_ACSS_3		(3 << 16)
-#define		AT91_SMC_RWSETUP	(7 << 24)		/* Read & Write Signal Time Setup */
-#define			AT91_SMC_RWSETUP_(x)	((x) << 24)
-#define		AT91_SMC_RWHOLD		(7 << 28)		/* Read & Write Signal Hold Time */
-#define			AT91_SMC_RWHOLD_(x)	((x) << 28)
+#define	AT91RM9200_SMC_CSR(n)		(0x70 + ((n) * 4))/* SMC Chip Select Register */
+#define		AT91RM9200_SMC_NWS		(0x7f <<  0)		/* Number of Wait States */
+#define			AT91RM9200_SMC_NWS_(x)	((x) << 0)
+#define		AT91RM9200_SMC_WSEN		(1    <<  7)		/* Wait State Enable */
+#define		AT91RM9200_SMC_TDF		(0xf  <<  8)		/* Data Float Time */
+#define			AT91RM9200_SMC_TDF_(x)	((x) << 8)
+#define		AT91RM9200_SMC_BAT		(1    << 12)		/* Byte Access Type */
+#define		AT91RM9200_SMC_DBW		(3    << 13)		/* Data Bus Width */
+#define			AT91RM9200_SMC_DBW_16		(1 << 13)
+#define			AT91RM9200_SMC_DBW_8		(2 << 13)
+#define		AT91RM9200_SMC_DPR		(1 << 15)		/* Data Read Protocol */
+#define		AT91RM9200_SMC_ACSS		(3 << 16)		/* Address to Chip Select Setup */
+#define			AT91RM9200_SMC_ACSS_STD	(0 << 16)
+#define			AT91RM9200_SMC_ACSS_1		(1 << 16)
+#define			AT91RM9200_SMC_ACSS_2		(2 << 16)
+#define			AT91RM9200_SMC_ACSS_3		(3 << 16)
+#define		AT91RM9200_SMC_RWSETUP	(7 << 24)		/* Read & Write Signal Time Setup */
+#define			AT91RM9200_SMC_RWSETUP_(x)	((x) << 24)
+#define		AT91RM9200_SMC_RWHOLD		(7 << 28)		/* Read & Write Signal Hold Time */
+#define			AT91RM9200_SMC_RWHOLD_(x)	((x) << 28)
 
 /* SDRAM Controller registers */
-#define AT91_SDRAMC_MR		(AT91_MC + 0x90)	/* Mode Register */
-#define		AT91_SDRAMC_MODE	(0xf << 0)		/* Command Mode */
-#define			AT91_SDRAMC_MODE_NORMAL		(0 << 0)
-#define			AT91_SDRAMC_MODE_NOP		(1 << 0)
-#define			AT91_SDRAMC_MODE_PRECHARGE	(2 << 0)
-#define			AT91_SDRAMC_MODE_LMR		(3 << 0)
-#define			AT91_SDRAMC_MODE_REFRESH	(4 << 0)
-#define		AT91_SDRAMC_DBW		(1   << 4)		/* Data Bus Width */
-#define			AT91_SDRAMC_DBW_32	(0 << 4)
-#define			AT91_SDRAMC_DBW_16	(1 << 4)
-
-#define AT91_SDRAMC_TR		(AT91_MC + 0x94)	/* Refresh Timer Register */
-#define		AT91_SDRAMC_COUNT	(0xfff << 0)		/* Refresh Timer Count */
-
-#define AT91_SDRAMC_CR		(AT91_MC + 0x98)	/* Configuration Register */
-#define		AT91_SDRAMC_NC		(3   <<  0)		/* Number of Column Bits */
-#define			AT91_SDRAMC_NC_8	(0 << 0)
-#define			AT91_SDRAMC_NC_9	(1 << 0)
-#define			AT91_SDRAMC_NC_10	(2 << 0)
-#define			AT91_SDRAMC_NC_11	(3 << 0)
-#define		AT91_SDRAMC_NR		(3   <<  2)		/* Number of Row Bits */
-#define			AT91_SDRAMC_NR_11	(0 << 2)
-#define			AT91_SDRAMC_NR_12	(1 << 2)
-#define			AT91_SDRAMC_NR_13	(2 << 2)
-#define		AT91_SDRAMC_NB		(1   <<  4)		/* Number of Banks */
-#define			AT91_SDRAMC_NB_2	(0 << 4)
-#define			AT91_SDRAMC_NB_4	(1 << 4)
-#define		AT91_SDRAMC_CAS		(3   <<  5)		/* CAS Latency */
-#define			AT91_SDRAMC_CAS_2	(2 << 5)
-#define		AT91_SDRAMC_TWR		(0xf <<  7)		/* Write Recovery Delay */
-#define		AT91_SDRAMC_TRC		(0xf << 11)		/* Row Cycle Delay */
-#define		AT91_SDRAMC_TRP		(0xf << 15)		/* Row Precharge Delay */
-#define		AT91_SDRAMC_TRCD	(0xf << 19)		/* Row to Column Delay */
-#define		AT91_SDRAMC_TRAS	(0xf << 23)		/* Active to Precharge Delay */
-#define		AT91_SDRAMC_TXSR	(0xf << 27)		/* Exit Self Refresh to Active Delay */
-
-#define AT91_SDRAMC_SRR		(AT91_MC + 0x9c)	/* Self Refresh Register */
-#define AT91_SDRAMC_LPR		(AT91_MC + 0xa0)	/* Low Power Register */
-#define AT91_SDRAMC_IER		(AT91_MC + 0xa4)	/* Interrupt Enable Register */
-#define AT91_SDRAMC_IDR		(AT91_MC + 0xa8)	/* Interrupt Disable Register */
-#define AT91_SDRAMC_IMR		(AT91_MC + 0xac)	/* Interrupt Mask Register */
-#define AT91_SDRAMC_ISR		(AT91_MC + 0xb0)	/* Interrupt Status Register */
+#define AT91RM9200_SDRAMC_MR		(0x90)	/* Mode Register */
+#define		AT91RM9200_SDRAMC_MODE	(0xf << 0)		/* Command Mode */
+#define			AT91RM9200_SDRAMC_MODE_NORMAL		(0 << 0)
+#define			AT91RM9200_SDRAMC_MODE_NOP		(1 << 0)
+#define			AT91RM9200_SDRAMC_MODE_PRECHARGE	(2 << 0)
+#define			AT91RM9200_SDRAMC_MODE_LMR		(3 << 0)
+#define			AT91RM9200_SDRAMC_MODE_REFRESH	(4 << 0)
+#define		AT91RM9200_SDRAMC_DBW		(1   << 4)		/* Data Bus Width */
+#define			AT91RM9200_SDRAMC_DBW_32	(0 << 4)
+#define			AT91RM9200_SDRAMC_DBW_16	(1 << 4)
+
+#define AT91RM9200_SDRAMC_TR		(0x94)	/* Refresh Timer Register */
+#define		AT91RM9200_SDRAMC_COUNT	(0xfff << 0)		/* Refresh Timer Count */
+
+#define AT91RM9200_SDRAMC_CR		(0x98)	/* Configuration Register */
+#define		AT91RM9200_SDRAMC_NC		(3   <<  0)		/* Number of Column Bits */
+#define			AT91RM9200_SDRAMC_NC_8	(0 << 0)
+#define			AT91RM9200_SDRAMC_NC_9	(1 << 0)
+#define			AT91RM9200_SDRAMC_NC_10	(2 << 0)
+#define			AT91RM9200_SDRAMC_NC_11	(3 << 0)
+#define		AT91RM9200_SDRAMC_NR		(3   <<  2)		/* Number of Row Bits */
+#define			AT91RM9200_SDRAMC_NR_11	(0 << 2)
+#define			AT91RM9200_SDRAMC_NR_12	(1 << 2)
+#define			AT91RM9200_SDRAMC_NR_13	(2 << 2)
+#define		AT91RM9200_SDRAMC_NB		(1   <<  4)		/* Number of Banks */
+#define			AT91RM9200_SDRAMC_NB_2	(0 << 4)
+#define			AT91RM9200_SDRAMC_NB_4	(1 << 4)
+#define		AT91RM9200_SDRAMC_CAS		(3   <<  5)		/* CAS Latency */
+#define			AT91RM9200_SDRAMC_CAS_2	(2 << 5)
+#define		AT91RM9200_SDRAMC_TWR		(0xf <<  7)		/* Write Recovery Delay */
+#define		AT91RM9200_SDRAMC_TRC		(0xf << 11)		/* Row Cycle Delay */
+#define		AT91RM9200_SDRAMC_TRP		(0xf << 15)		/* Row Precharge Delay */
+#define		AT91RM9200_SDRAMC_TRCD	(0xf << 19)		/* Row to Column Delay */
+#define		AT91RM9200_SDRAMC_TRAS	(0xf << 23)		/* Active to Precharge Delay */
+#define		AT91RM9200_SDRAMC_TXSR	(0xf << 27)		/* Exit Self Refresh to Active Delay */
+
+#define AT91RM9200_SDRAMC_SRR		(0x9c)	/* Self Refresh Register */
+#define AT91RM9200_SDRAMC_LPR		(0xa0)	/* Low Power Register */
+#define AT91RM9200_SDRAMC_IER		(0xa4)	/* Interrupt Enable Register */
+#define AT91RM9200_SDRAMC_IDR		(0xa8)	/* Interrupt Disable Register */
+#define AT91RM9200_SDRAMC_IMR		(0xac)	/* Interrupt Mask Register */
+#define AT91RM9200_SDRAMC_ISR		(0xb0)	/* Interrupt Status Register */
 
 /* Burst Flash Controller register */
-#define AT91_BFC_MR		(AT91_MC + 0xc0)	/* Mode Register */
-#define		AT91_BFC_BFCOM		(3   <<  0)		/* Burst Flash Controller Operating Mode */
-#define			AT91_BFC_BFCOM_DISABLED	(0 << 0)
-#define			AT91_BFC_BFCOM_ASYNC	(1 << 0)
-#define			AT91_BFC_BFCOM_BURST	(2 << 0)
-#define		AT91_BFC_BFCC		(3   <<  2)		/* Burst Flash Controller Clock */
-#define			AT91_BFC_BFCC_MCK	(1 << 2)
-#define			AT91_BFC_BFCC_DIV2	(2 << 2)
-#define			AT91_BFC_BFCC_DIV4	(3 << 2)
-#define		AT91_BFC_AVL		(0xf <<  4)		/* Address Valid Latency */
-#define		AT91_BFC_PAGES		(7   <<  8)		/* Page Size */
-#define			AT91_BFC_PAGES_NO_PAGE	(0 << 8)
-#define			AT91_BFC_PAGES_16	(1 << 8)
-#define			AT91_BFC_PAGES_32	(2 << 8)
-#define			AT91_BFC_PAGES_64	(3 << 8)
-#define			AT91_BFC_PAGES_128	(4 << 8)
-#define			AT91_BFC_PAGES_256	(5 << 8)
-#define			AT91_BFC_PAGES_512	(6 << 8)
-#define			AT91_BFC_PAGES_1024	(7 << 8)
-#define		AT91_BFC_OEL		(3   << 12)		/* Output Enable Latency */
-#define		AT91_BFC_BAAEN		(1   << 16)		/* Burst Address Advance Enable */
-#define		AT91_BFC_BFOEH		(1   << 17)		/* Burst Flash Output Enable Handling */
-#define		AT91_BFC_MUXEN		(1   << 18)		/* Multiplexed Bus Enable */
-#define		AT91_BFC_RDYEN		(1   << 19)		/* Ready Enable Mode */
+#define AT91RM9200_BFC_MR		(0xc0)	/* Mode Register */
+#define		AT91RM9200_BFC_BFCOM		(3   <<  0)		/* Burst Flash Controller Operating Mode */
+#define			AT91RM9200_BFC_BFCOM_DISABLED	(0 << 0)
+#define			AT91RM9200_BFC_BFCOM_ASYNC	(1 << 0)
+#define			AT91RM9200_BFC_BFCOM_BURST	(2 << 0)
+#define		AT91RM9200_BFC_BFCC		(3   <<  2)		/* Burst Flash Controller Clock */
+#define			AT91RM9200_BFC_BFCC_MCK	(1 << 2)
+#define			AT91RM9200_BFC_BFCC_DIV2	(2 << 2)
+#define			AT91RM9200_BFC_BFCC_DIV4	(3 << 2)
+#define		AT91RM9200_BFC_AVL		(0xf <<  4)		/* Address Valid Latency */
+#define		AT91RM9200_BFC_PAGES		(7   <<  8)		/* Page Size */
+#define			AT91RM9200_BFC_PAGES_NO_PAGE	(0 << 8)
+#define			AT91RM9200_BFC_PAGES_16	(1 << 8)
+#define			AT91RM9200_BFC_PAGES_32	(2 << 8)
+#define			AT91RM9200_BFC_PAGES_64	(3 << 8)
+#define			AT91RM9200_BFC_PAGES_128	(4 << 8)
+#define			AT91RM9200_BFC_PAGES_256	(5 << 8)
+#define			AT91RM9200_BFC_PAGES_512	(6 << 8)
+#define			AT91RM9200_BFC_PAGES_1024	(7 << 8)
+#define		AT91RM9200_BFC_OEL		(3   << 12)		/* Output Enable Latency */
+#define		AT91RM9200_BFC_BAAEN		(1   << 16)		/* Burst Address Advance Enable */
+#define		AT91RM9200_BFC_BFOEH		(1   << 17)		/* Burst Flash Output Enable Handling */
+#define		AT91RM9200_BFC_MUXEN		(1   << 18)		/* Multiplexed Bus Enable */
+#define		AT91RM9200_BFC_RDYEN		(1   << 19)		/* Ready Enable Mode */
 
 #ifndef __ASSEMBLY__
 #include <mach/io.h>
@@ -164,8 +164,8 @@ static inline u32 at91rm9200_get_sdram_size(void)
 	u32 cr, mr;
 	u32 size;
 
-	cr = at91_sys_read(AT91_SDRAMC_CR);
-	mr = at91_sys_read(AT91_SDRAMC_MR);
+	cr = readl(AT91RM9200_BASE_MC + AT91RM9200_SDRAMC_CR);
+	mr = readl(AT91RM9200_BASE_MC + AT91RM9200_SDRAMC_MR);
 
 	/* Formula:
 	 * size = bank << (col + row + 1);
@@ -174,13 +174,13 @@ static inline u32 at91rm9200_get_sdram_size(void)
 	 */
 	size = 1;
 	/* COL */
-	size += (cr & AT91_SDRAMC_NC) + 8;
+	size += (cr & AT91RM9200_SDRAMC_NC) + 8;
 	/* ROW */
-	size += ((cr & AT91_SDRAMC_NR) >> 2) + 11;
+	size += ((cr & AT91RM9200_SDRAMC_NR) >> 2) + 11;
 	/* BANK */
-	size = ((cr & AT91_SDRAMC_NB) ? 4 : 2) << size;
+	size = ((cr & AT91RM9200_SDRAMC_NB) ? 4 : 2) << size;
 	/* bandwidth */
-	if (!(mr & AT91_SDRAMC_DBW))
+	if (!(mr & AT91RM9200_SDRAMC_DBW))
 		size <<= 1;
 
 	return size;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
