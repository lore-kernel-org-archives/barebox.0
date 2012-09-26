Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGltO-0004EN-Fq
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 07:18:47 +0000
Date: Wed, 26 Sep 2012 09:18:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120926071844.GI1322@pengutronix.de>
References: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
 <1348613994-1793-4-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348613994-1793-4-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 3/7] OMAP specific changes
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 26, 2012 at 12:59:50AM +0200, vj wrote:
> mux:
>   added definitions with the same names as in the datasheet
>   added two new definitions
>   changed PAD definitions to have the same names in the datasheet
>   changed value for jtag_tck to match the one on the datasheet
> added base addresses and usb bootsrc
> ---
>  arch/arm/mach-omap/include/mach/omap4-mux.h     | 80 ++++++++++++++++---------
>  arch/arm/mach-omap/include/mach/omap4-silicon.h | 13 ++++
>  arch/arm/mach-omap/include/mach/xload.h         |  1 +
>  arch/arm/mach-omap/omap4_generic.c              |  4 ++
>  4 files changed, 70 insertions(+), 28 deletions(-)
> 
> @@ -301,34 +325,34 @@ struct pad_conf_entry {
>  #define WKUP_REVISION		0x0000
>  #define WKUP_HWINFO		0x0004
>  #define WKUP_SYSCONFIG		0x0010
> -#define PAD0_SIM_IO		0x0040
> -#define PAD1_SIM_CLK		0x0042
> -#define PAD0_SIM_RESET		0x0044
> -#define PAD1_SIM_CD		0x0046
> -#define PAD0_SIM_PWRCTRL		0x0048
> -#define PAD1_SR_SCL		0x004A
> -#define PAD0_SR_SDA		0x004C
> -#define PAD1_FREF_XTAL_IN		0x004E
> -#define PAD0_FREF_SLICER_IN	0x0050
> -#define PAD1_FREF_CLK_IOREQ	0x0052
> -#define PAD0_FREF_CLK0_OUT		0x0054
> -#define PAD1_FREF_CLK3_REQ		0x0056
> -#define PAD0_FREF_CLK3_OUT		0x0058
> -#define PAD1_FREF_CLK4_REQ		0x005A
> -#define PAD0_FREF_CLK4_OUT		0x005C
> -#define PAD1_SYS_32K		0x005E
> -#define PAD0_SYS_NRESPWRON		0x0060
> -#define PAD1_SYS_NRESWARM		0x0062
> -#define PAD0_SYS_PWR_REQ		0x0064
> -#define PAD1_SYS_PWRON_RESET	0x0066
> -#define PAD0_SYS_BOOT6		0x0068
> -#define PAD1_SYS_BOOT7		0x006A
> -#define PAD0_JTAG_NTRST		0x006C
> -#define PAD1_JTAG_TCK		0x006D
> -#define PAD0_JTAG_RTCK		0x0070
> -#define PAD1_JTAG_TMS_TMSC		0x0072
> -#define PAD0_JTAG_TDI		0x0074
> -#define PAD1_JTAG_TDO		0x0076
> +#define GPIO_WK0		0x0040
> +#define GPIO_WK1		0x0042
> +#define GPIO_WK2		0x0044
> +#define GPIO_WK3		0x0046
> +#define GPIO_WK4		0x0048
> +#define SR_SCL			0x004A
> +#define SR_SDA			0x004C
> +#define FREF_XTAL_IN		0x004E
> +#define FREF_SLICER_IN		0x0050
> +#define FREF_CLK_IOREQ		0x0052
> +#define FREF_CLK0_OUT		0x0054
> +#define FREF_CLK3_REQ		0x0056
> +#define FREF_CLK3_OUT		0x0058
> +#define FREF_CLK4_REQ		0x005A
> +#define FREF_CLK4_OUT		0x005C
> +#define SYS_32K		0x005E
> +#define SYS_NRESPWRON		0x0060
> +#define SYS_NRESWARM		0x0062
> +#define SYS_PWR_REQ		0x0064
> +#define SYS_PWRON_RESET_OUT	0x0066
> +#define SYS_BOOT6		0x0068
> +#define SYS_BOOT7		0x006A
> +#define JTAG_NTRST		0x006C
> +#define JTAG_TCK		0x006E
> +#define JTAG_RTCK		0x0070
> +#define JTAG_TMS_TMSC		0x0072
> +#define JTAG_TDI		0x0074
> +#define JTAG_TDO		0x0076

Renaming these is ok, but you have to change the code which uses these
defines aswell:

./arch/arm/boards/phycard-a-xl2/mux.c:220:      {PAD1_SR_SCL, (PTU | IEN| M0)}, /* sr_scl */
./arch/arm/boards/pcm049/mux.c:220:     {PAD1_SR_SCL, (PTU | IEN | M0)},/* sr_scl */
./arch/arm/boards/panda/mux.c:220:      { PAD1_SR_SCL, PTU | IEN | M0/* sr_scl */ },

> diff --git a/arch/arm/mach-omap/include/mach/xload.h b/arch/arm/mach-omap/include/mach/xload.h
> index 844b57f..cfc3f68 100644
> --- a/arch/arm/mach-omap/include/mach/xload.h
> +++ b/arch/arm/mach-omap/include/mach/xload.h
> @@ -8,6 +8,7 @@ enum omap_boot_src {
>  	OMAP_BOOTSRC_UNKNOWN,
>  	OMAP_BOOTSRC_MMC1,
>  	OMAP_BOOTSRC_NAND,
> +	OMAP_BOOTSRC_USB1,
>  };
>  
>  enum omap_boot_src omap3_bootsrc(void);
> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
> index 617d786..55d8fe3 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -481,6 +481,10 @@ enum omap_boot_src omap4_bootsrc(void)
>  		return OMAP_BOOTSRC_MMC1;
>  	if (bootsrc & (1 << 3))
>  		return OMAP_BOOTSRC_NAND;
> +#ifdef CONFIG_USB_BOOT
> +	if (bootsrc & (1<<20))
> +		return OMAP_BOOTSRC_USB1;
> +#endif

This seems to be too early in the series, CONFIG_USB_BOOT is not yet
introduced. You can drop the ifdef anyway, disabling CONFIG_USB_BOOT
doesn't necessarily mean the SoC has not been booted from USB ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
