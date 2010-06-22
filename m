Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4.aruba.it ([62.149.128.203] helo=smtpw2.aruba.it)
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OR45u-0002TK-Sz
	for barebox@lists.infradead.org; Tue, 22 Jun 2010 14:04:56 +0000
Date: Tue, 22 Jun 2010 16:04:52 +0200
Message-Id: <L4F5S4$2423D397FA7BDC615C5A7C3556F0B4F1@aruba.it>
MIME-Version: 1.0
From: "Luca Ceresoli" <luca@lucaceresoli.net>
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
Subject: Re: Regression: not booting anymore on OMAP35xx
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Sascha Hauer wrote:
> Hi Luca,
> 
> On Tue, Jun 22, 2010 at 02:26:11PM +0200, Luca Ceresoli wrote:
> > Hi,
> > 
> > recent versions of barebox do not boot anymore on OMAP3530 (Cortex-A8).
> > 
> > I build barebox with omap3530_beagle_per_uart_defconfig, and load it
> > using pserial from Nishanth Menon's omap-u-boot-utils
> > (http://github.com/nmenon/omap-u-boot-utils).
> > 
> > Symptoms:
> > pserial detects the OMAP ID, then starts sending via UART.
> > The transfer apparently gets completed (obvious as there is no control),
> > but after that the UART line to the target is totally mute.
> > 
> > This happens since commit:
> >  78104ae arm: reimplement startup code in C
> > 
> > And is still happening on current master:
> >  ea5230c i2c: fix adapter_list manipulation
> 
> Seems that I lost the call to arch_init_lowlevel. Does the following
> patch help?

I'm afraid it doesn't seem to.
It fails with the same symptoms.

Luca

> 
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index eea7dcf..91d2ccd 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -50,6 +50,8 @@ void __naked __bare_init reset(void)
>  {
>  	uint32_t r;
>  
> +	arch_init_lowlevel();
> +
>  	/* set the cpu to SVC32 mode */
>  	__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
>  	r &= ~0x1f;
> diff --git a/arch/arm/mach-omap/omap3_core.S b/arch/arm/mach-omap/omap3_core.S
> index 7337d4c..d904231 100644
> --- a/arch/arm/mach-omap/omap3_core.S
> +++ b/arch/arm/mach-omap/omap3_core.S
> @@ -92,7 +92,7 @@ next:
>  arch_start:
>  	.word	arch_init_lowlevel
>  barebox_start:
> -	.word	_start
> +	.word	exception_vectors
>  SRAM_INTVECT:
>  	.word	OMAP_SRAM_INTVECT
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
