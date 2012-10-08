Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLMEi-0007Os-VB
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 22:55:47 +0000
Received: by mail-we0-f177.google.com with SMTP id u50so2991003wey.36
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 15:55:43 -0700 (PDT)
From: Vicente <vicencb@gmail.com>
Date: Tue,  9 Oct 2012 00:55:12 +0200
Message-Id: <1349736924-24667-3-git-send-email-vicencb@gmail.com>
In-Reply-To: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
References: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 02/14] omap4: add rename definitions to match datasheet
To: barebox@lists.infradead.org
Cc: Vicente <vicencb@gmail.com>


Signed-off-by: Vicente <vicencb@gmail.com>
---
 arch/arm/boards/panda/mux.c                     | 52 ++++++++--------
 arch/arm/boards/pcm049/mux.c                    | 44 +++++++-------
 arch/arm/boards/phycard-a-xl2/mux.c             | 46 +++++++-------
 arch/arm/mach-omap/include/mach/omap4-mux.h     | 80 ++++++++++++++++---------
 arch/arm/mach-omap/include/mach/omap4-silicon.h | 13 ++++
 5 files changed, 136 insertions(+), 99 deletions(-)

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
index 04e1d67..35eb0a3 100644
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
+	{GPIO_WK0, (SAFE_MODE)},		/* nc */
+	{GPIO_WK1, (SAFE_MODE)},		/* nc */
+	{GPIO_WK2, (SAFE_MODE)},		/* nc */
+	{GPIO_WK3, (SAFE_MODE)},		/* nc */
+	{GPIO_WK4, (SAFE_MODE)},		/* nc */
+	{SR_SCL, (PTU | IEN | M0)},		/* sr_scl */
+	{SR_SDA, (PTU | IEN | M0)},		/* sr_sda */
+	{FREF_XTAL_IN, (M0)},			/* # */
+	{FREF_SLICER_IN, (SAFE_MODE)},		/* nc */
+	{FREF_CLK_IOREQ, (SAFE_MODE)},		/* nc */
+	{FREF_CLK0_OUT, (M2)},			/* sys_drm_msecure */
+	{FREF_CLK3_REQ, (IEN | M3)},		/* gpio_wk30 */
+	{FREF_CLK3_OUT, (M0)},			/* fref_clk3_out */
+	{FREF_CLK4_REQ, (M0)},			/* fref_clk4_req */
+	{FREF_CLK4_OUT, (M0)},			/* fref_clk4_out */
+	{SYS_32K, (IEN | M0)},			/* sys_32k */
+	{SYS_NRESPWRON, (M0)},			/* sys_nrespwron */
+	{SYS_NRESWARM, (M0)},			/* sys_nreswarm */
+	{SYS_PWR_REQ, (PTU | M0)},		/* sys_pwr_req */
+	{SYS_PWRON_RESET_OUT, (M0)},		/* sys_pwron_reset_out */
+	{SYS_BOOT6, (M0)},			/* sys_boot6 */
+	{SYS_BOOT7, (M0)},			/* sys_boot7 */
 };
 
 void set_muxconf_regs(void)
diff --git a/arch/arm/boards/phycard-a-xl2/mux.c b/arch/arm/boards/phycard-a-xl2/mux.c
index dc605e3..a31d995 100644
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
+	{GPIO_WK0, (SAFE_MODE)},		/* tbd */
+	{GPIO_WK1, (SAFE_MODE)},		/* nc */
+	{GPIO_WK2, (SAFE_MODE)},		/* nc */
+	{GPIO_WK3, (SAFE_MODE)},		/* nc */
+	{GPIO_WK4, (SAFE_MODE)},		/* nc */
+	{SR_SCL, (PTU | IEN | M0)},		/* sr_scl */
+	{SR_SDA, (PTU | IEN | M0)},		/* sr_sda */
+	{FREF_XTAL_IN, (M0)},			/* # */
+	{FREF_SLICER_IN, (SAFE_MODE)},		/* nc */
+	{FREF_CLK_IOREQ, (SAFE_MODE)},		/* nc */
+	{FREF_CLK0_OUT, (M2)},			/* sys_drm_msecure */
+	{FREF_CLK3_REQ, (SAFE_MODE)},		/* nc */
+	{FREF_CLK3_OUT, (M0)},			/* fref_clk3_out */
+	{FREF_CLK4_REQ, (IEN | M3)},		/* gpio_wk7 */
+	{FREF_CLK4_OUT, (M0)},			/* fref_clk4_out */
+	{SYS_32K, (IEN | M0)},			/* sys_32k */
+	{SYS_NRESPWRON, (M0)},			/* sys_nrespwron */
+	{SYS_NRESWARM, (M0)},			/* sys_nreswarm */
+	{SYS_PWR_REQ, (PTU | M0)},		/* sys_pwr_req */
+	{SYS_PWRON_RESET_OUT, (M0)},		/* sys_pwron_reset_out */
+	{SYS_BOOT6, (M0)},			/* sys_boot6 */
+	{SYS_BOOT7, (M0)},			/* sys_boot7 */
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
index 9ed6486..9088631 100644
--- a/arch/arm/mach-omap/include/mach/omap4-mux.h
+++ b/arch/arm/mach-omap/include/mach/omap4-mux.h
@@ -32,6 +32,7 @@ struct pad_conf_entry {
 
 } __attribute__ ((packed));
 
+#define WAKEUP_EN       (1 << 14)
 #ifdef CONFIG_OFF_PADCONF
 #define OFF_PD          (1 << 12)
 #define OFF_PU          (3 << 12)
@@ -123,14 +124,23 @@ struct pad_conf_entry {
 #define GPMC_WAIT0		0x008A
 #define GPMC_WAIT1		0x008C
 #define C2C_DATA11		0x008E
+#define GPMC_WAIT2          0x008E
 #define C2C_DATA12		0x0090
+#define GPMC_NCS4           0x0090
 #define C2C_DATA13		0x0092
+#define GPMC_NCS5           0x0092
 #define C2C_DATA14		0x0094
+#define GPMC_NCS6           0x0094
 #define C2C_DATA15		0x0096
+#define GPMC_NCS7           0x0096
 #define HDMI_HPD		0x0098
+#define GPIO63              0x0098
 #define HDMI_CEC		0x009A
+#define GPIO64              0x009A
 #define HDMI_DDC_SCL		0x009C
+#define GPIO65              0x009C
 #define HDMI_DDC_SDA		0x009E
+#define GPIO66              0x009E
 #define CSI21_DX0		0x00A0
 #define CSI21_DY0		0x00A2
 #define CSI21_DX1		0x00A4
@@ -242,17 +252,29 @@ struct pad_conf_entry {
 #define USBB2_HSIC_DATA		0x0178
 #define USBB2_HSIC_STROBE	0x017A
 #define UNIPRO_TX0		0x017C
+#define KPD_COL3            0x017C
 #define UNIPRO_TY0		0x017E
+#define KPD_COL4            0x017E
 #define UNIPRO_TX1		0x0180
+#define KPD_COL5            0x0180
 #define UNIPRO_TY1		0x0182
+#define KPD_COL0            0x0182
 #define UNIPRO_TX2		0x0184
+#define KPD_COL1            0x0184
 #define UNIPRO_TY2		0x0186
+#define KPD_COL2            0x0186
 #define UNIPRO_RX0		0x0188
+#define KPD_ROW3            0x0188
 #define UNIPRO_RY0		0x018A
+#define KPD_ROW4            0x018A
 #define UNIPRO_RX1		0x018C
+#define KPD_ROW5            0x018C
 #define UNIPRO_RY1		0x018E
+#define KPD_ROW0            0x018E
 #define UNIPRO_RX2		0x0190
+#define KPD_ROW1            0x0190
 #define UNIPRO_RY2		0x0192
+#define KPD_ROW2            0x0192
 #define USBA0_OTG_CE		0x0194
 #define USBA0_OTG_DP		0x0196
 #define USBA0_OTG_DM		0x0198
@@ -286,6 +308,8 @@ struct pad_conf_entry {
 #define DPM_EMU17		0x01D0
 #define DPM_EMU18		0x01D2
 #define DPM_EMU19		0x01D4
+#define CSI22_DX2           0x01D6
+#define CSI22_DY2           0x01F4
 #define WAKEUPEVENT_0		0x01D8
 #define WAKEUPEVENT_1		0x01DC
 #define WAKEUPEVENT_2		0x01E0
@@ -297,34 +321,34 @@ struct pad_conf_entry {
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
index 345e09a..71ffe39 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -72,6 +72,12 @@
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
@@ -88,6 +94,13 @@
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
 
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
