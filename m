Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bJyQp-0003hC-D0
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 07:36:40 +0000
Date: Mon, 4 Jul 2016 09:36:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160704073617.GG20657@pengutronix.de>
References: <1467457212-8979-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467457212-8979-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH 1/2] ARM i.MX31 iomux: remove obvious duplicates
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Sat, Jul 02, 2016 at 01:00:11PM +0200, Alexander Kurz wrote:
> No need to define some of the iomux twice, remove the duplicates.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/mach-imx/include/mach/iomux-mx31.h | 31 -----------------------------
>  1 file changed, 31 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/include/mach/iomux-mx31.h b/arch/arm/mach-imx/include/mach/iomux-mx31.h
> index 258ccee..0cad793 100644
> --- a/arch/arm/mach-imx/include/mach/iomux-mx31.h
> +++ b/arch/arm/mach-imx/include/mach/iomux-mx31.h
> @@ -640,37 +640,6 @@ enum iomux_pins {
>  #define MX31_PIN_USB_OC__GPIO1_30	IOMUX_MODE(MX31_PIN_USB_OC, IOMUX_CONFIG_GPIO)
>  #define MX31_PIN_I2C_DAT__I2C1_SDA	IOMUX_MODE(MX31_PIN_I2C_DAT, IOMUX_CONFIG_FUNC)
>  #define MX31_PIN_I2C_CLK__I2C1_SCL	IOMUX_MODE(MX31_PIN_I2C_CLK, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_DCD_DTE1__I2C2_SDA	IOMUX_MODE(MX31_PIN_DCD_DTE1, IOMUX_CONFIG_ALT2)
> -#define MX31_PIN_RI_DTE1__I2C2_SCL	IOMUX_MODE(MX31_PIN_RI_DTE1, IOMUX_CONFIG_ALT2)
> -#define MX31_PIN_ATA_CS0__GPIO3_26	IOMUX_MODE(MX31_PIN_ATA_CS0, IOMUX_CONFIG_GPIO)
> -#define MX31_PIN_ATA_CS1__GPIO3_27	IOMUX_MODE(MX31_PIN_ATA_CS1, IOMUX_CONFIG_GPIO)
> -#define MX31_PIN_PC_PWRON__SD2_DATA3	IOMUX_MODE(MX31_PIN_PC_PWRON, IOMUX_CONFIG_ALT1)
> -#define MX31_PIN_PC_VS1__SD2_DATA2	IOMUX_MODE(MX31_PIN_PC_VS1, IOMUX_CONFIG_ALT1)
> -#define MX31_PIN_PC_READY__SD2_DATA1	IOMUX_MODE(MX31_PIN_PC_READY, IOMUX_CONFIG_ALT1)
> -#define MX31_PIN_PC_WAIT_B__SD2_DATA0	IOMUX_MODE(MX31_PIN_PC_WAIT_B, IOMUX_CONFIG_ALT1)
> -#define MX31_PIN_PC_CD2_B__SD2_CLK	IOMUX_MODE(MX31_PIN_PC_CD2_B, IOMUX_CONFIG_ALT1)
> -#define MX31_PIN_PC_CD1_B__SD2_CMD	IOMUX_MODE(MX31_PIN_PC_CD1_B, IOMUX_CONFIG_ALT1)
> -#define MX31_PIN_ATA_DIOR__GPIO3_28	IOMUX_MODE(MX31_PIN_ATA_DIOR, IOMUX_CONFIG_GPIO)
> -#define MX31_PIN_ATA_DIOW__GPIO3_29	IOMUX_MODE(MX31_PIN_ATA_DIOW, IOMUX_CONFIG_GPIO)
> -#define MX31_PIN_CSI_D4__CSI_D4		IOMUX_MODE(MX31_PIN_CSI_D4, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_CSI_D5__CSI_D5		IOMUX_MODE(MX31_PIN_CSI_D5, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_CSI_D6__CSI_D6		IOMUX_MODE(MX31_PIN_CSI_D6, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_CSI_D7__CSI_D7		IOMUX_MODE(MX31_PIN_CSI_D7, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_CSI_D8__CSI_D8		IOMUX_MODE(MX31_PIN_CSI_D8, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_CSI_D9__CSI_D9		IOMUX_MODE(MX31_PIN_CSI_D9, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_CSI_D10__CSI_D10	IOMUX_MODE(MX31_PIN_CSI_D10, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_CSI_D11__CSI_D11	IOMUX_MODE(MX31_PIN_CSI_D11, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_CSI_D12__CSI_D12	IOMUX_MODE(MX31_PIN_CSI_D12, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_CSI_D13__CSI_D13	IOMUX_MODE(MX31_PIN_CSI_D13, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_CSI_D14__CSI_D14	IOMUX_MODE(MX31_PIN_CSI_D14, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_CSI_D15__CSI_D15	IOMUX_MODE(MX31_PIN_CSI_D15, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_CSI_HSYNC__CSI_HSYNC	IOMUX_MODE(MX31_PIN_CSI_HSYNC, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_CSI_MCLK__CSI_MCLK	IOMUX_MODE(MX31_PIN_CSI_MCLK, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_CSI_PIXCLK__CSI_PIXCLK	IOMUX_MODE(MX31_PIN_CSI_PIXCLK, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_CSI_VSYNC__CSI_VSYNC	IOMUX_MODE(MX31_PIN_CSI_VSYNC, IOMUX_CONFIG_FUNC)
> -#define MX31_PIN_GPIO3_0__GPIO3_0	IOMUX_MODE(MX31_PIN_GPIO3_0, IOMUX_CONFIG_GPIO)
> -#define MX31_PIN_GPIO3_1__GPIO3_1	IOMUX_MODE(MX31_PIN_GPIO3_1, IOMUX_CONFIG_GPIO)
> -#define MX31_PIN_TXD2__GPIO1_28		IOMUX_MODE(MX31_PIN_TXD2, IOMUX_CONFIG_GPIO)
>  #define MX31_PIN_GPIO1_0__GPIO1_0	IOMUX_MODE(MX31_PIN_GPIO1_0, IOMUX_CONFIG_GPIO)
>  #define MX31_PIN_SVEN0__GPIO2_0		IOMUX_MODE(MX31_PIN_SVEN0, IOMUX_CONFIG_GPIO)
>  #define MX31_PIN_STX0__GPIO2_1		IOMUX_MODE(MX31_PIN_STX0, IOMUX_CONFIG_GPIO)
> -- 
> 2.1.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
