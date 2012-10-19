Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TPAT9-0006E2-CA
 for barebox@lists.infradead.org; Fri, 19 Oct 2012 11:10:25 +0000
Message-ID: <1350645021.3484.14.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Fri, 19 Oct 2012 13:10:21 +0200
In-Reply-To: <1349736924-24667-15-git-send-email-vicencb@gmail.com>
References: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
 <1349736924-24667-15-git-send-email-vicencb@gmail.com>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 14/14] Add support for Archos G9 tablet
To: Vicente <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

> diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
> new file mode 100644
> index 0000000..fa5be1d
> --- /dev/null
> +++ b/arch/arm/boards/archosg9/lowlevel.c
> @@ -0,0 +1,79 @@
> +/*
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <common.h>
> +#include <io.h>
> +#include <init.h>
> +#include <mach/omap4-mux.h>
> +#include <mach/omap4-silicon.h>
> +#include <mach/omap4-clock.h>
> +#include <mach/syslib.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/barebox-arm-head.h>
> +#include "mux.h"
> +
> +#define TPS62361_VSEL0_GPIO    7
> +
> +static const struct ddr_regs ddr_regs_400_mhz_2cs = {
> +	.tim1         = 0x10EB0662,
> +	.tim2         = 0x20370DD2,
> +	.tim3         = 0x00B1C33F,
> +	.phy_ctrl_1   = 0x849FF408,
> +	.ref_ctrl     = 0x00000618,
> +	.config_init  = 0x80000EB9,
> +	.config_final = 0x80001AB9,
> +	.zq_config    = 0xD00B3215,
> +	.mr1          = 0x83,
> +	.mr2          = 0x4
> +};
> +
> +static noinline void archosg9_init_lowlevel(void)
> +{
> +	struct dpll_param core = OMAP4_CORE_DPLL_PARAM_19M2_DDR400;
> +	struct dpll_param mpu = OMAP4_MPU_DPLL_PARAM_19M2_MPU600;
This if OPP100 for 4430, for 4460 OPP100 defines 700MHz.
> +	struct dpll_param iva = OMAP4_IVA_DPLL_PARAM_19M2;
> +	struct dpll_param per = OMAP4_PER_DPLL_PARAM_19M2;
> +	struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_19M2;
> +	struct dpll_param usb = OMAP4_USB_DPLL_PARAM_19M2;
> +
> +	writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
> +
> +	/* Configure all DPLL's at 100% OPP */
> +	omap4_configure_mpu_dpll(&mpu);
> +	omap4_configure_iva_dpll(&iva);
> +	omap4_configure_per_dpll(&per);
> +	omap4_configure_abe_dpll(&abe);
> +	omap4_configure_usb_dpll(&usb);
> +
> +	/* Enable all clocks */
> +	omap4_enable_all_clocks();
> +
> +	set_muxconf_regs();
> +
> +	omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
> +
> +	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
> +	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
According to TIs DM the sequence for going into a higher OPP is to first
raise the voltage. I saw this is also wrong on pandaboard. 
They also say rise core freq before mpu freq so the order should be
omap4_scale_vcores
omap4_ddr_init
omap4_configure_mpu_dpll

I'll fix and test the order on PCM049

Jan
> +	board_init_lowlevel_return();
> +}
> +
> +void __naked __bare_init reset(void)
> +{
> +	u32 r;
> +
> +	common_reset();
> +
> +	r = 0x4030D000;
> +	__asm__ __volatile__("mov sp, %0" : : "r"(r));
> +
> +	archosg9_init_lowlevel();
> +}
> diff --git a/arch/arm/boards/archosg9/mux.c b/arch/arm/boards/archosg9/mux.c
> new file mode 100644
> index 0000000..7ca5057
> --- /dev/null
> +++ b/arch/arm/boards/archosg9/mux.c
> @@ -0,0 +1,459 @@
> +/*
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +#include <mach/omap4-silicon.h>
> +#include <mach/omap4-mux.h>
> +#include <mach/omap4-clock.h>
> +#include "mux.h"
> +
> +static const struct pad_conf_entry core_padconf_array[] = {
> +	/* sdmmc2_dat0         */ /* internal FLASH */
> +	{ GPMC_AD0            ,                               IEN | PTU | M1 },
> +	/* sdmmc2_dat1         */ /* internal FLASH */
> +	{ GPMC_AD1            ,                               IEN | PTU | M1 },
> +	/* sdmmc2_dat2         */ /* internal FLASH */
> +	{ GPMC_AD2            ,                               IEN | PTU | M1 },
> +	/* sdmmc2_dat3         */ /* internal FLASH */
> +	{ GPMC_AD3            ,                               IEN | PTU | M1 },
> +	/* sdmmc2_dat4         */ /* internal FLASH */
> +	{ GPMC_AD4            ,                               IEN | PTU | M1 },
> +	/* sdmmc2_dat5         */ /* internal FLASH */
> +	{ GPMC_AD5            ,                               IEN | PTU | M1 },
> +	/* sdmmc2_dat6         */ /* internal FLASH */
> +	{ GPMC_AD6            ,                               IEN | PTU | M1 },
> +	/* sdmmc2_dat7         */ /* internal FLASH */
> +	{ GPMC_AD7            ,                               IEN | PTU | M1 },
> +	/* gpio_32             */
> +	{ GPMC_AD8            ,                               IEN | PTD | M3 },
> +	/* gpmc_ad9            */
> +	{ GPMC_AD9            ,                               IEN | PTU | M0 },
> +	/* gpio_34             */ /* 1v8_pwron */
> +	{ GPMC_AD10           ,                               IEN | PTU | M3 },
> +	/* gpio_35             */ /* vcc_pwron */
> +	{ GPMC_AD11           ,                               IEN | PTU | M3 },
> +	/* gpio_36             */ /* 5v_pwron */
> +	{ GPMC_AD12           ,                               IEN       | M3 },
> +	/* gpio_37             */ /* hdmi_pwr */
> +	{ GPMC_AD13           ,                               IEN       | M3 },
> +	/* gpio_38             */ /* lcd_pwon */
> +	{ GPMC_AD14           ,                               IEN       | M3 },
> +	/* gpio_39             */ /* lvds_en */
> +	{ GPMC_AD15           ,                               IEN       | M3 },
> +	/* gpio_40             */ /* 3g_enable */
> +	{ GPMC_A16            ,                               IEN       | M3 },
> +	/* gpio_41             */ /* gps_enable */
> +	{ GPMC_A17            ,                               IEN       | M3 },
> +	/* gpio_42             */ /* ehci_enable */
> +	{ GPMC_A18            ,                               IEN       | M3 },
> +	/* gpio_43             */ /* volume up */
> +	{ GPMC_A19            ,                               IEN       | M3 },
> +	/* gpio_44             */ /* volume down */
> +	{ GPMC_A20            ,                               IEN       | M3 },
> +	/* gpio_45             */ /* accel_int1 */
> +	{ GPMC_A21            ,                               IEN | PTU | M3 },
> +	/* kpd_col6            */
> +	{ GPMC_A22            ,                               IEN | PTD | M1 },
> +	/* kpd_col7            */
> +	{ GPMC_A23            ,                               IEN | PTD | M1 },
> +	/* gpio_48             */ /* vbus_detect */
> +	{ GPMC_A24            ,                               IEN       | M3 },
> +	/* gpio_49             */ /* id */
> +	{ GPMC_A25            ,                               IEN | PTU | M3 },
> +	/* gpmc_ncs0           */
> +	{ GPMC_NCS0           ,                               IEN | PTU | M0 },
> +	/* gpio_51             */ /* compass_data_ready */
> +	{ GPMC_NCS1           ,                               IEN       | M3 },
> +	/* safe_mode           */
> +	{ GPMC_NCS2           ,                               IEN | PTU | M7 },
> +	/* gpio_53             */ /* lcd_rst */
> +	{ GPMC_NCS3           ,                               IEN       | M3 },
> +	/* gpmc_nwp            */
> +	{ GPMC_NWP            ,                               IEN | PTD | M0 },
> +	/* gpmc_clk            */
> +	{ GPMC_CLK            ,                               IEN | PTD | M0 },
> +	/* gpmc_nadv_ale       */
> +	{ GPMC_NADV_ALE       ,                               IEN | PTD | M0 },
> +	/* sdmmc2_clk          */ /* internal FLASH */
> +	{ GPMC_NOE            ,                               IEN | PTU | M1 },
> +	/* sdmmc2_cmd          */ /* internal FLASH */
> +	{ GPMC_NWE            ,                               IEN | PTU | M1 },
> +	/* gpmc_nbe0_cle       */
> +	{ GPMC_NBE0_CLE       ,                               IEN | PTD | M0 },
> +	/* safe_mode           */
> +	{ GPMC_NBE1           ,                               IEN | PTD | M7 },
> +	/* gpmc_wait0          */
> +	{ GPMC_WAIT0          ,                               IEN | PTU | M0 },
> +	/* gpio_62             */ /* camera_reset */
> +	{ GPMC_WAIT1          ,                               IEN       | M3 },
> +	/* safe_mode           */
> +	{ GPMC_WAIT2          ,                               IEN | PTD | M7 },
> +	/* gpio_101            */ /* lcd_stdby */
> +	{ GPMC_NCS4           ,                                           M3 },
> +	/* gpio_102            */ /* wifi_irq */
> +	{ GPMC_NCS5           ,                               IEN       | M3 },
> +	/* gpio_103            */ /* wifi_power */
> +	{ GPMC_NCS6           ,                                           M3 },
> +	/* gpio_104            */ /* bt_power */
> +	{ GPMC_NCS7           ,                               IEN       | M3 },
> +	/* gpio_63             */ /* hdmi_hpd ?? */
> +	{ GPIO63              ,                               IEN | PTD | M3 },
> +	/*                     */
> +	{ GPIO64              ,                               IEN       | M0 },
> +	/*                     */
> +	{ GPIO65              ,                               IEN       | M0 },
> +	/*                     */
> +	{ GPIO66              ,                               IEN       | M0 },
> +	/* csi21_dx0           */
> +	{ CSI21_DX0           ,                               IEN       | M0 },
> +	/* csi21_dy0           */
> +	{ CSI21_DY0           ,                               IEN       | M0 },
> +	/* csi21_dx1           */
> +	{ CSI21_DX1           ,                               IEN       | M0 },
> +	/* csi21_dy1           */
> +	{ CSI21_DY1           ,                               IEN       | M0 },
> +	/* safe_mode           */
> +	{ CSI21_DX2           ,                               IEN | PTD | M7 },
> +	/* safe_mode           */
> +	{ CSI21_DY2           ,                               IEN | PTD | M7 },
> +	/* safe_mode           */
> +	{ CSI21_DX3           ,                               IEN | PTD | M7 },
> +	/* safe_mode           */
> +	{ CSI21_DY3           ,                               IEN | PTD | M7 },
> +	/* safe_mode           */
> +	{ CSI21_DX4           ,                               IEN | PTD | M7 },
> +	/* safe_mode           */
> +	{ CSI21_DY4           ,                               IEN | PTD | M7 },
> +	/* safe_mode           */
> +	{ CSI22_DX0           ,                               IEN | PTD | M7 },
> +	/* safe_mode           */
> +	{ CSI22_DY0           ,                               IEN | PTD | M7 },
> +	/* safe_mode           */
> +	{ CSI22_DX1           ,                               IEN | PTD | M7 },
> +	/* safe_mode           */
> +	{ CSI22_DY1           ,                               IEN | PTD | M7 },
> +	/* cam_shutter         */
> +	{ CAM_SHUTTER         ,                                     PTD | M0 },
> +	/* cam_strobe          */
> +	{ CAM_STROBE          ,                                     PTD | M0 },
> +	/* gpio_83             */
> +	{ CAM_GLOBALRESET     ,                                     PTD | M3 },
> +	/* usbb1_ulpiphy_clk   */
> +	{ USBB1_ULPITLL_CLK   ,                               IEN | PTD | M4 },
> +	/* usbb1_ulpiphy_stp   */
> +	{ USBB1_ULPITLL_STP   ,                                           M4 },
> +	/* usbb1_ulpiphy_dir   */
> +	{ USBB1_ULPITLL_DIR   ,                               IEN | PTD | M4 },
> +	/* usbb1_ulpiphy_nxt   */
> +	{ USBB1_ULPITLL_NXT   ,                               IEN | PTD | M4 },
> +	/* usbb1_ulpiphy_dat0  */
> +	{ USBB1_ULPITLL_DAT0  , WAKEUP_EN                   | IEN | PTD | M4 },
> +	/* usbb1_ulpiphy_dat1  */
> +	{ USBB1_ULPITLL_DAT1  ,                               IEN | PTD | M4 },
> +	/* usbb1_ulpiphy_dat2  */
> +	{ USBB1_ULPITLL_DAT2  ,                               IEN | PTD | M4 },
> +	/* usbb1_ulpiphy_dat3  */
> +	{ USBB1_ULPITLL_DAT3  ,                               IEN | PTD | M4 },
> +	/* usbb1_ulpiphy_dat4  */
> +	{ USBB1_ULPITLL_DAT4  ,                               IEN | PTD | M4 },
> +	/* usbb1_ulpiphy_dat5  */
> +	{ USBB1_ULPITLL_DAT5  ,                               IEN | PTD | M4 },
> +	/* usbb1_ulpiphy_dat6  */
> +	{ USBB1_ULPITLL_DAT6  ,                               IEN | PTD | M4 },
> +	/* usbb1_ulpiphy_dat7  */
> +	{ USBB1_ULPITLL_DAT7  ,                               IEN | PTD | M4 },
> +	/* usbb1_hsic_data     */
> +	{ USBB1_HSIC_DATA     ,                                           M0 },
> +	/* usbb1_hsic_strobe   */
> +	{ USBB1_HSIC_STROBE   ,                                           M0 },
> +	/* usbc1_icusb_dp      */
> +	{ USBC1_ICUSB_DP      ,                                           M0 },
> +	/* usbc1_icusb_dm      */
> +	{ USBC1_ICUSB_DM      ,                                           M0 },
> +	/* sdmmc1_clk          */ /* SD card */
> +	{ SDMMC1_CLK          ,                                     PTU | M0 },
> +	/* sdmmc1_cmd          */ /* SD card */
> +	{ SDMMC1_CMD          ,                               IEN | PTU | M0 },
> +	/* sdmmc1_dat0         */ /* SD card */
> +	{ SDMMC1_DAT0         ,                               IEN | PTU | M0 },
> +	/* sdmmc1_dat1         */ /* SD card */
> +	{ SDMMC1_DAT1         ,                               IEN | PTU | M0 },
> +	/* sdmmc1_dat2         */ /* SD card */
> +	{ SDMMC1_DAT2         ,                               IEN | PTU | M0 },
> +	/* sdmmc1_dat3         */ /* SD card */
> +	{ SDMMC1_DAT3         ,                               IEN | PTU | M0 },
> +	/* sdmmc1_dat4         */ /* SD card */
> +	{ SDMMC1_DAT4         ,                               IEN | PTU | M0 },
> +	/* sdmmc1_dat5         */ /* SD card */
> +	{ SDMMC1_DAT5         ,                               IEN | PTU | M0 },
> +	/* sdmmc1_dat6         */ /* SD card */
> +	{ SDMMC1_DAT6         ,                               IEN | PTU | M0 },
> +	/* sdmmc1_dat7         */ /* SD card */
> +	{ SDMMC1_DAT7         ,                               IEN | PTU | M0 },
> +	/* gpio_110            */ /* tsp_pwr_gpio */
> +	{ ABE_MCBSP2_CLKX     ,                                           M3 },
> +	/* gpio_111            */ /* vbus_musb_pwron */
> +	{ ABE_MCBSP2_DR       ,                               IEN       | M3 },
> +	/* gpio_112            */ /* tsp_irq_gpio */
> +	{ ABE_MCBSP2_DX       , WAKEUP_EN                   | IEN | PTU | M3 },
> +	/* gpio_113            */ /* vbus_flag */
> +	{ ABE_MCBSP2_FSX      ,                               IEN | PTU | M3 },
> +	/* safe_mode           */
> +	{ ABE_MCBSP1_CLKX     ,                               IEN | PTD | M7 },
> +	/* safe_mode           */
> +	{ ABE_MCBSP1_DR       ,                               IEN | PTD | M7 },
> +	/* abe_mcbsp1_dx       */
> +	{ ABE_MCBSP1_DX       ,                                           M0 },
> +	/* abe_mcbsp1_fsx      */
> +	{ ABE_MCBSP1_FSX      ,                               IEN       | M0 },
> +	/* abe_pdm_ul_data     */
> +	{ ABE_PDM_UL_DATA     ,                               IEN       | M0 },
> +	/* abe_pdm_dl_data     */
> +	{ ABE_PDM_DL_DATA     ,                                           M0 },
> +	/* abe_pdm_frame       */
> +	{ ABE_PDM_FRAME       ,                               IEN       | M0 },
> +	/* abe_pdm_lb_clk      */
> +	{ ABE_PDM_LB_CLK      ,                               IEN       | M0 },
> +	/* abe_clks            */
> +	{ ABE_CLKS            ,                               IEN       | M0 },
> +	/* safe_mode           */
> +	{ ABE_DMIC_CLK1       ,                               IEN | PTD | M7 },
> +	/* safe_mode           */
> +	{ ABE_DMIC_DIN1       ,                               IEN | PTD | M7 },
> +	/* safe_mode           */
> +	{ ABE_DMIC_DIN2       ,                               IEN | PTD | M7 },
> +	/* safe_mode           */ /* bkl_en on gpio_122 ?? */
> +	{ ABE_DMIC_DIN3       ,                               IEN | PTD | M7 },
> +	/* uart2_cts           */
> +	{ UART2_CTS           , WAKEUP_EN | OFF_PU | OFF_IN             | M0 },
> +	/* safe_mode           */
> +	{ UART2_RTS           ,             OFF_PU | OFF_IN             | M7 },
> +	/* uart2_rx            */
> +	{ UART2_RX            ,                               IEN | PTU | M0 },
> +	/* uart2_tx            */
> +	{ UART2_TX            ,                                           M0 },
> +	/* gpio_127            */ /* audio_power_on */
> +	{ HDQ_SIO             ,                                           M3 },
> +	/* i2c1_scl            */
> +	{ I2C1_SCL            ,                               IEN       | M0 },
> +	/* i2c1_sda            */
> +	{ I2C1_SDA            ,                               IEN       | M0 },
> +	/* i2c2_scl            */
> +	{ I2C2_SCL            ,                               IEN       | M0 },
> +	/* i2c2_sda            */
> +	{ I2C2_SDA            ,                               IEN       | M0 },
> +	/* i2c3_scl            */
> +	{ I2C3_SCL            ,                               IEN       | M0 },
> +	/* i2c3_sda            */
> +	{ I2C3_SDA            ,                               IEN       | M0 },
> +	/* i2c4_scl            */
> +	{ I2C4_SCL            ,                               IEN       | M0 },
> +	/* i2c4_sda            */
> +	{ I2C4_SDA            ,                               IEN       | M0 },
> +	/* mcspi1_clk          */
> +	{ MCSPI1_CLK          ,                               IEN       | M0 },
> +	/* mcspi1_somi         */
> +	{ MCSPI1_SOMI         ,                               IEN       | M0 },
> +	/* mcspi1_simo         */
> +	{ MCSPI1_SIMO         ,                               IEN       | M0 },
> +	/* mcspi1_cs0          */
> +	{ MCSPI1_CS0          ,                               IEN | PTD | M0 },
> +	/* uart1_rx            */
> +	{ MCSPI1_CS1          , WAKEUP_EN                   | IEN       | M1 },
> +	/* gpio_139            */
> +	{ MCSPI1_CS2          ,                                           M3 },
> +	/* safe_mode           */
> +	{ MCSPI1_CS3          ,                               IEN | PTU | M7 },
> +	/* uart1_tx            */
> +	{ UART3_CTS_RCTX      ,                                           M1 },
> +	/* uart3_rts_sd        */
> +	{ UART3_RTS_SD        ,                                           M0 },
> +	/* safe_mode           */
> +	{ UART3_RX_IRRX       ,                               IEN | PTU | M7 },
> +	/* safe_mode           */
> +	{ UART3_TX_IRTX       ,                               IEN | PTD | M7 },
> +	/* sdmmc5_clk          */
> +	{ SDMMC5_CLK          ,                                     PTU | M0 },
> +	/* sdmmc5_cmd          */
> +	{ SDMMC5_CMD          ,                               IEN | PTU | M0 },
> +	/* sdmmc5_dat0         */
> +	{ SDMMC5_DAT0         ,                               IEN | PTU | M0 },
> +	/* sdmmc5_dat1         */
> +	{ SDMMC5_DAT1         ,                               IEN | PTU | M0 },
> +	/* sdmmc5_dat2         */
> +	{ SDMMC5_DAT2         ,                               IEN | PTU | M0 },
> +	/* sdmmc5_dat3         */
> +	{ SDMMC5_DAT3         ,                               IEN | PTU | M0 },
> +	/* sdmmc4_clk          */
> +	{ MCSPI4_CLK          ,                               IEN | PTU | M1 },
> +	/* sdmmc4_cmd          */
> +	{ MCSPI4_SIMO         ,                               IEN | PTU | M1 },
> +	/* sdmmc4_dat0         */
> +	{ MCSPI4_SOMI         ,                               IEN | PTU | M1 },
> +	/* sdmmc4_dat3         */
> +	{ MCSPI4_CS0          ,                               IEN | PTU | M1 },
> +	/* sdmmc4_dat2         */
> +	{ UART4_RX            ,                               IEN | PTU | M1 },
> +	/* sdmmc4_dat1         */
> +	{ UART4_TX            ,                               IEN | PTU | M1 },
> +	/* gpio_157            */
> +	{ USBB2_ULPITLL_CLK   ,                                           M3 },
> +	/* dispc2_data23       */
> +	{ USBB2_ULPITLL_STP   ,                                           M5 },
> +	/* dispc2_data22       */
> +	{ USBB2_ULPITLL_DIR   ,                                           M5 },
> +	/* dispc2_data21       */
> +	{ USBB2_ULPITLL_NXT   ,                                           M5 },
> +	/* dispc2_data20       */
> +	{ USBB2_ULPITLL_DAT0  ,                                           M5 },
> +	/* dispc2_data19       */
> +	{ USBB2_ULPITLL_DAT1  ,                                           M5 },
> +	/* dispc2_data18       */
> +	{ USBB2_ULPITLL_DAT2  ,                                           M5 },
> +	/* dispc2_data15       */
> +	{ USBB2_ULPITLL_DAT3  ,                                           M5 },
> +	/* dispc2_data14       */
> +	{ USBB2_ULPITLL_DAT4  ,                                           M5 },
> +	/* dispc2_data13       */
> +	{ USBB2_ULPITLL_DAT5  ,                                           M5 },
> +	/* dispc2_data12       */
> +	{ USBB2_ULPITLL_DAT6  ,                                           M5 },
> +	/* dispc2_data11       */
> +	{ USBB2_ULPITLL_DAT7  ,                                           M5 },
> +	/* gpio_169            */
> +	{ USBB2_HSIC_DATA     ,                                           M3 },
> +	/* gpio_170            */
> +	{ USBB2_HSIC_STROBE   ,                                           M3 },
> +	/* kpd_col0            */
> +	{ KPD_COL3            ,                               IEN | PTD | M1 },
> +	/* kpd_col1            */
> +	{ KPD_COL4            ,                               IEN | PTD | M1 },
> +	/* kpd_col2            */
> +	{ KPD_COL5            ,                               IEN | PTD | M1 },
> +	/* gpio_174            */ /* accel_int2 */
> +	{ KPD_COL0            ,                               IEN | PTU | M3 },
> +	/* gpio_0              */ /* tsp_shtdwn_gpio */
> +	{ KPD_COL1            ,                               IEN | PTD | M3 },
> +	/* gpio_1              */
> +	{ KPD_COL2            ,                               IEN | PTD | M3 },
> +	/* kpd_row0            */
> +	{ KPD_ROW3            ,                               IEN | PTD | M1 },
> +	/* kpd_row1            */
> +	{ KPD_ROW4            ,                               IEN | PTD | M1 },
> +	/* kpd_row2            */
> +	{ KPD_ROW5            ,                               IEN | PTD | M1 },
> +	/* kpd_row3            */
> +	{ KPD_ROW0            ,                               IEN | PTD | M1 },
> +	/* kpd_row4            */
> +	{ KPD_ROW1            ,                               IEN | PTD | M1 },
> +	/* kpd_row5            */
> +	{ KPD_ROW2            ,                               IEN | PTD | M1 },
> +	/* usba0_otg_ce        */
> +	{ USBA0_OTG_CE        ,                                     PTU | M0 },
> +	/* usba0_otg_dp        */
> +	{ USBA0_OTG_DP        ,                                           M0 },
> +	/* usba0_otg_dm        */
> +	{ USBA0_OTG_DM        ,                                           M0 },
> +	/* safe_mode           */
> +	{ FREF_CLK1_OUT       ,                               IEN | PTD | M7 },
> +	/* fref_clk2_out       */
> +	{ FREF_CLK2_OUT       ,                                           M0 },
> +	/* sys_nirq1           */
> +	{ SYS_NIRQ1           , WAKEUP_EN                   | IEN | PTU | M0 },
> +	/* sys_nirq2           */ /* audio_irq */
> +	{ SYS_NIRQ2           ,                               IEN | PTU | M0 },
> +	/* sys_boot0           */
> +	{ SYS_BOOT0           ,                               IEN | PTD | M0 },
> +	/* sys_boot1           */
> +	{ SYS_BOOT1           ,                               IEN | PTD | M0 },
> +	/* sys_boot2           */
> +	{ SYS_BOOT2           ,                               IEN | PTD | M0 },
> +	/* sys_boot3           */
> +	{ SYS_BOOT3           ,                               IEN | PTD | M0 },
> +	/* sys_boot4           */
> +	{ SYS_BOOT4           ,                               IEN | PTD | M0 },
> +	/* sys_boot5           */
> +	{ SYS_BOOT5           ,                               IEN | PTD | M0 },
> +	/* dpm_emu0            */
> +	{ DPM_EMU0            ,                               IEN | PTU | M0 },
> +	/* gpio_12             */ /* lcd_avdd_en */
> +	{ DPM_EMU1            ,                               IEN       | M3 },
> +	/* safe_mode           */
> +	{ DPM_EMU2            ,                               IEN | PTD | M7 },
> +	/* dispc2_data10       */
> +	{ DPM_EMU3            ,                                           M5 },
> +	/* dispc2_data9        */
> +	{ DPM_EMU4            ,                                           M5 },
> +	/* dispc2_data16       */
> +	{ DPM_EMU5            ,                                           M5 },
> +	/* dispc2_data17       */
> +	{ DPM_EMU6            ,                                           M5 },
> +	/* dispc2_hsync        */
> +	{ DPM_EMU7            ,                                           M5 },
> +	/* dispc2_pclk         */
> +	{ DPM_EMU8            ,                                           M5 },
> +	/* dispc2_vsync        */
> +	{ DPM_EMU9            ,                                           M5 },
> +	/* dispc2_de           */
> +	{ DPM_EMU10           ,                                           M5 },
> +	/* dispc2_data8        */
> +	{ DPM_EMU11           ,                                           M5 },
> +	/* dispc2_data7        */
> +	{ DPM_EMU12           ,                                           M5 },
> +	/* dispc2_data6        */
> +	{ DPM_EMU13           ,                                           M5 },
> +	/* dispc2_data5        */
> +	{ DPM_EMU14           ,                                           M5 },
> +	/* dispc2_data4        */
> +	{ DPM_EMU15           ,                                           M5 },
> +	/* dispc2_data3        */
> +	{ DPM_EMU16           ,                                           M5 },
> +	/* dispc2_data2        */
> +	{ DPM_EMU17           ,                                           M5 },
> +	/* dispc2_data1        */
> +	{ DPM_EMU18           ,                                           M5 },
> +	/* dispc2_data0        */
> +	{ DPM_EMU19           ,                                           M5 },
> +	/* safe_mode           */
> +	{ CSI22_DX2           ,                               IEN | PTD | M7 },
> +	/* safe_mode           */
> +	{ CSI22_DY2           ,                               IEN | PTD | M7 },
> +};
> +
> +static const struct pad_conf_entry wkup_padconf_array[] = {
> +	/* sr_scl              */
> +	{ SR_SCL               , IEN            },
> +	/* sr_sda              */
> +	{ SR_SDA               , IEN            },
> +	/* fref_clk0_out       */
> +	{ FREF_CLK0_OUT        ,             M0 },
> +	/* gpio_wk30           */
> +	{ FREF_CLK3_REQ        ,             M3 },
> +	/* gpio_wk7            */ /* tps62361_vsel0 */
> +	{ FREF_CLK4_REQ        , IEN | PTU | M3 },
> +};
> +
> +void set_muxconf_regs(void){
> +	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE,
> +		core_padconf_array, ARRAY_SIZE(core_padconf_array));
> +	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP,
> +		wkup_padconf_array, ARRAY_SIZE(wkup_padconf_array));
> +
> +	/* gpio_wk7 is used for controlling TPS on 4460 */
> +	if (omap4_revision() >= OMAP4460_ES1_0) {
> +		writew(M3, OMAP44XX_CONTROL_PADCONF_WKUP + FREF_CLK4_REQ);
> +		/* Enable GPIO-1 clocks before TPS initialization */
> +		omap4_enable_gpio1_wup_clocks();
> +	}
> +}
> diff --git a/arch/arm/boards/archosg9/mux.h b/arch/arm/boards/archosg9/mux.h
> new file mode 100644
> index 0000000..97297b6
> --- /dev/null
> +++ b/arch/arm/boards/archosg9/mux.h
> @@ -0,0 +1,6 @@
> +#ifndef _MUX_H
> +#define _MUX_H
> +
> +void set_muxconf_regs(void);
> +
> +#endif /* _MUX_H */
> diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
> new file mode 100644
> index 0000000..e598258
> --- /dev/null
> +++ b/arch/arm/configs/archosg9_defconfig
> @@ -0,0 +1,70 @@
> +CONFIG_MACH_ARCHOSG9=y
> +CONFIG_ARCH_OMAP=y
> +CONFIG_ARCH_OMAP4=y
> +CONFIG_AEABI=y
> +# CONFIG_MACH_DO_LOWLEVEL_INIT is not set
> +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_ARM_UNWIND=y
> +# CONFIG_MMU is not set
> +CONFIG_OMAP4_USBBOOT=y
> +CONFIG_TEXT_BASE=0xa0000000
> +CONFIG_MALLOC_BASE=0x90000000
> +CONFIG_MALLOC_SIZE=0x10000000
> +CONFIG_KALLSYMS=y
> +CONFIG_PROMPT="barebox> "
> +CONFIG_LONGHELP=y
> +CONFIG_GLOB=y
> +CONFIG_HUSH_FANCY_PROMPT=y
> +CONFIG_CMDLINE_EDITING=y
> +CONFIG_AUTO_COMPLETE=y
> +# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
> +CONFIG_CONSOLE_ACTIVATE_ALL=y
> +# CONFIG_TIMESTAMP is not set
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> +CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv-2 arch/arm/boards/archosg9/env"
> +CONFIG_CMD_EDIT=y
> +CONFIG_CMD_SLEEP=y
> +CONFIG_CMD_SAVEENV=y
> +CONFIG_CMD_EXPORT=y
> +CONFIG_CMD_PRINTENV=y
> +CONFIG_CMD_READLINE=y
> +CONFIG_CMD_TIME=y
> +CONFIG_CMD_ECHO_E=y
> +CONFIG_CMD_LOADB=y
> +CONFIG_CMD_IOMEM=y
> +CONFIG_CMD_FLASH=y
> +CONFIG_CMD_MD5SUM=y
> +CONFIG_CMD_SHA1SUM=y
> +CONFIG_CMD_SHA224SUM=y
> +CONFIG_CMD_SHA256SUM=y
> +CONFIG_CMD_BOOTM_SHOW_TYPE=y
> +CONFIG_CMD_BOOTM_VERBOSE=y
> +CONFIG_CMD_BOOTM_INITRD=y
> +CONFIG_CMD_BOOTM_OFTREE=y
> +CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
> +CONFIG_CMD_BOOTM_AIMAGE=y
> +CONFIG_CMD_RESET=y
> +CONFIG_CMD_GO=y
> +CONFIG_CMD_TIMEOUT=y
> +CONFIG_CMD_PARTITION=y
> +CONFIG_CMD_MAGICVAR=y
> +CONFIG_CMD_MAGICVAR_HELP=y
> +CONFIG_CMD_GPIO=y
> +CONFIG_CMD_UNCOMPRESS=y
> +CONFIG_CMD_I2C=y
> +CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
> +CONFIG_DRIVER_SERIAL_NS16550=y
> +CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
> +CONFIG_BAUDRATE=1000000
> +# CONFIG_SPI is not set
> +CONFIG_I2C=y
> +CONFIG_I2C_OMAP=y
> +CONFIG_I2C_TWLCORE=y
> +CONFIG_I2C_TWL6030=y
> +CONFIG_MCI=y
> +CONFIG_MCI_STARTUP=y
> +CONFIG_MCI_OMAP_HSMMC=y
> +CONFIG_FS_FAT=y
> +CONFIG_FS_FAT_WRITE=y
> +CONFIG_FS_FAT_LFN=y
> +CONFIG_FS_OMAP4_USBBOOT=y
> diff --git a/arch/arm/configs/archosg9_xload_defconfig b/arch/arm/configs/archosg9_xload_defconfig
> new file mode 100644
> index 0000000..6c6782f
> --- /dev/null
> +++ b/arch/arm/configs/archosg9_xload_defconfig
> @@ -0,0 +1,24 @@
> +CONFIG_MACH_ARCHOSG9=y
> +CONFIG_ARCH_OMAP=y
> +CONFIG_ARCH_OMAP4=y
> +# CONFIG_OMAP_GPMC is not set
> +CONFIG_OMAP_BUILD_IFT=y
> +CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
> +CONFIG_AEABI=y
> +CONFIG_OMAP4_USBBOOT=y
> +# CONFIG_CMD_ARM_CPUINFO is not set
> +CONFIG_TEXT_BASE=0x40300000
> +CONFIG_MEMORY_LAYOUT_FIXED=y
> +CONFIG_STACK_BASE=0x8f000000
> +CONFIG_MALLOC_BASE=0x84000000
> +CONFIG_MALLOC_SIZE=0x2000000
> +CONFIG_SHELL_NONE=y
> +# CONFIG_ERRNO_MESSAGES is not set
> +# CONFIG_TIMESTAMP is not set
> +# CONFIG_CONSOLE_FULL is not set
> +# CONFIG_DEFAULT_ENVIRONMENT is not set
> +CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
> +# CONFIG_SPI is not set
> +# CONFIG_FS_RAMFS is not set
> +# CONFIG_FS_DEVFS is not set
> +CONFIG_FS_OMAP4_USBBOOT=y
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index b3dd6a4..da39530 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -92,6 +92,7 @@ config OMAP4_USBBOOT
>  	  Please read oamp4_usb_booting.txt for more information.
>  
>  config BOARDINFO
> +	default "Archos G9" if MACH_ARCHOSG9
>  	default "Texas Instrument's SDP343x" if MACH_OMAP343xSDP
>  	default "Texas Instrument's Beagle" if MACH_BEAGLE
>  	default "Texas Instrument's OMAP3EVM" if MACH_OMAP3EVM
> @@ -131,6 +132,14 @@ config MACH_PANDA
>  	help
>  	  Say Y here if you are using OMAP4 Panda board
>  
> +config MACH_ARCHOSG9
> +	bool "Archos G9 tablets"
> +	select HAVE_NOSHELL
> +	select MACH_HAS_LOWLEVEL_INIT
> +	depends on ARCH_OMAP4
> +	help
> +	  Say Y here if you are using OMAP4-based Archos G9 tablet
> +
>  config MACH_PCM049
>  	bool "Phytec phyCORE pcm049"
>  	select HAVE_NOSHELL



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
