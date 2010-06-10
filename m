Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMgGd-0002K1-HP
	for barebox@lists.infradead.org; Thu, 10 Jun 2010 11:49:52 +0000
Date: Thu, 10 Jun 2010 14:49:39 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100610114939.GF31840@jasper.tkos.co.il>
References: <cover.1276065824.git.baruch@tkos.co.il>
	<f9f84cc251848d133fae379e6d20253df2121ffb.1276065824.git.baruch@tkos.co.il>
	<20100610111237.GH20799@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100610111237.GH20799@pengutronix.de>
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
Subject: Re: [PATCH 8/8] mx25 3ds: add support for boot from UART
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Thu, Jun 10, 2010 at 01:12:37PM +0200, Sascha Hauer wrote:
> On Wed, Jun 09, 2010 at 10:05:07AM +0300, Baruch Siach wrote:

[snip]

> > --- a/board/freescale-mx25-3-stack/3stack.c
> > +++ b/board/freescale-mx25-3-stack/3stack.c
> > @@ -44,7 +44,11 @@ extern unsigned long _stext;
> >  
> >  void __naked __flash_header_start go(void)
> >  {
> > +#if defined CONFIG_FREESCALE_MX25_3STACK_UART_BOOT
> > +	__asm__ (".word	exception_vectors\n");
> > +#else
> >  	__asm__ __volatile__("b exception_vectors\n");
> > +#endif
> 
> Do we need this change? I booted other i.MX SoCs without it. I really
> like to keep this because it enables to jump to the first address if
> booting second stage.

This is actually a (very) short "flash" header with only the 
app_code_jump_vector entry left. Only reverse engineering the Freescale ATK 
software revealed this secret. Reading through the i.MX25 Reference Manual I 
now see that there is an option to pass DCD separately, but it complicates the 
boot sequence.  This change only affects builds when this configuration 
option, and this option is disabled by default.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
