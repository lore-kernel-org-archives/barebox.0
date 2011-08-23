Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvqSy-0000h6-Ju
	for barebox@lists.infradead.org; Tue, 23 Aug 2011 12:52:29 +0000
Date: Tue, 23 Aug 2011 14:52:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110823125226.GM31404@pengutronix.de>
References: <201108231438.41251.tim.sander@hbm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201108231438.41251.tim.sander@hbm.com>
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
Subject: Re: [PATCH] add 2nd bank
To: Tim Sander <tim.sander@hbm.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 23, 2011 at 02:38:41PM +0200, Tim Sander wrote:
> This locic patch the u-boot-v2 patch from Phytec
> OSELAS.BSP-Phytec-phyCORE-i.MX35-PD10.1.2
> 2bank.patch

I haven't checked, but this may break nand boot support on the pcm043
since we only have 2k of initial space with nand boot. One option
may be to seperate the sdram setup into a function and to call this
with the different sdram controller base addresses.
Another option is to setup the second sdram bank later in regular code.
This would also allow to check if the second sdram bank is equipped *) and
thus no config option qould be required.

Sascha

*) Don't know how, though, but this should be possible somehow.


> 
> Signed-off-by: Tim Sander <tim.sander@hbm.com>
> ---
>  arch/arm/boards/pcm043/lowlevel.c |   50 
> +++++++++++++++++++++++++++++++++++++
>  arch/arm/boards/pcm043/pcm043.c   |    3 ++
>  arch/arm/mach-imx/Kconfig         |   14 ++++++++++
>  3 files changed, 67 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/boards/pcm043/lowlevel.c 
> b/arch/arm/boards/pcm043/lowlevel.c
> index bbe586b..9bf1c4a 100644
> --- a/arch/arm/boards/pcm043/lowlevel.c
> +++ b/arch/arm/boards/pcm043/lowlevel.c
> @@ -191,8 +191,58 @@ void __bare_init __naked board_init_lowlevel(void)
> 
>     /* enable Auto-Refresh */
>     writel(0x82228080, ESDCTL0);
> +
> +#ifdef CONFIG_PCM043_SDRAM_BANK1_128MB
> +   /* set timing paramters */
> +   writel(0x00255417, ESDCFG1) /* was 0x007ffc3f */
> +   /* select Prechare-All mode */
> +   writel(0x92220000, ESDCTL1)
> +   /* Prechare-All */
> +   writel(0x12345678, IMX_SDRAM_CS1 + 0x400)
> +
> 
> +   /* select Load-Mode-Register mode */
> +   writel(0xB8001000, ESDCTL1)
> +   /* Load reg EMR2 */
> +   writeb(0xda, 0x94000000)
> +   /* Load reg EMR3 */
> +   writeb(0xda, 0x96000000)
> +   /* Load reg EMR1 -- enable DLL */
> +   writeb(0xda, 0x92000400)
> +   /* Load reg MR -- reset DLL */
> +   writeb(0xda, 0x90000333)
> +
> +   /* select Prechare-All mode */
> +   writel(0x92220000, ESDCTL1)
> +   /* Prechare-All */
> +   writel(0x12345678, IMX_SDRAM_CS1 + 0x400)
> +
> +   /* select Manual-Refresh mode */
> +   writel(0xA2220000, ESDCTL1)
> +   /* Manual-Refresh 2 times */
> +   writel(0x87654321, IMX_SDRAM_CS1)
> +   writel(0x87654321, IMX_SDRAM_CS1)
> +
> +   /* select Load-Mode-Register mode */
> +   writel(0xB2220000, ESDCTL1)
> +   /* Load reg MR -- CL3, BL8, end DLL reset */
> +   writeb(0xda, 0x90000233)
> +   /* Load reg EMR1 -- OCD default */
> +   writeb(0xda, 0x92000780)
> +   /* Load reg EMR1 -- OCD exit */
> +   writeb(0xda, 0x92000400)
> +
> +   /* select normal-operation mode
> +   * DSIZ32-bit, BL8, COL10-bit, ROW13-bit
> +   * disable PWT & PRCT
> +   * disable Auto-Refresh */
> +   writel(0x82220080, ESDCTL1)
> +
> +   /* enable Auto-Refresh */
> +   writel(0x82228080, ESDCTL1)
> +#else
>     /* enable Auto-Refresh */
>     writel(0x00002000, ESDCTL1);
> +#endif
> 
>  #ifdef CONFIG_NAND_IMX_BOOT
>     /* skip NAND boot if not running from NFC space */
> diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
> index 2174a1c..0b88807 100644
> --- a/arch/arm/boards/pcm043/pcm043.c
> +++ b/arch/arm/boards/pcm043/pcm043.c
> @@ -102,6 +102,9 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
>  static int pcm043_mem_init(void)
>  {
>     arm_add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024);
> +#ifdef CONFIG_PCM043_SDRAM_BANK1_128MB
> +   arm_add_mem_device("ram1", IMX_SDRAM_CS1, 128 * 1024 * 1024);
> +#endif
> 
>     return 0;
>  }
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 8dc6a24..ce3e989 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -419,6 +419,20 @@ config PCM043_DISPLAY_SHARP
>  config PCM043_DISPLAY_TY090
>     bool "TX090"
>  endchoice
> +
> +choice
> +   prompt "SDRAM Bank0"
> +config PCM043_SDRAM_BANK0_128MB
> +   bool "128MB"
> +endchoice
> +
> +choice 
> +prompt "SDRAM Bank1"
> +config PCM043_SDRAM_BANK_1_NONE
> +   bool "none"
> +config PCM034_SDRAM_BANK1_128MB
> +   bool "128MB"
> +endchoice
>  endif
> 
>  if MACH_PCM037
> -- 
> 1.7.0.4
> 
> Hottinger Baldwin Messtechnik GmbH, Im Tiefen See 45, 64293 Darmstadt, Germany | www.hbm.com 
> 
> Registered as GmbH (German limited liability corporation) in the commercial register at the local court of Darmstadt, HRB 1147  
> Company domiciled in Darmstadt | CEO: Andreas Huellhorst | Chairman of the board: James Charles Webster
> 
> Als Gesellschaft mit beschraenkter Haftung eingetragen im Handelsregister des Amtsgerichts Darmstadt unter HRB 1147 
> Sitz der Gesellschaft: Darmstadt | Geschaeftsfuehrung: Andreas Huellhorst | Aufsichtsratsvorsitzender: James Charles Webster
> 
> The information in this email is confidential. It is intended solely for the addressee. If you are not the intended recipient, please let me know and delete this email.
> 
> Die in dieser E-Mail enthaltene Information ist vertraulich und lediglich fur den Empfaenger bestimmt. Sollten Sie nicht der eigentliche Empfaenger sein, informieren Sie mich bitte kurz und loeschen diese E-Mail.
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
