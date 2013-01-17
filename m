Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f52.google.com ([74.125.82.52])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TveSY-000535-19
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 01:40:05 +0000
Received: by mail-wg0-f52.google.com with SMTP id 12so1309794wgh.19
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2013 17:39:59 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Thu, 17 Jan 2013 02:39:20 +0100
Message-Id: <1358386760-9249-4-git-send-email-vicencb@gmail.com>
In-Reply-To: <1358386760-9249-1-git-send-email-vicencb@gmail.com>
References: <1358386760-9249-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 3/3] ARCHOS: use manufacturer values for pad_conf and reorder
 initialization
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>


Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/boards/archosg9/board.c    |   1 +
 arch/arm/boards/archosg9/lowlevel.c |  18 +-
 arch/arm/boards/archosg9/mux.c      | 654 +++++++++++++-----------------------
 3 files changed, 244 insertions(+), 429 deletions(-)

diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
index 1911c62..200fe92 100644
--- a/arch/arm/boards/archosg9/board.c
+++ b/arch/arm/boards/archosg9/board.c
@@ -58,6 +58,7 @@ static int archosg9_devices_init(void){
 	 * So here there is the hardcoded value
 	 */
 	armlinux_set_architecture(5032);
+	armlinux_set_revision(5);
 
 	return 0;
 }
diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
index d0506bb..0d81359 100644
--- a/arch/arm/boards/archosg9/lowlevel.c
+++ b/arch/arm/boards/archosg9/lowlevel.c
@@ -39,12 +39,19 @@ static const struct ddr_regs ddr_regs_400_mhz_2cs = {
 static noinline void archosg9_init_lowlevel(void)
 {
 	struct dpll_param core = OMAP4_CORE_DPLL_PARAM_19M2_DDR400;
-	struct dpll_param mpu = OMAP4_MPU_DPLL_PARAM_19M2_MPU600;
+	struct dpll_param mpu = OMAP4_MPU_DPLL_PARAM_19M2_MPU1200;
 	struct dpll_param iva = OMAP4_IVA_DPLL_PARAM_19M2;
 	struct dpll_param per = OMAP4_PER_DPLL_PARAM_19M2;
 	struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_19M2;
 	struct dpll_param usb = OMAP4_USB_DPLL_PARAM_19M2;
 
+	set_muxconf_regs();
+
+	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
+	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
+
+	/* Enable all clocks */
+	omap4_enable_all_clocks();
 	writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
 
 	/* Configure all DPLL's at 100% OPP */
@@ -54,15 +63,8 @@ static noinline void archosg9_init_lowlevel(void)
 	omap4_configure_abe_dpll(&abe);
 	omap4_configure_usb_dpll(&usb);
 
-	/* Enable all clocks */
-	omap4_enable_all_clocks();
-
-	set_muxconf_regs();
-
 	omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
 
-	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
-	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
 	board_init_lowlevel_return();
 }
 
diff --git a/arch/arm/boards/archosg9/mux.c b/arch/arm/boards/archosg9/mux.c
index 7ca5057..4fab759 100644
--- a/arch/arm/boards/archosg9/mux.c
+++ b/arch/arm/boards/archosg9/mux.c
@@ -19,429 +19,242 @@
 #include "mux.h"
 
 static const struct pad_conf_entry core_padconf_array[] = {
-	/* sdmmc2_dat0         */ /* internal FLASH */
-	{ GPMC_AD0            ,                               IEN | PTU | M1 },
-	/* sdmmc2_dat1         */ /* internal FLASH */
-	{ GPMC_AD1            ,                               IEN | PTU | M1 },
-	/* sdmmc2_dat2         */ /* internal FLASH */
-	{ GPMC_AD2            ,                               IEN | PTU | M1 },
-	/* sdmmc2_dat3         */ /* internal FLASH */
-	{ GPMC_AD3            ,                               IEN | PTU | M1 },
-	/* sdmmc2_dat4         */ /* internal FLASH */
-	{ GPMC_AD4            ,                               IEN | PTU | M1 },
-	/* sdmmc2_dat5         */ /* internal FLASH */
-	{ GPMC_AD5            ,                               IEN | PTU | M1 },
-	/* sdmmc2_dat6         */ /* internal FLASH */
-	{ GPMC_AD6            ,                               IEN | PTU | M1 },
-	/* sdmmc2_dat7         */ /* internal FLASH */
-	{ GPMC_AD7            ,                               IEN | PTU | M1 },
-	/* gpio_32             */
-	{ GPMC_AD8            ,                               IEN | PTD | M3 },
-	/* gpmc_ad9            */
-	{ GPMC_AD9            ,                               IEN | PTU | M0 },
-	/* gpio_34             */ /* 1v8_pwron */
-	{ GPMC_AD10           ,                               IEN | PTU | M3 },
-	/* gpio_35             */ /* vcc_pwron */
-	{ GPMC_AD11           ,                               IEN | PTU | M3 },
-	/* gpio_36             */ /* 5v_pwron */
-	{ GPMC_AD12           ,                               IEN       | M3 },
-	/* gpio_37             */ /* hdmi_pwr */
-	{ GPMC_AD13           ,                               IEN       | M3 },
-	/* gpio_38             */ /* lcd_pwon */
-	{ GPMC_AD14           ,                               IEN       | M3 },
-	/* gpio_39             */ /* lvds_en */
-	{ GPMC_AD15           ,                               IEN       | M3 },
-	/* gpio_40             */ /* 3g_enable */
-	{ GPMC_A16            ,                               IEN       | M3 },
-	/* gpio_41             */ /* gps_enable */
-	{ GPMC_A17            ,                               IEN       | M3 },
-	/* gpio_42             */ /* ehci_enable */
-	{ GPMC_A18            ,                               IEN       | M3 },
-	/* gpio_43             */ /* volume up */
-	{ GPMC_A19            ,                               IEN       | M3 },
-	/* gpio_44             */ /* volume down */
-	{ GPMC_A20            ,                               IEN       | M3 },
-	/* gpio_45             */ /* accel_int1 */
-	{ GPMC_A21            ,                               IEN | PTU | M3 },
-	/* kpd_col6            */
-	{ GPMC_A22            ,                               IEN | PTD | M1 },
-	/* kpd_col7            */
-	{ GPMC_A23            ,                               IEN | PTD | M1 },
-	/* gpio_48             */ /* vbus_detect */
-	{ GPMC_A24            ,                               IEN       | M3 },
-	/* gpio_49             */ /* id */
-	{ GPMC_A25            ,                               IEN | PTU | M3 },
-	/* gpmc_ncs0           */
-	{ GPMC_NCS0           ,                               IEN | PTU | M0 },
-	/* gpio_51             */ /* compass_data_ready */
-	{ GPMC_NCS1           ,                               IEN       | M3 },
-	/* safe_mode           */
-	{ GPMC_NCS2           ,                               IEN | PTU | M7 },
-	/* gpio_53             */ /* lcd_rst */
-	{ GPMC_NCS3           ,                               IEN       | M3 },
-	/* gpmc_nwp            */
-	{ GPMC_NWP            ,                               IEN | PTD | M0 },
-	/* gpmc_clk            */
-	{ GPMC_CLK            ,                               IEN | PTD | M0 },
-	/* gpmc_nadv_ale       */
-	{ GPMC_NADV_ALE       ,                               IEN | PTD | M0 },
-	/* sdmmc2_clk          */ /* internal FLASH */
-	{ GPMC_NOE            ,                               IEN | PTU | M1 },
-	/* sdmmc2_cmd          */ /* internal FLASH */
-	{ GPMC_NWE            ,                               IEN | PTU | M1 },
-	/* gpmc_nbe0_cle       */
-	{ GPMC_NBE0_CLE       ,                               IEN | PTD | M0 },
-	/* safe_mode           */
-	{ GPMC_NBE1           ,                               IEN | PTD | M7 },
-	/* gpmc_wait0          */
-	{ GPMC_WAIT0          ,                               IEN | PTU | M0 },
-	/* gpio_62             */ /* camera_reset */
-	{ GPMC_WAIT1          ,                               IEN       | M3 },
-	/* safe_mode           */
-	{ GPMC_WAIT2          ,                               IEN | PTD | M7 },
-	/* gpio_101            */ /* lcd_stdby */
-	{ GPMC_NCS4           ,                                           M3 },
-	/* gpio_102            */ /* wifi_irq */
-	{ GPMC_NCS5           ,                               IEN       | M3 },
-	/* gpio_103            */ /* wifi_power */
-	{ GPMC_NCS6           ,                                           M3 },
-	/* gpio_104            */ /* bt_power */
-	{ GPMC_NCS7           ,                               IEN       | M3 },
-	/* gpio_63             */ /* hdmi_hpd ?? */
-	{ GPIO63              ,                               IEN | PTD | M3 },
-	/*                     */
-	{ GPIO64              ,                               IEN       | M0 },
-	/*                     */
-	{ GPIO65              ,                               IEN       | M0 },
-	/*                     */
-	{ GPIO66              ,                               IEN       | M0 },
-	/* csi21_dx0           */
-	{ CSI21_DX0           ,                               IEN       | M0 },
-	/* csi21_dy0           */
-	{ CSI21_DY0           ,                               IEN       | M0 },
-	/* csi21_dx1           */
-	{ CSI21_DX1           ,                               IEN       | M0 },
-	/* csi21_dy1           */
-	{ CSI21_DY1           ,                               IEN       | M0 },
-	/* safe_mode           */
-	{ CSI21_DX2           ,                               IEN | PTD | M7 },
-	/* safe_mode           */
-	{ CSI21_DY2           ,                               IEN | PTD | M7 },
-	/* safe_mode           */
-	{ CSI21_DX3           ,                               IEN | PTD | M7 },
-	/* safe_mode           */
-	{ CSI21_DY3           ,                               IEN | PTD | M7 },
-	/* safe_mode           */
-	{ CSI21_DX4           ,                               IEN | PTD | M7 },
-	/* safe_mode           */
-	{ CSI21_DY4           ,                               IEN | PTD | M7 },
-	/* safe_mode           */
-	{ CSI22_DX0           ,                               IEN | PTD | M7 },
-	/* safe_mode           */
-	{ CSI22_DY0           ,                               IEN | PTD | M7 },
-	/* safe_mode           */
-	{ CSI22_DX1           ,                               IEN | PTD | M7 },
-	/* safe_mode           */
-	{ CSI22_DY1           ,                               IEN | PTD | M7 },
-	/* cam_shutter         */
-	{ CAM_SHUTTER         ,                                     PTD | M0 },
-	/* cam_strobe          */
-	{ CAM_STROBE          ,                                     PTD | M0 },
-	/* gpio_83             */
-	{ CAM_GLOBALRESET     ,                                     PTD | M3 },
-	/* usbb1_ulpiphy_clk   */
-	{ USBB1_ULPITLL_CLK   ,                               IEN | PTD | M4 },
-	/* usbb1_ulpiphy_stp   */
-	{ USBB1_ULPITLL_STP   ,                                           M4 },
-	/* usbb1_ulpiphy_dir   */
-	{ USBB1_ULPITLL_DIR   ,                               IEN | PTD | M4 },
-	/* usbb1_ulpiphy_nxt   */
-	{ USBB1_ULPITLL_NXT   ,                               IEN | PTD | M4 },
-	/* usbb1_ulpiphy_dat0  */
-	{ USBB1_ULPITLL_DAT0  , WAKEUP_EN                   | IEN | PTD | M4 },
-	/* usbb1_ulpiphy_dat1  */
-	{ USBB1_ULPITLL_DAT1  ,                               IEN | PTD | M4 },
-	/* usbb1_ulpiphy_dat2  */
-	{ USBB1_ULPITLL_DAT2  ,                               IEN | PTD | M4 },
-	/* usbb1_ulpiphy_dat3  */
-	{ USBB1_ULPITLL_DAT3  ,                               IEN | PTD | M4 },
-	/* usbb1_ulpiphy_dat4  */
-	{ USBB1_ULPITLL_DAT4  ,                               IEN | PTD | M4 },
-	/* usbb1_ulpiphy_dat5  */
-	{ USBB1_ULPITLL_DAT5  ,                               IEN | PTD | M4 },
-	/* usbb1_ulpiphy_dat6  */
-	{ USBB1_ULPITLL_DAT6  ,                               IEN | PTD | M4 },
-	/* usbb1_ulpiphy_dat7  */
-	{ USBB1_ULPITLL_DAT7  ,                               IEN | PTD | M4 },
-	/* usbb1_hsic_data     */
-	{ USBB1_HSIC_DATA     ,                                           M0 },
-	/* usbb1_hsic_strobe   */
-	{ USBB1_HSIC_STROBE   ,                                           M0 },
-	/* usbc1_icusb_dp      */
-	{ USBC1_ICUSB_DP      ,                                           M0 },
-	/* usbc1_icusb_dm      */
-	{ USBC1_ICUSB_DM      ,                                           M0 },
-	/* sdmmc1_clk          */ /* SD card */
-	{ SDMMC1_CLK          ,                                     PTU | M0 },
-	/* sdmmc1_cmd          */ /* SD card */
-	{ SDMMC1_CMD          ,                               IEN | PTU | M0 },
-	/* sdmmc1_dat0         */ /* SD card */
-	{ SDMMC1_DAT0         ,                               IEN | PTU | M0 },
-	/* sdmmc1_dat1         */ /* SD card */
-	{ SDMMC1_DAT1         ,                               IEN | PTU | M0 },
-	/* sdmmc1_dat2         */ /* SD card */
-	{ SDMMC1_DAT2         ,                               IEN | PTU | M0 },
-	/* sdmmc1_dat3         */ /* SD card */
-	{ SDMMC1_DAT3         ,                               IEN | PTU | M0 },
-	/* sdmmc1_dat4         */ /* SD card */
-	{ SDMMC1_DAT4         ,                               IEN | PTU | M0 },
-	/* sdmmc1_dat5         */ /* SD card */
-	{ SDMMC1_DAT5         ,                               IEN | PTU | M0 },
-	/* sdmmc1_dat6         */ /* SD card */
-	{ SDMMC1_DAT6         ,                               IEN | PTU | M0 },
-	/* sdmmc1_dat7         */ /* SD card */
-	{ SDMMC1_DAT7         ,                               IEN | PTU | M0 },
-	/* gpio_110            */ /* tsp_pwr_gpio */
-	{ ABE_MCBSP2_CLKX     ,                                           M3 },
-	/* gpio_111            */ /* vbus_musb_pwron */
-	{ ABE_MCBSP2_DR       ,                               IEN       | M3 },
-	/* gpio_112            */ /* tsp_irq_gpio */
-	{ ABE_MCBSP2_DX       , WAKEUP_EN                   | IEN | PTU | M3 },
-	/* gpio_113            */ /* vbus_flag */
-	{ ABE_MCBSP2_FSX      ,                               IEN | PTU | M3 },
-	/* safe_mode           */
-	{ ABE_MCBSP1_CLKX     ,                               IEN | PTD | M7 },
-	/* safe_mode           */
-	{ ABE_MCBSP1_DR       ,                               IEN | PTD | M7 },
-	/* abe_mcbsp1_dx       */
-	{ ABE_MCBSP1_DX       ,                                           M0 },
-	/* abe_mcbsp1_fsx      */
-	{ ABE_MCBSP1_FSX      ,                               IEN       | M0 },
-	/* abe_pdm_ul_data     */
-	{ ABE_PDM_UL_DATA     ,                               IEN       | M0 },
-	/* abe_pdm_dl_data     */
-	{ ABE_PDM_DL_DATA     ,                                           M0 },
-	/* abe_pdm_frame       */
-	{ ABE_PDM_FRAME       ,                               IEN       | M0 },
-	/* abe_pdm_lb_clk      */
-	{ ABE_PDM_LB_CLK      ,                               IEN       | M0 },
-	/* abe_clks            */
-	{ ABE_CLKS            ,                               IEN       | M0 },
-	/* safe_mode           */
-	{ ABE_DMIC_CLK1       ,                               IEN | PTD | M7 },
-	/* safe_mode           */
-	{ ABE_DMIC_DIN1       ,                               IEN | PTD | M7 },
-	/* safe_mode           */
-	{ ABE_DMIC_DIN2       ,                               IEN | PTD | M7 },
-	/* safe_mode           */ /* bkl_en on gpio_122 ?? */
-	{ ABE_DMIC_DIN3       ,                               IEN | PTD | M7 },
-	/* uart2_cts           */
-	{ UART2_CTS           , WAKEUP_EN | OFF_PU | OFF_IN             | M0 },
-	/* safe_mode           */
-	{ UART2_RTS           ,             OFF_PU | OFF_IN             | M7 },
-	/* uart2_rx            */
-	{ UART2_RX            ,                               IEN | PTU | M0 },
-	/* uart2_tx            */
-	{ UART2_TX            ,                                           M0 },
-	/* gpio_127            */ /* audio_power_on */
-	{ HDQ_SIO             ,                                           M3 },
-	/* i2c1_scl            */
-	{ I2C1_SCL            ,                               IEN       | M0 },
-	/* i2c1_sda            */
-	{ I2C1_SDA            ,                               IEN       | M0 },
-	/* i2c2_scl            */
-	{ I2C2_SCL            ,                               IEN       | M0 },
-	/* i2c2_sda            */
-	{ I2C2_SDA            ,                               IEN       | M0 },
-	/* i2c3_scl            */
-	{ I2C3_SCL            ,                               IEN       | M0 },
-	/* i2c3_sda            */
-	{ I2C3_SDA            ,                               IEN       | M0 },
-	/* i2c4_scl            */
-	{ I2C4_SCL            ,                               IEN       | M0 },
-	/* i2c4_sda            */
-	{ I2C4_SDA            ,                               IEN       | M0 },
-	/* mcspi1_clk          */
-	{ MCSPI1_CLK          ,                               IEN       | M0 },
-	/* mcspi1_somi         */
-	{ MCSPI1_SOMI         ,                               IEN       | M0 },
-	/* mcspi1_simo         */
-	{ MCSPI1_SIMO         ,                               IEN       | M0 },
-	/* mcspi1_cs0          */
-	{ MCSPI1_CS0          ,                               IEN | PTD | M0 },
-	/* uart1_rx            */
-	{ MCSPI1_CS1          , WAKEUP_EN                   | IEN       | M1 },
-	/* gpio_139            */
-	{ MCSPI1_CS2          ,                                           M3 },
-	/* safe_mode           */
-	{ MCSPI1_CS3          ,                               IEN | PTU | M7 },
-	/* uart1_tx            */
-	{ UART3_CTS_RCTX      ,                                           M1 },
-	/* uart3_rts_sd        */
-	{ UART3_RTS_SD        ,                                           M0 },
-	/* safe_mode           */
-	{ UART3_RX_IRRX       ,                               IEN | PTU | M7 },
-	/* safe_mode           */
-	{ UART3_TX_IRTX       ,                               IEN | PTD | M7 },
-	/* sdmmc5_clk          */
-	{ SDMMC5_CLK          ,                                     PTU | M0 },
-	/* sdmmc5_cmd          */
-	{ SDMMC5_CMD          ,                               IEN | PTU | M0 },
-	/* sdmmc5_dat0         */
-	{ SDMMC5_DAT0         ,                               IEN | PTU | M0 },
-	/* sdmmc5_dat1         */
-	{ SDMMC5_DAT1         ,                               IEN | PTU | M0 },
-	/* sdmmc5_dat2         */
-	{ SDMMC5_DAT2         ,                               IEN | PTU | M0 },
-	/* sdmmc5_dat3         */
-	{ SDMMC5_DAT3         ,                               IEN | PTU | M0 },
-	/* sdmmc4_clk          */
-	{ MCSPI4_CLK          ,                               IEN | PTU | M1 },
-	/* sdmmc4_cmd          */
-	{ MCSPI4_SIMO         ,                               IEN | PTU | M1 },
-	/* sdmmc4_dat0         */
-	{ MCSPI4_SOMI         ,                               IEN | PTU | M1 },
-	/* sdmmc4_dat3         */
-	{ MCSPI4_CS0          ,                               IEN | PTU | M1 },
-	/* sdmmc4_dat2         */
-	{ UART4_RX            ,                               IEN | PTU | M1 },
-	/* sdmmc4_dat1         */
-	{ UART4_TX            ,                               IEN | PTU | M1 },
-	/* gpio_157            */
-	{ USBB2_ULPITLL_CLK   ,                                           M3 },
-	/* dispc2_data23       */
-	{ USBB2_ULPITLL_STP   ,                                           M5 },
-	/* dispc2_data22       */
-	{ USBB2_ULPITLL_DIR   ,                                           M5 },
-	/* dispc2_data21       */
-	{ USBB2_ULPITLL_NXT   ,                                           M5 },
-	/* dispc2_data20       */
-	{ USBB2_ULPITLL_DAT0  ,                                           M5 },
-	/* dispc2_data19       */
-	{ USBB2_ULPITLL_DAT1  ,                                           M5 },
-	/* dispc2_data18       */
-	{ USBB2_ULPITLL_DAT2  ,                                           M5 },
-	/* dispc2_data15       */
-	{ USBB2_ULPITLL_DAT3  ,                                           M5 },
-	/* dispc2_data14       */
-	{ USBB2_ULPITLL_DAT4  ,                                           M5 },
-	/* dispc2_data13       */
-	{ USBB2_ULPITLL_DAT5  ,                                           M5 },
-	/* dispc2_data12       */
-	{ USBB2_ULPITLL_DAT6  ,                                           M5 },
-	/* dispc2_data11       */
-	{ USBB2_ULPITLL_DAT7  ,                                           M5 },
-	/* gpio_169            */
-	{ USBB2_HSIC_DATA     ,                                           M3 },
-	/* gpio_170            */
-	{ USBB2_HSIC_STROBE   ,                                           M3 },
-	/* kpd_col0            */
-	{ KPD_COL3            ,                               IEN | PTD | M1 },
-	/* kpd_col1            */
-	{ KPD_COL4            ,                               IEN | PTD | M1 },
-	/* kpd_col2            */
-	{ KPD_COL5            ,                               IEN | PTD | M1 },
-	/* gpio_174            */ /* accel_int2 */
-	{ KPD_COL0            ,                               IEN | PTU | M3 },
-	/* gpio_0              */ /* tsp_shtdwn_gpio */
-	{ KPD_COL1            ,                               IEN | PTD | M3 },
-	/* gpio_1              */
-	{ KPD_COL2            ,                               IEN | PTD | M3 },
-	/* kpd_row0            */
-	{ KPD_ROW3            ,                               IEN | PTD | M1 },
-	/* kpd_row1            */
-	{ KPD_ROW4            ,                               IEN | PTD | M1 },
-	/* kpd_row2            */
-	{ KPD_ROW5            ,                               IEN | PTD | M1 },
-	/* kpd_row3            */
-	{ KPD_ROW0            ,                               IEN | PTD | M1 },
-	/* kpd_row4            */
-	{ KPD_ROW1            ,                               IEN | PTD | M1 },
-	/* kpd_row5            */
-	{ KPD_ROW2            ,                               IEN | PTD | M1 },
-	/* usba0_otg_ce        */
-	{ USBA0_OTG_CE        ,                                     PTU | M0 },
-	/* usba0_otg_dp        */
-	{ USBA0_OTG_DP        ,                                           M0 },
-	/* usba0_otg_dm        */
-	{ USBA0_OTG_DM        ,                                           M0 },
-	/* safe_mode           */
-	{ FREF_CLK1_OUT       ,                               IEN | PTD | M7 },
-	/* fref_clk2_out       */
-	{ FREF_CLK2_OUT       ,                                           M0 },
-	/* sys_nirq1           */
-	{ SYS_NIRQ1           , WAKEUP_EN                   | IEN | PTU | M0 },
-	/* sys_nirq2           */ /* audio_irq */
-	{ SYS_NIRQ2           ,                               IEN | PTU | M0 },
-	/* sys_boot0           */
-	{ SYS_BOOT0           ,                               IEN | PTD | M0 },
-	/* sys_boot1           */
-	{ SYS_BOOT1           ,                               IEN | PTD | M0 },
-	/* sys_boot2           */
-	{ SYS_BOOT2           ,                               IEN | PTD | M0 },
-	/* sys_boot3           */
-	{ SYS_BOOT3           ,                               IEN | PTD | M0 },
-	/* sys_boot4           */
-	{ SYS_BOOT4           ,                               IEN | PTD | M0 },
-	/* sys_boot5           */
-	{ SYS_BOOT5           ,                               IEN | PTD | M0 },
-	/* dpm_emu0            */
-	{ DPM_EMU0            ,                               IEN | PTU | M0 },
-	/* gpio_12             */ /* lcd_avdd_en */
-	{ DPM_EMU1            ,                               IEN       | M3 },
-	/* safe_mode           */
-	{ DPM_EMU2            ,                               IEN | PTD | M7 },
-	/* dispc2_data10       */
-	{ DPM_EMU3            ,                                           M5 },
-	/* dispc2_data9        */
-	{ DPM_EMU4            ,                                           M5 },
-	/* dispc2_data16       */
-	{ DPM_EMU5            ,                                           M5 },
-	/* dispc2_data17       */
-	{ DPM_EMU6            ,                                           M5 },
-	/* dispc2_hsync        */
-	{ DPM_EMU7            ,                                           M5 },
-	/* dispc2_pclk         */
-	{ DPM_EMU8            ,                                           M5 },
-	/* dispc2_vsync        */
-	{ DPM_EMU9            ,                                           M5 },
-	/* dispc2_de           */
-	{ DPM_EMU10           ,                                           M5 },
-	/* dispc2_data8        */
-	{ DPM_EMU11           ,                                           M5 },
-	/* dispc2_data7        */
-	{ DPM_EMU12           ,                                           M5 },
-	/* dispc2_data6        */
-	{ DPM_EMU13           ,                                           M5 },
-	/* dispc2_data5        */
-	{ DPM_EMU14           ,                                           M5 },
-	/* dispc2_data4        */
-	{ DPM_EMU15           ,                                           M5 },
-	/* dispc2_data3        */
-	{ DPM_EMU16           ,                                           M5 },
-	/* dispc2_data2        */
-	{ DPM_EMU17           ,                                           M5 },
-	/* dispc2_data1        */
-	{ DPM_EMU18           ,                                           M5 },
-	/* dispc2_data0        */
-	{ DPM_EMU19           ,                                           M5 },
-	/* safe_mode           */
-	{ CSI22_DX2           ,                               IEN | PTD | M7 },
-	/* safe_mode           */
-	{ CSI22_DY2           ,                               IEN | PTD | M7 },
+	{ GPMC_AD0            , IEN | PTU | M1 },
+	{ GPMC_AD1            , IEN | PTU | M1 },
+	{ GPMC_AD2            , IEN | PTU | M1 },
+	{ GPMC_AD3            , IEN | PTU | M1 },
+	{ GPMC_AD4            , IEN | PTU | M1 },
+	{ GPMC_AD5            , IEN | PTU | M1 },
+	{ GPMC_AD6            , IEN | PTU | M1 },
+	{ GPMC_AD7            , IEN | PTU | M1 },
+	{ GPMC_AD8            , IEN | PTD | M3 },
+	{ GPMC_AD9            , IEN | PTU | M0 },
+	{ GPMC_AD10           , IEN | PTU | M0 },
+	{ GPMC_AD11           , IEN | PTU | M0 },
+	{ GPMC_AD12           , IEN | PTD | M0 },
+	{ GPMC_AD13           ,       PTD | M3 },
+	{ GPMC_AD14           ,       PTD | M3 },
+	{ GPMC_AD15           ,       PTD | M3 },
+	{ GPMC_A16            , IEN | PTD | M7 },
+	{ GPMC_A17            , IEN | PTD | M7 },
+	{ GPMC_A18            , IEN | PTD | M1 },
+	{ GPMC_A19            , IEN | PTU | M3 },
+	{ GPMC_A20            , IEN | PTU | M3 },
+	{ GPMC_A21            , IEN | PTD | M7 },
+	{ GPMC_A22            , IEN | PTD | M1 },
+	{ GPMC_A23            , IEN | PTD | M1 },
+	{ GPMC_A24            , IEN | PTD | M3 },
+	{ GPMC_A25            , IEN | PTU | M3 },
+	{ GPMC_NCS0           , IEN | PTU | M0 },
+	{ GPMC_NCS1           , IEN | PTU | M7 },
+	{ GPMC_NCS2           , IEN | PTU | M7 },
+	{ GPMC_NCS3           , IEN | PTU | M7 },
+	{ GPMC_NWP            , IEN | PTD | M0 },
+	{ GPMC_CLK            , IEN | PTD | M0 },
+	{ GPMC_NADV_ALE       , IEN | PTD | M0 },
+	{ GPMC_NOE            , IEN | PTU | M1 },
+	{ GPMC_NWE            , IEN | PTU | M1 },
+	{ GPMC_NBE0_CLE       , IEN | PTD | M0 },
+	{ GPMC_NBE1           , IEN | PTD | M7 },
+	{ GPMC_WAIT0          , IEN | PTU | M0 },
+	{ GPMC_WAIT1          , IEN | PTU | M7 },
+	{ GPMC_WAIT2          , IEN | PTD | M7 },
+	{ GPMC_NCS4           , IEN | PTD | M7 },
+	{ GPMC_NCS5           , IEN | PTD | M7 },
+	{ GPMC_NCS6           , IEN | PTD | M7 },
+	{ GPMC_NCS7           , IEN | PTD | M7 },
+	{ GPIO63              ,             M0 },
+	{ GPIO64              ,             M0 },
+	{ GPIO65              ,             M0 },
+	{ GPIO66              , IEN       | M0 },
+	{ CSI21_DX0           , IEN | PTD | M7 },
+	{ CSI21_DY0           , IEN | PTD | M7 },
+	{ CSI21_DX1           , IEN | PTD | M7 },
+	{ CSI21_DY1           , IEN | PTD | M7 },
+	{ CSI21_DX2           , IEN | PTD | M7 },
+	{ CSI21_DY2           , IEN | PTD | M7 },
+	{ CSI21_DX3           , IEN | PTD | M7 },
+	{ CSI21_DY3           , IEN | PTD | M7 },
+	{ CSI21_DX4           , IEN | PTD | M7 },
+	{ CSI21_DY4           , IEN | PTD | M7 },
+	{ CSI22_DX0           , IEN | PTD | M7 },
+	{ CSI22_DY0           , IEN | PTD | M7 },
+	{ CSI22_DX1           , IEN | PTD | M7 },
+	{ CSI22_DY1           , IEN | PTD | M7 },
+	{ CAM_SHUTTER         ,       PTD | M0 },
+	{ CAM_STROBE          ,       PTD | M0 },
+	{ CAM_GLOBALRESET     ,       PTD | M3 },
+	{ USBB1_ULPITLL_CLK   , IEN | PTD | M0 },
+	{ USBB1_ULPITLL_STP   ,       PTU | M0 },
+	{ USBB1_ULPITLL_DIR   , IEN | PTD | M0 },
+	{ USBB1_ULPITLL_NXT   , IEN | PTD | M0 },
+	{ USBB1_ULPITLL_DAT0  , IEN | PTD | M0 },
+	{ USBB1_ULPITLL_DAT1  , IEN | PTD | M0 },
+	{ USBB1_ULPITLL_DAT2  , IEN | PTD | M0 },
+	{ USBB1_ULPITLL_DAT3  , IEN | PTD | M0 },
+	{ USBB1_ULPITLL_DAT4  , IEN | PTD | M0 },
+	{ USBB1_ULPITLL_DAT5  , IEN | PTD | M0 },
+	{ USBB1_ULPITLL_DAT6  , IEN | PTD | M0 },
+	{ USBB1_ULPITLL_DAT7  , IEN | PTD | M0 },
+	{ USBB1_HSIC_DATA     ,             M0 },
+	{ USBB1_HSIC_STROBE   ,             M0 },
+	{ USBC1_ICUSB_DP      ,             M0 },
+	{ USBC1_ICUSB_DM      ,             M0 },
+	{ SDMMC1_CLK          ,       PTU | M0 },
+	{ SDMMC1_CMD          , IEN | PTU | M0 },
+	{ SDMMC1_DAT0         , IEN | PTU | M0 },
+	{ SDMMC1_DAT1         , IEN | PTU | M0 },
+	{ SDMMC1_DAT2         , IEN | PTU | M0 },
+	{ SDMMC1_DAT3         , IEN | PTU | M0 },
+	{ SDMMC1_DAT4         , IEN | PTU | M0 },
+	{ SDMMC1_DAT5         , IEN | PTU | M0 },
+	{ SDMMC1_DAT6         , IEN | PTU | M0 },
+	{ SDMMC1_DAT7         , IEN | PTU | M0 },
+	{ ABE_MCBSP2_CLKX     , IEN       | M0 },
+	{ ABE_MCBSP2_DR       , IEN       | M0 },
+	{ ABE_MCBSP2_DX       ,             M0 },
+	{ ABE_MCBSP2_FSX      , IEN       | M0 },
+	{ ABE_MCBSP1_CLKX     , IEN | PTD | M7 },
+	{ ABE_MCBSP1_DR       , IEN | PTD | M7 },
+	{ ABE_MCBSP1_DX       ,             M0 },
+	{ ABE_MCBSP1_FSX      , IEN       | M0 },
+	{ ABE_PDM_UL_DATA     , IEN | PTD | M7 },
+	{ ABE_PDM_DL_DATA     , IEN | PTD | M7 },
+	{ ABE_PDM_FRAME       , IEN | PTD | M7 },
+	{ ABE_PDM_LB_CLK      , IEN | PTD | M7 },
+	{ ABE_CLKS            , IEN | PTD | M7 },
+	{ ABE_DMIC_CLK1       , IEN | PTD | M7 },
+	{ ABE_DMIC_DIN1       , IEN | PTD | M7 },
+	{ ABE_DMIC_DIN2       , IEN | PTD | M7 },
+	{ ABE_DMIC_DIN3       , IEN | PTD | M7 },
+	{ UART2_CTS           , IEN | PTU | M0 },
+	{ UART2_RTS           ,             M0 },
+	{ UART2_RX            , IEN       | M0 },
+	{ UART2_TX            ,             M0 },
+	{ HDQ_SIO             , IEN       | M7 },
+	{ I2C1_SCL            , IEN       | M0 },
+	{ I2C1_SDA            , IEN       | M0 },
+	{ I2C2_SCL            , IEN       | M0 },
+	{ I2C2_SDA            , IEN       | M0 },
+	{ I2C3_SCL            , IEN       | M0 },
+	{ I2C3_SDA            , IEN       | M0 },
+	{ I2C4_SCL            , IEN       | M0 },
+	{ I2C4_SDA            , IEN       | M0 },
+	{ MCSPI1_CLK          , IEN       | M0 },
+	{ MCSPI1_SOMI         , IEN       | M0 },
+	{ MCSPI1_SIMO         , IEN       | M0 },
+	{ MCSPI1_CS0          , IEN | PTD | M0 },
+	{ MCSPI1_CS1          , IEN | PTU | M1 },
+	{ MCSPI1_CS2          ,             M3 },
+	{ MCSPI1_CS3          , IEN | PTU | M7 },
+	{ UART3_CTS_RCTX      ,             M1 },
+	{ UART3_RTS_SD        ,             M0 },
+	{ UART3_RX_IRRX       , IEN | PTU | M0 },
+	{ UART3_TX_IRTX       ,             M0 },
+	{ SDMMC5_CLK          ,       PTU | M0 },
+	{ SDMMC5_CMD          , IEN | PTU | M0 },
+	{ SDMMC5_DAT0         , IEN | PTU | M0 },
+	{ SDMMC5_DAT1         , IEN | PTU | M0 },
+	{ SDMMC5_DAT2         , IEN | PTU | M0 },
+	{ SDMMC5_DAT3         , IEN | PTU | M0 },
+	{ MCSPI4_CLK          , IEN       | M0 },
+	{ MCSPI4_SIMO         , IEN       | M0 },
+	{ MCSPI4_SOMI         , IEN       | M0 },
+	{ MCSPI4_CS0          , IEN | PTD | M0 },
+	{ UART4_RX            , IEN       | M0 },
+	{ UART4_TX            ,             M0 },
+	{ USBB2_ULPITLL_CLK   ,             M3 },
+	{ USBB2_ULPITLL_STP   ,             M5 },
+	{ USBB2_ULPITLL_DIR   ,             M5 },
+	{ USBB2_ULPITLL_NXT   ,             M5 },
+	{ USBB2_ULPITLL_DAT0  ,             M5 },
+	{ USBB2_ULPITLL_DAT1  ,             M5 },
+	{ USBB2_ULPITLL_DAT2  ,             M5 },
+	{ USBB2_ULPITLL_DAT3  ,             M5 },
+	{ USBB2_ULPITLL_DAT4  ,             M5 },
+	{ USBB2_ULPITLL_DAT5  ,             M5 },
+	{ USBB2_ULPITLL_DAT6  ,             M5 },
+	{ USBB2_ULPITLL_DAT7  ,             M5 },
+	{ USBB2_HSIC_DATA     ,             M3 },
+	{ USBB2_HSIC_STROBE   ,             M3 },
+	{ KPD_COL3            , IEN | PTD | M1 },
+	{ KPD_COL4            , IEN | PTD | M1 },
+	{ KPD_COL5            , IEN | PTD | M1 },
+	{ KPD_COL0            , IEN | PTD | M1 },
+	{ KPD_COL1            , IEN | PTD | M3 },
+	{ KPD_COL2            , IEN | PTD | M3 },
+	{ KPD_ROW3            , IEN | PTD | M1 },
+	{ KPD_ROW4            , IEN | PTD | M1 },
+	{ KPD_ROW5            , IEN | PTD | M1 },
+	{ KPD_ROW0            , IEN | PTD | M1 },
+	{ KPD_ROW1            , IEN | PTD | M1 },
+	{ KPD_ROW2            , IEN | PTD | M1 },
+	{ USBA0_OTG_CE        ,       PTU | M0 },
+	{ USBA0_OTG_DP        ,             M0 },
+	{ USBA0_OTG_DM        ,             M0 },
+	{ FREF_CLK1_OUT       , IEN | PTD | M7 },
+	{ FREF_CLK2_OUT       , IEN | PTD | M7 },
+	{ SYS_NIRQ1           , IEN | PTU | M0 },
+	{ SYS_NIRQ2           , IEN | PTU | M0 },
+	{ SYS_BOOT0           , IEN | PTD | M0 },
+	{ SYS_BOOT1           , IEN | PTD | M0 },
+	{ SYS_BOOT2           , IEN | PTD | M0 },
+	{ SYS_BOOT3           , IEN | PTD | M0 },
+	{ SYS_BOOT4           , IEN | PTD | M0 },
+	{ SYS_BOOT5           , IEN | PTD | M0 },
+	{ DPM_EMU0            , IEN | PTU | M0 },
+	{ DPM_EMU1            , IEN | PTU | M0 },
+	{ DPM_EMU2            , IEN | PTD | M7 },
+	{ DPM_EMU3            ,             M5 },
+	{ DPM_EMU4            ,             M5 },
+	{ DPM_EMU5            ,             M5 },
+	{ DPM_EMU6            ,             M5 },
+	{ DPM_EMU7            ,             M5 },
+	{ DPM_EMU8            ,             M5 },
+	{ DPM_EMU9            ,             M5 },
+	{ DPM_EMU10           ,             M5 },
+	{ DPM_EMU11           ,             M5 },
+	{ DPM_EMU12           ,             M5 },
+	{ DPM_EMU13           ,             M5 },
+	{ DPM_EMU14           ,             M5 },
+	{ DPM_EMU15           ,             M5 },
+	{ DPM_EMU16           ,             M5 },
+	{ DPM_EMU17           ,             M5 },
+	{ DPM_EMU18           ,             M5 },
+	{ DPM_EMU19           ,             M5 },
+	{ CSI22_DX2           , IEN | PTD | M7 },
+	{ CSI22_DY2           , IEN | PTD | M7 },
 };
 
 static const struct pad_conf_entry wkup_padconf_array[] = {
-	/* sr_scl              */
-	{ SR_SCL               , IEN            },
-	/* sr_sda              */
-	{ SR_SDA               , IEN            },
-	/* fref_clk0_out       */
-	{ FREF_CLK0_OUT        ,             M0 },
-	/* gpio_wk30           */
-	{ FREF_CLK3_REQ        ,             M3 },
-	/* gpio_wk7            */ /* tps62361_vsel0 */
-	{ FREF_CLK4_REQ        , IEN | PTU | M3 },
+	{ GPIO_WK0            , IEN | PTD | M7 },
+	{ GPIO_WK1            , IEN | PTD | M7 },
+	{ GPIO_WK2            , IEN | PTD | M7 },
+	{ GPIO_WK3            , IEN | PTU | M7 },
+	{ GPIO_WK4            , IEN | PTD | M7 },
+	{ SR_SCL              , IEN       | M0 },
+	{ SR_SDA              , IEN       | M0 },
+	{ FREF_XTAL_IN        ,             M0 },
+	{ FREF_SLICER_IN      ,             M0 },
+	{ FREF_CLK_IOREQ      , IEN | PTD | M0 },
+	{ FREF_CLK0_OUT       , IEN | PTD | M7 },
+	{ FREF_CLK3_REQ       , IEN | PTD | M7 },
+	{ FREF_CLK3_OUT       , IEN | PTD | M7 },
+	{ FREF_CLK4_REQ       , IEN | PTU | M3 },
+	{ FREF_CLK4_OUT       , IEN | PTD | M0 },
+	{ SYS_32K             , IEN       | M0 },
+	{ SYS_NRESPWRON       ,             M0 },
+	{ SYS_NRESWARM        ,             M0 },
+	{ SYS_PWR_REQ         , IEN | PTU | M0 },
+	{ SYS_PWRON_RESET_OUT , IEN | PTD | M0 },
+	{ SYS_BOOT6           , IEN       | M0 },
+	{ SYS_BOOT7           , IEN       | M0 },
+	{ JTAG_NTRST          , IEN | PTD | M0 },
+	{ JTAG_TCK            , IEN | PTD | M0 },
+	{ JTAG_RTCK           ,       PTD | M0 },
+	{ JTAG_TMS_TMSC       , IEN       | M0 },
+	{ JTAG_TDI            , IEN | PTU | M0 },
+	{ JTAG_TDO            , IEN | PTU | M0 },
 };
 
 void set_muxconf_regs(void){
@@ -452,7 +265,6 @@ void set_muxconf_regs(void){
 
 	/* gpio_wk7 is used for controlling TPS on 4460 */
 	if (omap4_revision() >= OMAP4460_ES1_0) {
-		writew(M3, OMAP44XX_CONTROL_PADCONF_WKUP + FREF_CLK4_REQ);
 		/* Enable GPIO-1 clocks before TPS initialization */
 		omap4_enable_gpio1_wup_clocks();
 	}
-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
