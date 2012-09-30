Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TI9cf-00027q-QK
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 02:51:18 +0000
Received: by weyu50 with SMTP id u50so2289584wey.36
 for <barebox@lists.infradead.org>; Sat, 29 Sep 2012 19:51:12 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Sun, 30 Sep 2012 04:50:31 +0200
Message-Id: <1348973437-31132-4-git-send-email-vicencb@gmail.com>
In-Reply-To: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 3/9] omap4: add/rename definitions to match datasheet
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>

---
 arch/arm/boards/panda/mux.c                     |  52 +--
 arch/arm/boards/pcm049/mux.c                    |  44 +--
 arch/arm/boards/phycard-a-xl2/mux.c             |  46 +--
 arch/arm/mach-omap/include/mach/omap4-mux.h     | 486 +++++++++++++-----------
 arch/arm/mach-omap/include/mach/omap4-silicon.h |  13 +
 arch/arm/mach-omap/include/mach/xload.h         |   1 +
 arch/arm/mach-omap/omap4_generic.c              |   2 +
 arch/arm/mach-omap/xload.c                      |   1 +
 8 files changed, 343 insertions(+), 302 deletions(-)

diff --git a/arch/arm/boards/panda/mux.c b/arch/arm/boards/panda/mux.c
index 3783006..8225aa6 100644
--- a/arch/arm/boards/panda/mux.c
+++ b/arch/arm/boards/panda/mux.c
@@ -212,31 +212,31 @@ static const struct pad_conf_entry core_padconf_array[] = {
 };
 
 static const struct pad_conf_entry wkup_padconf_array[] = {
-	{ PAD0_SIM_IO, IEN | M0  /* sim_io */ },
-	{ PAD1_SIM_CLK, M0  /* sim_clk */ },
-	{ PAD0_SIM_RESET, M0  /* sim_reset */ },
-	{ PAD1_SIM_CD, PTU | IEN | M0  /* sim_cd */ },
-	{ PAD0_SIM_PWRCTRL, M0  /* sim_pwrctrl */ },
-	{ PAD1_SR_SCL, PTU | IEN | M0  /* sr_scl */ },
-	{ PAD0_SR_SDA, PTU | IEN | M0  /* sr_sda */ },
-	{ PAD1_FREF_XTAL_IN, M0  /* # */ },
-	{ PAD0_FREF_SLICER_IN, M0  /* fref_slicer_in */ },
-	{ PAD1_FREF_CLK_IOREQ, M0  /* fref_clk_ioreq */ },
-	{ PAD0_FREF_CLK0_OUT, M2  /* sys_drm_msecure */ },
-	{ PAD1_FREF_CLK3_REQ, PTU | IEN | M0  /* # */ },
-	{ PAD0_FREF_CLK3_OUT, M0  /* fref_clk3_out */ },
-	{ PAD1_FREF_CLK4_REQ, PTU | IEN | M0  /* # */ },
-	{ PAD0_FREF_CLK4_OUT, M0  /* # */ },
-	{ PAD1_SYS_32K, IEN | M0  /* sys_32k */ },
-	{ PAD0_SYS_NRESPWRON,  M0  /* sys_nrespwron */ },
-	{ PAD1_SYS_NRESWARM, M0  /* sys_nreswarm */ },
-	{ PAD0_SYS_PWR_REQ, PTU | M0  /* sys_pwr_req */ },
-	{ PAD1_SYS_PWRON_RESET, M3  /* gpio_wk29 */ },
-	{ PAD0_SYS_BOOT6, IEN | M3  /* gpio_wk9 */ },
-	{ PAD1_SYS_BOOT7, IEN | M3  /* gpio_wk10 */ },
-	{ PAD1_FREF_CLK3_REQ, M3 /* gpio_wk30 */ },
-	{ PAD1_FREF_CLK4_REQ, M3 /* gpio_wk7 */ },
-	{ PAD0_FREF_CLK4_OUT, M3 /* gpio_wk8 */ },
+	{ GPIO_WK0, IEN | M0  /* sim_io */ },
+	{ GPIO_WK1, M0  /* sim_clk */ },
+	{ GPIO_WK2, M0  /* sim_reset */ },
+	{ GPIO_WK3, PTU | IEN | M0  /* sim_cd */ },
+	{ GPIO_WK4, M0  /* sim_pwrctrl */ },
+	{ SR_SCL, PTU | IEN | M0  /* sr_scl */ },
+	{ SR_SDA, PTU | IEN | M0  /* sr_sda */ },
+	{ FREF_XTAL_IN, M0  /* # */ },
+	{ FREF_SLICER_IN, M0  /* fref_slicer_in */ },
+	{ FREF_CLK_IOREQ, M0  /* fref_clk_ioreq */ },
+	{ FREF_CLK0_OUT, M2  /* sys_drm_msecure */ },
+	{ FREF_CLK3_REQ, PTU | IEN | M0  /* # */ },
+	{ FREF_CLK3_OUT, M0  /* fref_clk3_out */ },
+	{ FREF_CLK4_REQ, PTU | IEN | M0  /* # */ },
+	{ FREF_CLK4_OUT, M0  /* # */ },
+	{ SYS_32K, IEN | M0  /* sys_32k */ },
+	{ SYS_NRESPWRON,  M0  /* sys_nrespwron */ },
+	{ SYS_NRESWARM, M0  /* sys_nreswarm */ },
+	{ SYS_PWR_REQ, PTU | M0  /* sys_pwr_req */ },
+	{ SYS_PWRON_RESET_OUT, M3  /* gpio_wk29 */ },
+	{ SYS_BOOT6, IEN | M3  /* gpio_wk9 */ },
+	{ SYS_BOOT7, IEN | M3  /* gpio_wk10 */ },
+	{ FREF_CLK3_REQ, M3 /* gpio_wk30 */ },
+	{ FREF_CLK4_REQ, M3 /* gpio_wk7 */ },
+	{ FREF_CLK4_OUT, M3 /* gpio_wk8 */ },
 };
 
 void set_muxconf_regs(void)
@@ -249,7 +249,7 @@ void set_muxconf_regs(void)
 
 	/* gpio_wk7 is used for controlling TPS on 4460 */
 	if (omap4_revision() >= OMAP4460_ES1_0) {
-		writew(M3, OMAP44XX_CONTROL_PADCONF_WKUP + PAD1_FREF_CLK4_REQ);
+		writew(M3, OMAP44XX_CONTROL_PADCONF_WKUP + FREF_CLK4_REQ);
 		/* Enable GPIO-1 clocks before TPS initialization */
 		omap4_enable_gpio1_wup_clocks();
 	}
diff --git a/arch/arm/boards/pcm049/mux.c b/arch/arm/boards/pcm049/mux.c
index 04e1d67..5ea88cd 100644
--- a/arch/arm/boards/pcm049/mux.c
+++ b/arch/arm/boards/pcm049/mux.c
@@ -212,28 +212,28 @@ static const struct pad_conf_entry core_padconf_array[] = {
 };
 
 static const struct pad_conf_entry wkup_padconf_array[] = {
-	{PAD0_SIM_IO, (SAFE_MODE)},					/* nc */
-	{PAD1_SIM_CLK, (SAFE_MODE)},					/* nc */
-	{PAD0_SIM_RESET, (SAFE_MODE)},					/* nc */
-	{PAD1_SIM_CD, (SAFE_MODE)},					/* nc */
-	{PAD0_SIM_PWRCTRL, (SAFE_MODE)},				/* nc */
-	{PAD1_SR_SCL, (PTU | IEN | M0)},				/* sr_scl */
-	{PAD0_SR_SDA, (PTU | IEN | M0)},				/* sr_sda */
-	{PAD1_FREF_XTAL_IN, (M0)},					/* # */
-	{PAD0_FREF_SLICER_IN, (SAFE_MODE)},				/* nc */
-	{PAD1_FREF_CLK_IOREQ, (SAFE_MODE)},				/* nc */
-	{PAD0_FREF_CLK0_OUT, (M2)},					/* sys_drm_msecure */
-	{PAD1_FREF_CLK3_REQ, (IEN | M3)},				/* gpio_wk30 */
-	{PAD0_FREF_CLK3_OUT, (M0)},					/* fref_clk3_out */
-	{PAD1_FREF_CLK4_REQ, (M0)},					/* fref_clk4_req */
-	{PAD0_FREF_CLK4_OUT, (M0)},					/* fref_clk4_out */
-	{PAD1_SYS_32K, (IEN | M0)},					/* sys_32k */
-	{PAD0_SYS_NRESPWRON, (M0)},					/* sys_nrespwron */
-	{PAD1_SYS_NRESWARM, (M0)},					/* sys_nreswarm */
-	{PAD0_SYS_PWR_REQ, (PTU | M0)},					/* sys_pwr_req */
-	{PAD1_SYS_PWRON_RESET, (M0)},					/* sys_pwron_reset_out */
-	{PAD0_SYS_BOOT6, (M0)},						/* sys_boot6 */
-	{PAD1_SYS_BOOT7, (M0)},						/* sys_boot7 */
+	{GPIO_WK0, (SAFE_MODE)},					/* nc */
+	{GPIO_WK1, (SAFE_MODE)},					/* nc */
+	{GPIO_WK2, (SAFE_MODE)},					/* nc */
+	{GPIO_WK3, (SAFE_MODE)},					/* nc */
+	{GPIO_WK4, (SAFE_MODE)},				/* nc */
+	{SR_SCL, (PTU | IEN | M0)},				/* sr_scl */
+	{SR_SDA, (PTU | IEN | M0)},				/* sr_sda */
+	{FREF_XTAL_IN, (M0)},					/* # */
+	{FREF_SLICER_IN, (SAFE_MODE)},				/* nc */
+	{FREF_CLK_IOREQ, (SAFE_MODE)},				/* nc */
+	{FREF_CLK0_OUT, (M2)},					/* sys_drm_msecure */
+	{FREF_CLK3_REQ, (IEN | M3)},				/* gpio_wk30 */
+	{FREF_CLK3_OUT, (M0)},					/* fref_clk3_out */
+	{FREF_CLK4_REQ, (M0)},					/* fref_clk4_req */
+	{FREF_CLK4_OUT, (M0)},					/* fref_clk4_out */
+	{SYS_32K, (IEN | M0)},					/* sys_32k */
+	{SYS_NRESPWRON, (M0)},					/* sys_nrespwron */
+	{SYS_NRESWARM, (M0)},					/* sys_nreswarm */
+	{SYS_PWR_REQ, (PTU | M0)},					/* sys_pwr_req */
+	{SYS_PWRON_RESET_OUT, (M0)},					/* sys_pwron_reset_out */
+	{SYS_BOOT6, (M0)},						/* sys_boot6 */
+	{SYS_BOOT7, (M0)},						/* sys_boot7 */
 };
 
 void set_muxconf_regs(void)
diff --git a/arch/arm/boards/phycard-a-xl2/mux.c b/arch/arm/boards/phycard-a-xl2/mux.c
index dc605e3..e852c84 100644
--- a/arch/arm/boards/phycard-a-xl2/mux.c
+++ b/arch/arm/boards/phycard-a-xl2/mux.c
@@ -212,28 +212,28 @@ static const struct pad_conf_entry core_padconf_array[] = {
 };
 
 static const struct pad_conf_entry wkup_padconf_array[] = {
-	{PAD0_SIM_IO, (SAFE_MODE)},					/* tbd */
-	{PAD1_SIM_CLK, (SAFE_MODE)},					/* nc */
-	{PAD0_SIM_RESET, (SAFE_MODE)},					/* nc */
-	{PAD1_SIM_CD, (SAFE_MODE)},					/* nc */
-	{PAD0_SIM_PWRCTRL, (SAFE_MODE)},				/* nc */
-	{PAD1_SR_SCL, (PTU | IEN | M0)},				/* sr_scl */
-	{PAD0_SR_SDA, (PTU | IEN | M0)},				/* sr_sda */
-	{PAD1_FREF_XTAL_IN, (M0)},					/* # */
-	{PAD0_FREF_SLICER_IN, (SAFE_MODE)},				/* nc */
-	{PAD1_FREF_CLK_IOREQ, (SAFE_MODE)},				/* nc */
-	{PAD0_FREF_CLK0_OUT, (M2)},					/* sys_drm_msecure */
-	{PAD1_FREF_CLK3_REQ, (SAFE_MODE)},				/* nc */
-	{PAD0_FREF_CLK3_OUT, (M0)},					/* fref_clk3_out */
-	{PAD1_FREF_CLK4_REQ, (IEN | M3)},				/* gpio_wk7 */
-	{PAD0_FREF_CLK4_OUT, (M0)},					/* fref_clk4_out */
-	{PAD1_SYS_32K, (IEN | M0)},					/* sys_32k */
-	{PAD0_SYS_NRESPWRON, (M0)},					/* sys_nrespwron */
-	{PAD1_SYS_NRESWARM, (M0)},					/* sys_nreswarm */
-	{PAD0_SYS_PWR_REQ, (PTU | M0)},					/* sys_pwr_req */
-	{PAD1_SYS_PWRON_RESET, (M0)},					/* sys_pwron_reset_out */
-	{PAD0_SYS_BOOT6, (M0)},						/* sys_boot6 */
-	{PAD1_SYS_BOOT7, (M0)},						/* sys_boot7 */
+	{GPIO_WK0, (SAFE_MODE)},					/* tbd */
+	{GPIO_WK1, (SAFE_MODE)},					/* nc */
+	{GPIO_WK2, (SAFE_MODE)},					/* nc */
+	{GPIO_WK3, (SAFE_MODE)},					/* nc */
+	{GPIO_WK4, (SAFE_MODE)},				/* nc */
+	{SR_SCL, (PTU | IEN | M0)},				/* sr_scl */
+	{SR_SDA, (PTU | IEN | M0)},				/* sr_sda */
+	{FREF_XTAL_IN, (M0)},					/* # */
+	{FREF_SLICER_IN, (SAFE_MODE)},				/* nc */
+	{FREF_CLK_IOREQ, (SAFE_MODE)},				/* nc */
+	{FREF_CLK0_OUT, (M2)},					/* sys_drm_msecure */
+	{FREF_CLK3_REQ, (SAFE_MODE)},				/* nc */
+	{FREF_CLK3_OUT, (M0)},					/* fref_clk3_out */
+	{FREF_CLK4_REQ, (IEN | M3)},				/* gpio_wk7 */
+	{FREF_CLK4_OUT, (M0)},					/* fref_clk4_out */
+	{SYS_32K, (IEN | M0)},					/* sys_32k */
+	{SYS_NRESPWRON, (M0)},					/* sys_nrespwron */
+	{SYS_NRESWARM, (M0)},					/* sys_nreswarm */
+	{SYS_PWR_REQ, (PTU | M0)},					/* sys_pwr_req */
+	{SYS_PWRON_RESET_OUT, (M0)},					/* sys_pwron_reset_out */
+	{SYS_BOOT6, (M0)},						/* sys_boot6 */
+	{SYS_BOOT7, (M0)},						/* sys_boot7 */
 };
 
 void set_muxconf_regs(void)
@@ -246,7 +246,7 @@ void set_muxconf_regs(void)
 
 	/* gpio_wk7 is used for controlling TPS on 4460 */
 	if (omap4_revision() >= OMAP4460_ES1_0) {
-		writew(M3, OMAP44XX_CONTROL_PADCONF_WKUP + PAD1_FREF_CLK4_REQ);
+		writew(M3, OMAP44XX_CONTROL_PADCONF_WKUP + FREF_CLK4_REQ);
 		/* Enable GPIO-1 clocks before TPS initialization */
 		omap4_enable_gpio1_wup_clocks();
 	}
diff --git a/arch/arm/mach-omap/include/mach/omap4-mux.h b/arch/arm/mach-omap/include/mach/omap4-mux.h
index d06beaa..d35ced8 100644
--- a/arch/arm/mach-omap/include/mach/omap4-mux.h
+++ b/arch/arm/mach-omap/include/mach/omap4-mux.h
@@ -36,6 +36,7 @@ struct pad_conf_entry {
 
 } __attribute__ ((packed));
 
+#define WAKEUP_EN       (1 << 14)
 #ifdef CONFIG_OFF_PADCONF
 #define OFF_PD          (1 << 12)
 #define OFF_PU          (3 << 12)
@@ -87,209 +88,232 @@ struct pad_conf_entry {
 #define CORE_REVISION		0x0000
 #define CORE_HWINFO		0x0004
 #define CORE_SYSCONFIG		0x0010
-#define GPMC_AD0		0x0040
-#define GPMC_AD1		0x0042
-#define GPMC_AD2		0x0044
-#define GPMC_AD3		0x0046
-#define GPMC_AD4		0x0048
-#define GPMC_AD5		0x004A
-#define GPMC_AD6		0x004C
-#define GPMC_AD7		0x004E
-#define GPMC_AD8		0x0050
-#define GPMC_AD9		0x0052
-#define GPMC_AD10		0x0054
-#define GPMC_AD11		0x0056
-#define GPMC_AD12		0x0058
-#define GPMC_AD13		0x005A
-#define GPMC_AD14		0x005C
-#define GPMC_AD15		0x005E
-#define GPMC_A16		0x0060
-#define GPMC_A17		0x0062
-#define GPMC_A18		0x0064
-#define GPMC_A19		0x0066
-#define GPMC_A20		0x0068
-#define GPMC_A21		0x006A
-#define GPMC_A22		0x006C
-#define GPMC_A23		0x006E
-#define GPMC_A24		0x0070
-#define GPMC_A25		0x0072
-#define GPMC_NCS0		0x0074
-#define GPMC_NCS1		0x0076
-#define GPMC_NCS2		0x0078
-#define GPMC_NCS3		0x007A
-#define GPMC_NWP		0x007C
-#define GPMC_CLK		0x007E
-#define GPMC_NADV_ALE		0x0080
-#define GPMC_NOE		0x0082
-#define GPMC_NWE		0x0084
-#define GPMC_NBE0_CLE		0x0086
-#define GPMC_NBE1		0x0088
-#define GPMC_WAIT0		0x008A
-#define GPMC_WAIT1		0x008C
-#define C2C_DATA11		0x008E
-#define C2C_DATA12		0x0090
-#define C2C_DATA13		0x0092
-#define C2C_DATA14		0x0094
-#define C2C_DATA15		0x0096
-#define HDMI_HPD		0x0098
-#define HDMI_CEC		0x009A
-#define HDMI_DDC_SCL		0x009C
-#define HDMI_DDC_SDA		0x009E
-#define CSI21_DX0		0x00A0
-#define CSI21_DY0		0x00A2
-#define CSI21_DX1		0x00A4
-#define CSI21_DY1		0x00A6
-#define CSI21_DX2		0x00A8
-#define CSI21_DY2		0x00AA
-#define CSI21_DX3		0x00AC
-#define CSI21_DY3		0x00AE
-#define CSI21_DX4		0x00B0
-#define CSI21_DY4		0x00B2
-#define CSI22_DX0		0x00B4
-#define CSI22_DY0		0x00B6
-#define CSI22_DX1		0x00B8
-#define CSI22_DY1		0x00BA
-#define CAM_SHUTTER		0x00BC
-#define CAM_STROBE		0x00BE
-#define CAM_GLOBALRESET		0x00C0
-#define USBB1_ULPITLL_CLK	0x00C2
-#define USBB1_ULPITLL_STP	0x00C4
-#define USBB1_ULPITLL_DIR	0x00C6
-#define USBB1_ULPITLL_NXT	0x00C8
-#define USBB1_ULPITLL_DAT0	0x00CA
-#define USBB1_ULPITLL_DAT1	0x00CC
-#define USBB1_ULPITLL_DAT2	0x00CE
-#define USBB1_ULPITLL_DAT3	0x00D0
-#define USBB1_ULPITLL_DAT4	0x00D2
-#define USBB1_ULPITLL_DAT5	0x00D4
-#define USBB1_ULPITLL_DAT6	0x00D6
-#define USBB1_ULPITLL_DAT7	0x00D8
-#define USBB1_HSIC_DATA		0x00DA
-#define USBB1_HSIC_STROBE	0x00DC
-#define USBC1_ICUSB_DP		0x00DE
-#define USBC1_ICUSB_DM		0x00E0
-#define SDMMC1_CLK		0x00E2
-#define SDMMC1_CMD		0x00E4
-#define SDMMC1_DAT0		0x00E6
-#define SDMMC1_DAT1		0x00E8
-#define SDMMC1_DAT2		0x00EA
-#define SDMMC1_DAT3		0x00EC
-#define SDMMC1_DAT4		0x00EE
-#define SDMMC1_DAT5		0x00F0
-#define SDMMC1_DAT6		0x00F2
-#define SDMMC1_DAT7		0x00F4
-#define ABE_MCBSP2_CLKX		0x00F6
-#define ABE_MCBSP2_DR		0x00F8
-#define ABE_MCBSP2_DX		0x00FA
-#define ABE_MCBSP2_FSX		0x00FC
-#define ABE_MCBSP1_CLKX		0x00FE
-#define ABE_MCBSP1_DR		0x0100
-#define ABE_MCBSP1_DX		0x0102
-#define ABE_MCBSP1_FSX		0x0104
-#define ABE_PDM_UL_DATA		0x0106
-#define ABE_PDM_DL_DATA		0x0108
-#define ABE_PDM_FRAME		0x010A
-#define ABE_PDM_LB_CLK		0x010C
-#define ABE_CLKS		0x010E
-#define ABE_DMIC_CLK1		0x0110
-#define ABE_DMIC_DIN1		0x0112
-#define ABE_DMIC_DIN2		0x0114
-#define ABE_DMIC_DIN3		0x0116
-#define UART2_CTS		0x0118
-#define UART2_RTS		0x011A
-#define UART2_RX		0x011C
-#define UART2_TX		0x011E
-#define HDQ_SIO			0x0120
-#define I2C1_SCL		0x0122
-#define I2C1_SDA		0x0124
-#define I2C2_SCL		0x0126
-#define I2C2_SDA		0x0128
-#define I2C3_SCL		0x012A
-#define I2C3_SDA		0x012C
-#define I2C4_SCL		0x012E
-#define I2C4_SDA		0x0130
-#define MCSPI1_CLK		0x0132
-#define MCSPI1_SOMI		0x0134
-#define MCSPI1_SIMO		0x0136
-#define MCSPI1_CS0		0x0138
-#define MCSPI1_CS1		0x013A
-#define MCSPI1_CS2		0x013C
-#define MCSPI1_CS3		0x013E
-#define UART3_CTS_RCTX		0x0140
-#define UART3_RTS_SD		0x0142
-#define UART3_RX_IRRX		0x0144
-#define UART3_TX_IRTX		0x0146
-#define SDMMC5_CLK		0x0148
-#define SDMMC5_CMD		0x014A
-#define SDMMC5_DAT0		0x014C
-#define SDMMC5_DAT1		0x014E
-#define SDMMC5_DAT2		0x0150
-#define SDMMC5_DAT3		0x0152
-#define MCSPI4_CLK		0x0154
-#define MCSPI4_SIMO		0x0156
-#define MCSPI4_SOMI		0x0158
-#define MCSPI4_CS0		0x015A
-#define UART4_RX		0x015C
-#define UART4_TX		0x015E
-#define USBB2_ULPITLL_CLK	0x0160
-#define USBB2_ULPITLL_STP	0x0162
-#define USBB2_ULPITLL_DIR	0x0164
-#define USBB2_ULPITLL_NXT	0x0166
-#define USBB2_ULPITLL_DAT0	0x0168
-#define USBB2_ULPITLL_DAT1	0x016A
-#define USBB2_ULPITLL_DAT2	0x016C
-#define USBB2_ULPITLL_DAT3	0x016E
-#define USBB2_ULPITLL_DAT4	0x0170
-#define USBB2_ULPITLL_DAT5	0x0172
-#define USBB2_ULPITLL_DAT6	0x0174
-#define USBB2_ULPITLL_DAT7	0x0176
-#define USBB2_HSIC_DATA		0x0178
-#define USBB2_HSIC_STROBE	0x017A
-#define UNIPRO_TX0		0x017C
-#define UNIPRO_TY0		0x017E
-#define UNIPRO_TX1		0x0180
-#define UNIPRO_TY1		0x0182
-#define UNIPRO_TX2		0x0184
-#define UNIPRO_TY2		0x0186
-#define UNIPRO_RX0		0x0188
-#define UNIPRO_RY0		0x018A
-#define UNIPRO_RX1		0x018C
-#define UNIPRO_RY1		0x018E
-#define UNIPRO_RX2		0x0190
-#define UNIPRO_RY2		0x0192
-#define USBA0_OTG_CE		0x0194
-#define USBA0_OTG_DP		0x0196
-#define USBA0_OTG_DM		0x0198
-#define FREF_CLK1_OUT		0x019A
-#define FREF_CLK2_OUT		0x019C
-#define SYS_NIRQ1		0x019E
-#define SYS_NIRQ2		0x01A0
-#define SYS_BOOT0		0x01A2
-#define SYS_BOOT1		0x01A4
-#define SYS_BOOT2		0x01A6
-#define SYS_BOOT3		0x01A8
-#define SYS_BOOT4		0x01AA
-#define SYS_BOOT5		0x01AC
-#define DPM_EMU0		0x01AE
-#define DPM_EMU1		0x01B0
-#define DPM_EMU2		0x01B2
-#define DPM_EMU3		0x01B4
-#define DPM_EMU4		0x01B6
-#define DPM_EMU5		0x01B8
-#define DPM_EMU6		0x01BA
-#define DPM_EMU7		0x01BC
-#define DPM_EMU8		0x01BE
-#define DPM_EMU9		0x01C0
-#define DPM_EMU10		0x01C2
-#define DPM_EMU11		0x01C4
-#define DPM_EMU12		0x01C6
-#define DPM_EMU13		0x01C8
-#define DPM_EMU14		0x01CA
-#define DPM_EMU15		0x01CC
-#define DPM_EMU16		0x01CE
-#define DPM_EMU17		0x01D0
-#define DPM_EMU18		0x01D2
-#define DPM_EMU19		0x01D4
+#define GPMC_AD0            0x0040
+#define GPMC_AD1            0x0042
+#define GPMC_AD2            0x0044
+#define GPMC_AD3            0x0046
+#define GPMC_AD4            0x0048
+#define GPMC_AD5            0x004A
+#define GPMC_AD6            0x004C
+#define GPMC_AD7            0x004E
+#define GPMC_AD8            0x0050
+#define GPMC_AD9            0x0052
+#define GPMC_AD10           0x0054
+#define GPMC_AD11           0x0056
+#define GPMC_AD12           0x0058
+#define GPMC_AD13           0x005A
+#define GPMC_AD14           0x005C
+#define GPMC_AD15           0x005E
+#define GPMC_A16            0x0060
+#define GPMC_A17            0x0062
+#define GPMC_A18            0x0064
+#define GPMC_A19            0x0066
+#define GPMC_A20            0x0068
+#define GPMC_A21            0x006A
+#define GPMC_A22            0x006C
+#define GPMC_A23            0x006E
+#define GPMC_A24            0x0070
+#define GPMC_A25            0x0072
+#define GPMC_NCS0           0x0074
+#define GPMC_NCS1           0x0076
+#define GPMC_NCS2           0x0078
+#define GPMC_NCS3           0x007A
+#define GPMC_NWP            0x007C
+#define GPMC_CLK            0x007E
+#define GPMC_NADV_ALE       0x0080
+#define GPMC_NOE            0x0082
+#define GPMC_NWE            0x0084
+#define GPMC_NBE0_CLE       0x0086
+#define GPMC_NBE1           0x0088
+#define GPMC_WAIT0          0x008A
+#define GPMC_WAIT1          0x008C
+#define C2C_DATA11       0x008E
+#define GPMC_WAIT2          0x008E
+#define C2C_DATA12       0x0090
+#define GPMC_NCS4           0x0090
+#define C2C_DATA13       0x0092
+#define GPMC_NCS5           0x0092
+#define C2C_DATA14       0x0094
+#define GPMC_NCS6           0x0094
+#define C2C_DATA15       0x0096
+#define GPMC_NCS7           0x0096
+#define HDMI_HPD         0x0098
+#define GPIO63              0x0098
+#define HDMI_CEC         0x009A
+#define GPIO64              0x009A
+#define HDMI_DDC_SCL     0x009C
+#define GPIO65              0x009C
+#define HDMI_DDC_SDA     0x009E
+#define GPIO66              0x009E
+#define CSI21_DX0           0x00A0
+#define CSI21_DY0           0x00A2
+#define CSI21_DX1           0x00A4
+#define CSI21_DY1           0x00A6
+#define CSI21_DX2           0x00A8
+#define CSI21_DY2           0x00AA
+#define CSI21_DX3           0x00AC
+#define CSI21_DY3           0x00AE
+#define CSI21_DX4           0x00B0
+#define CSI21_DY4           0x00B2
+#define CSI22_DX0           0x00B4
+#define CSI22_DY0           0x00B6
+#define CSI22_DX1           0x00B8
+#define CSI22_DY1           0x00BA
+#define CAM_SHUTTER         0x00BC
+#define CAM_STROBE          0x00BE
+#define CAM_GLOBALRESET     0x00C0
+#define USBB1_ULPITLL_CLK   0x00C2
+#define USBB1_ULPITLL_STP   0x00C4
+#define USBB1_ULPITLL_DIR   0x00C6
+#define USBB1_ULPITLL_NXT   0x00C8
+#define USBB1_ULPITLL_DAT0  0x00CA
+#define USBB1_ULPITLL_DAT1  0x00CC
+#define USBB1_ULPITLL_DAT2  0x00CE
+#define USBB1_ULPITLL_DAT3  0x00D0
+#define USBB1_ULPITLL_DAT4  0x00D2
+#define USBB1_ULPITLL_DAT5  0x00D4
+#define USBB1_ULPITLL_DAT6  0x00D6
+#define USBB1_ULPITLL_DAT7  0x00D8
+#define USBB1_HSIC_DATA     0x00DA
+#define USBB1_HSIC_STROBE   0x00DC
+#define USBC1_ICUSB_DP      0x00DE
+#define USBC1_ICUSB_DM      0x00E0
+#define SDMMC1_CLK          0x00E2
+#define SDMMC1_CMD          0x00E4
+#define SDMMC1_DAT0         0x00E6
+#define SDMMC1_DAT1         0x00E8
+#define SDMMC1_DAT2         0x00EA
+#define SDMMC1_DAT3         0x00EC
+#define SDMMC1_DAT4         0x00EE
+#define SDMMC1_DAT5         0x00F0
+#define SDMMC1_DAT6         0x00F2
+#define SDMMC1_DAT7         0x00F4
+#define ABE_MCBSP2_CLKX     0x00F6
+#define ABE_MCBSP2_DR       0x00F8
+#define ABE_MCBSP2_DX       0x00FA
+#define ABE_MCBSP2_FSX      0x00FC
+#define ABE_MCBSP1_CLKX     0x00FE
+#define ABE_MCBSP1_DR       0x0100
+#define ABE_MCBSP1_DX       0x0102
+#define ABE_MCBSP1_FSX      0x0104
+#define ABE_PDM_UL_DATA     0x0106
+#define ABE_PDM_DL_DATA     0x0108
+#define ABE_PDM_FRAME       0x010A
+#define ABE_PDM_LB_CLK      0x010C
+#define ABE_CLKS            0x010E
+#define ABE_DMIC_CLK1       0x0110
+#define ABE_DMIC_DIN1       0x0112
+#define ABE_DMIC_DIN2       0x0114
+#define ABE_DMIC_DIN3       0x0116
+#define UART2_CTS           0x0118
+#define UART2_RTS           0x011A
+#define UART2_RX            0x011C
+#define UART2_TX            0x011E
+#define HDQ_SIO             0x0120
+#define I2C1_SCL            0x0122
+#define I2C1_SDA            0x0124
+#define I2C2_SCL            0x0126
+#define I2C2_SDA            0x0128
+#define I2C3_SCL            0x012A
+#define I2C3_SDA            0x012C
+#define I2C4_SCL            0x012E
+#define I2C4_SDA            0x0130
+#define MCSPI1_CLK          0x0132
+#define MCSPI1_SOMI         0x0134
+#define MCSPI1_SIMO         0x0136
+#define MCSPI1_CS0          0x0138
+#define MCSPI1_CS1          0x013A
+#define MCSPI1_CS2          0x013C
+#define MCSPI1_CS3          0x013E
+#define UART3_CTS_RCTX      0x0140
+#define UART3_RTS_SD        0x0142
+#define UART3_RX_IRRX       0x0144
+#define UART3_TX_IRTX       0x0146
+#define SDMMC5_CLK          0x0148
+#define SDMMC5_CMD          0x014A
+#define SDMMC5_DAT0         0x014C
+#define SDMMC5_DAT1         0x014E
+#define SDMMC5_DAT2         0x0150
+#define SDMMC5_DAT3         0x0152
+#define MCSPI4_CLK          0x0154
+#define MCSPI4_SIMO         0x0156
+#define MCSPI4_SOMI         0x0158
+#define MCSPI4_CS0          0x015A
+#define UART4_RX            0x015C
+#define UART4_TX            0x015E
+#define USBB2_ULPITLL_CLK   0x0160
+#define USBB2_ULPITLL_STP   0x0162
+#define USBB2_ULPITLL_DIR   0x0164
+#define USBB2_ULPITLL_NXT   0x0166
+#define USBB2_ULPITLL_DAT0  0x0168
+#define USBB2_ULPITLL_DAT1  0x016A
+#define USBB2_ULPITLL_DAT2  0x016C
+#define USBB2_ULPITLL_DAT3  0x016E
+#define USBB2_ULPITLL_DAT4  0x0170
+#define USBB2_ULPITLL_DAT5  0x0172
+#define USBB2_ULPITLL_DAT6  0x0174
+#define USBB2_ULPITLL_DAT7  0x0176
+#define USBB2_HSIC_DATA     0x0178
+#define USBB2_HSIC_STROBE   0x017A
+#define UNIPRO_TX0       0x017C
+#define KPD_COL3            0x017C
+#define UNIPRO_TY0       0x017E
+#define KPD_COL4            0x017E
+#define UNIPRO_TX1       0x0180
+#define KPD_COL5            0x0180
+#define UNIPRO_TY1       0x0182
+#define KPD_COL0            0x0182
+#define UNIPRO_TX2       0x0184
+#define KPD_COL1            0x0184
+#define UNIPRO_TY2       0x0186
+#define KPD_COL2            0x0186
+#define UNIPRO_RX0       0x0188
+#define KPD_ROW3            0x0188
+#define UNIPRO_RY0       0x018A
+#define KPD_ROW4            0x018A
+#define UNIPRO_RX1       0x018C
+#define KPD_ROW5            0x018C
+#define UNIPRO_RY1       0x018E
+#define KPD_ROW0            0x018E
+#define UNIPRO_RX2       0x0190
+#define KPD_ROW1            0x0190
+#define UNIPRO_RY2       0x0192
+#define KPD_ROW2            0x0192
+#define USBA0_OTG_CE        0x0194
+#define USBA0_OTG_DP        0x0196
+#define USBA0_OTG_DM        0x0198
+#define FREF_CLK1_OUT       0x019A
+#define FREF_CLK2_OUT       0x019C
+#define SYS_NIRQ1           0x019E
+#define SYS_NIRQ2           0x01A0
+#define SYS_BOOT0           0x01A2
+#define SYS_BOOT1           0x01A4
+#define SYS_BOOT2           0x01A6
+#define SYS_BOOT3           0x01A8
+#define SYS_BOOT4           0x01AA
+#define SYS_BOOT5           0x01AC
+#define DPM_EMU0            0x01AE
+#define DPM_EMU1            0x01B0
+#define DPM_EMU2            0x01B2
+#define DPM_EMU3            0x01B4
+#define DPM_EMU4            0x01B6
+#define DPM_EMU5            0x01B8
+#define DPM_EMU6            0x01BA
+#define DPM_EMU7            0x01BC
+#define DPM_EMU8            0x01BE
+#define DPM_EMU9            0x01C0
+#define DPM_EMU10           0x01C2
+#define DPM_EMU11           0x01C4
+#define DPM_EMU12           0x01C6
+#define DPM_EMU13           0x01C8
+#define DPM_EMU14           0x01CA
+#define DPM_EMU15           0x01CC
+#define DPM_EMU16           0x01CE
+#define DPM_EMU17           0x01D0
+#define DPM_EMU18           0x01D2
+#define DPM_EMU19           0x01D4
+#define CSI22_DX2           0x01D6
+#define CSI22_DY2           0x01F4
 #define WAKEUPEVENT_0		0x01D8
 #define WAKEUPEVENT_1		0x01DC
 #define WAKEUPEVENT_2		0x01E0
@@ -301,34 +325,34 @@ struct pad_conf_entry {
 #define WKUP_REVISION		0x0000
 #define WKUP_HWINFO		0x0004
 #define WKUP_SYSCONFIG		0x0010
-#define PAD0_SIM_IO		0x0040
-#define PAD1_SIM_CLK		0x0042
-#define PAD0_SIM_RESET		0x0044
-#define PAD1_SIM_CD		0x0046
-#define PAD0_SIM_PWRCTRL		0x0048
-#define PAD1_SR_SCL		0x004A
-#define PAD0_SR_SDA		0x004C
-#define PAD1_FREF_XTAL_IN		0x004E
-#define PAD0_FREF_SLICER_IN	0x0050
-#define PAD1_FREF_CLK_IOREQ	0x0052
-#define PAD0_FREF_CLK0_OUT		0x0054
-#define PAD1_FREF_CLK3_REQ		0x0056
-#define PAD0_FREF_CLK3_OUT		0x0058
-#define PAD1_FREF_CLK4_REQ		0x005A
-#define PAD0_FREF_CLK4_OUT		0x005C
-#define PAD1_SYS_32K		0x005E
-#define PAD0_SYS_NRESPWRON		0x0060
-#define PAD1_SYS_NRESWARM		0x0062
-#define PAD0_SYS_PWR_REQ		0x0064
-#define PAD1_SYS_PWRON_RESET	0x0066
-#define PAD0_SYS_BOOT6		0x0068
-#define PAD1_SYS_BOOT7		0x006A
-#define PAD0_JTAG_NTRST		0x006C
-#define PAD1_JTAG_TCK		0x006D
-#define PAD0_JTAG_RTCK		0x0070
-#define PAD1_JTAG_TMS_TMSC		0x0072
-#define PAD0_JTAG_TDI		0x0074
-#define PAD1_JTAG_TDO		0x0076
+#define GPIO_WK0            0x0040
+#define GPIO_WK1            0x0042
+#define GPIO_WK2            0x0044
+#define GPIO_WK3            0x0046
+#define GPIO_WK4            0x0048
+#define SR_SCL              0x004A
+#define SR_SDA              0x004C
+#define FREF_XTAL_IN        0x004E
+#define FREF_SLICER_IN      0x0050
+#define FREF_CLK_IOREQ      0x0052
+#define FREF_CLK0_OUT       0x0054
+#define FREF_CLK3_REQ       0x0056
+#define FREF_CLK3_OUT       0x0058
+#define FREF_CLK4_REQ       0x005A
+#define FREF_CLK4_OUT       0x005C
+#define SYS_32K             0x005E
+#define SYS_NRESPWRON       0x0060
+#define SYS_NRESWARM        0x0062
+#define SYS_PWR_REQ         0x0064
+#define SYS_PWRON_RESET_OUT 0x0066
+#define SYS_BOOT6           0x0068
+#define SYS_BOOT7           0x006A
+#define JTAG_NTRST          0x006C
+#define JTAG_TCK            0x006E
+#define JTAG_RTCK           0x0070
+#define JTAG_TMS_TMSC       0x0072
+#define JTAG_TDI            0x0074
+#define JTAG_TDO            0x0076
 #define PADCONF_WAKEUPEVENT_0	0x007C
 #define CONTROL_SMART1NOPMIO_PADCONF_0		0x05A0
 #define CONTROL_SMART1NOPMIO_PADCONF_1		0x05A4
diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index 4082bac..a6b3f2b 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -76,6 +76,12 @@
 #define OMAP44XX_UART2_BASE		(OMAP44XX_L4_PER_BASE + 0x6c000)
 #define OMAP44XX_UART3_BASE		(OMAP44XX_L4_PER_BASE + 0x20000)
 
+/* I2C */
+#define OMAP44XX_I2C1_BASE		(OMAP44XX_L4_PER_BASE + 0x070000)
+#define OMAP44XX_I2C2_BASE		(OMAP44XX_L4_PER_BASE + 0x072000)
+#define OMAP44XX_I2C3_BASE		(OMAP44XX_L4_PER_BASE + 0x060000)
+#define OMAP44XX_I2C4_BASE		(OMAP44XX_L4_PER_BASE + 0x350000)
+
 /* General Purpose Timers */
 #define OMAP44XX_GPT1_BASE		(OMAP44XX_L4_WKUP_BASE + 0x18000)
 #define OMAP44XX_GPT2_BASE		(OMAP44XX_L4_PER_BASE  + 0x32000)
@@ -92,6 +98,13 @@
 /* 32KTIMER */
 #define OMAP_32KTIMER_BASE		(OMAP44XX_L4_WKUP_BASE + 0x4000)
 
+/* MMC */
+#define OMAP44XX_MMC1_BASE		(OMAP44XX_L4_PER_BASE + 0x09C100)
+#define OMAP44XX_MMC2_BASE		(OMAP44XX_L4_PER_BASE + 0x0B4100)
+#define OMAP44XX_MMC3_BASE		(OMAP44XX_L4_PER_BASE + 0x0AD100)
+#define OMAP44XX_MMC4_BASE		(OMAP44XX_L4_PER_BASE + 0x0D1100)
+#define OMAP44XX_MMC5_BASE		(OMAP44XX_L4_PER_BASE + 0x0D5100)
+
 /* GPMC */
 #define OMAP_GPMC_BASE		0x50000000
 
diff --git a/arch/arm/mach-omap/include/mach/xload.h b/arch/arm/mach-omap/include/mach/xload.h
index 844b57f..cfc3f68 100644
--- a/arch/arm/mach-omap/include/mach/xload.h
+++ b/arch/arm/mach-omap/include/mach/xload.h
@@ -8,6 +8,7 @@ enum omap_boot_src {
 	OMAP_BOOTSRC_UNKNOWN,
 	OMAP_BOOTSRC_MMC1,
 	OMAP_BOOTSRC_NAND,
+	OMAP_BOOTSRC_USB1,
 };
 
 enum omap_boot_src omap3_bootsrc(void);
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 617d786..6562268 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -481,6 +481,8 @@ enum omap_boot_src omap4_bootsrc(void)
 		return OMAP_BOOTSRC_MMC1;
 	if (bootsrc & (1 << 3))
 		return OMAP_BOOTSRC_NAND;
+	if (bootsrc & (1<<20))
+		return OMAP_BOOTSRC_USB1;
 	return OMAP_BOOTSRC_UNKNOWN;
 }
 
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 13024ab..225b19a 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -77,6 +77,7 @@ int run_shell(void)
 		func = omap_xload_boot_mmc();
 		break;
 	case OMAP_BOOTSRC_UNKNOWN:
+	default:
 		printf("unknown boot source. Fall back to nand\n");
 	case OMAP_BOOTSRC_NAND:
 		printf("booting from NAND\n");
-- 
1.7.12.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
