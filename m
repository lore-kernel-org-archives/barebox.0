Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U1wb8-0004QP-0Z
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 10:14:55 +0000
Received: from mail92.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 64870104ED51
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 11:24:58 +0100 (CET)
Date: Sun, 3 Feb 2013 11:13:40 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130203101340.GD18068@game.jcrosoft.org>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
 <1359705587-9762-19-git-send-email-s.hauer@pengutronix.de>
 <20130201081135.GI26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130201081135.GI26329@game.jcrosoft.org>
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
Subject: Re: [PATCH 18/34] ARM AT91: switch to barebox_arm_entry part1
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:11 Fri 01 Feb     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:59 Fri 01 Feb     , Sascha Hauer wrote:
> > This switches the at91sam926x, 9g10 and 9g20 over to barebox_arm_entry.
> > For these SoCs we currently support reading back the memory size from
> > the SDRAM controller, so all of these can have a common reset() function.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/at91sam9263ek/Makefile         |    4 ++--
> >  arch/arm/boards/mmccpu/Makefile                |    4 ++--
> >  arch/arm/boards/pm9261/Makefile                |    4 ++--
> >  arch/arm/boards/pm9263/Makefile                |    4 ++--
> >  arch/arm/boards/tny-a926x/Makefile             |    4 ++--
> >  arch/arm/boards/usb-a926x/Makefile             |    4 ++--
> >  arch/arm/mach-at91/Kconfig                     |   15 ++++++++++-----
> >  arch/arm/mach-at91/Makefile                    |    4 ++--
> >  arch/arm/mach-at91/at91sam926x_lowlevel_init.c |    4 +++-
> >  9 files changed, 27 insertions(+), 20 deletions(-)
> > 
> > diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
> > index b6460c3..1702783 100644
> > --- a/arch/arm/boards/at91sam9263ek/Makefile
> > +++ b/arch/arm/boards/at91sam9263ek/Makefile
> > @@ -1,5 +1,5 @@
> >  obj-y += init.o
> >  
> > -obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
> > +obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
> >  
> > -pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
> > +pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
> > diff --git a/arch/arm/boards/mmccpu/Makefile b/arch/arm/boards/mmccpu/Makefile
> > index b6460c3..1702783 100644
> > --- a/arch/arm/boards/mmccpu/Makefile
> > +++ b/arch/arm/boards/mmccpu/Makefile
> > @@ -1,5 +1,5 @@
> >  obj-y += init.o
> >  
> > -obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
> > +obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
> >  
> > -pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
> > +pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
> > diff --git a/arch/arm/boards/pm9261/Makefile b/arch/arm/boards/pm9261/Makefile
> > index b6460c3..1702783 100644
> > --- a/arch/arm/boards/pm9261/Makefile
> > +++ b/arch/arm/boards/pm9261/Makefile
> > @@ -1,5 +1,5 @@
> >  obj-y += init.o
> >  
> > -obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
> > +obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
> >  
> > -pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
> > +pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
> > diff --git a/arch/arm/boards/pm9263/Makefile b/arch/arm/boards/pm9263/Makefile
> > index b6460c3..1702783 100644
> > --- a/arch/arm/boards/pm9263/Makefile
> > +++ b/arch/arm/boards/pm9263/Makefile
> > @@ -1,5 +1,5 @@
> >  obj-y += init.o
> >  
> > -obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
> > +obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
> >  
> > -pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
> > +pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
> > diff --git a/arch/arm/boards/tny-a926x/Makefile b/arch/arm/boards/tny-a926x/Makefile
> > index 36ea09f..caa7163 100644
> > --- a/arch/arm/boards/tny-a926x/Makefile
> > +++ b/arch/arm/boards/tny-a926x/Makefile
> > @@ -5,6 +5,6 @@ obj-$(CONFIG_AT91_BOOTSTRAP) += $(bootstrap-y)
> >  
> >  lowlevel_init-$(CONFIG_MACH_TNY_A9263) = tny_a9263_lowlevel_init.o
> >  
> > -obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
> > +obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
> >  
> > -pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
> > +pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
> > diff --git a/arch/arm/boards/usb-a926x/Makefile b/arch/arm/boards/usb-a926x/Makefile
> > index e314dd5..88f163f 100644
> > --- a/arch/arm/boards/usb-a926x/Makefile
> > +++ b/arch/arm/boards/usb-a926x/Makefile
> > @@ -5,6 +5,6 @@ obj-$(CONFIG_AT91_BOOTSTRAP) += $(bootstrap-y)
> >  
> >  lowlevel_init-$(CONFIG_MACH_USB_A9263) = usb_a9263_lowlevel_init.o
> >  
> > -obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
> > +obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
> >  
> > -pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
> > +pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
> > diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> > index 14bab55..ac6fd2f 100644
> > --- a/arch/arm/mach-at91/Kconfig
> > +++ b/arch/arm/mach-at91/Kconfig
> > @@ -6,6 +6,9 @@ config HAVE_AT91_DBGU0
> >  config HAVE_AT91_DBGU1
> >  	bool
> >  
> > +config HAVE_AT91_LOWLEVEL_INIT
> > +	bool
> > +
> >  config AT91SAM9_SMC
> >  	bool
> >  
> > @@ -76,6 +79,8 @@ config HAVE_AT91_LOAD_BAREBOX_SRAM
> >  
> >  config AT91SAM9_LOWLEVEL_INIT
> >  	bool
> > +	select MACH_HAS_LOWLEVEL_INIT
> > +	select MACH_DO_LOWLEVEL_INIT
> >  
> >  comment "Atmel AT91 System-on-Chip"
> >  
> > @@ -300,7 +305,7 @@ config MACH_AT91SAM9261EK
> >  config MACH_PM9261
> >  	bool "Ronetix PM9261"
> >  	select HAS_DM9000
> > -	select MACH_HAS_LOWLEVEL_INIT
> > +	select HAVE_AT91_LOWLEVEL_INIT
> >  	help
> >  	  Say y here if you are using the Ronetix PM9261 Board
> >  
> > @@ -375,7 +380,7 @@ choice
> >  
> >  config MACH_AT91SAM9263EK
> >  	bool "Atmel AT91SAM9263-EK"
> > -	select MACH_HAS_LOWLEVEL_INIT
> > +	select HAVE_AT91_LOWLEVEL_INIT
> >  	select HAVE_NAND_ATMEL_BUSWIDTH_16
> >  	help
> >  	  Say y here if you are using Atmel's AT91SAM9263-EK Evaluation board
> > @@ -387,7 +392,7 @@ config MACH_MMCCPU
> >  
> >  config MACH_PM9263
> >  	bool "Ronetix PM9263"
> > -	select MACH_HAS_LOWLEVEL_INIT
> > +	select HAVE_AT91_LOWLEVEL_INIT
> >  	help
> >  	  Say y here if you are using the Ronetix PM9263 Board
> >  
> > @@ -401,7 +406,7 @@ config MACH_TNY_A9263
> >  
> >  config MACH_USB_A9263
> >  	bool "CALAO USB-A9263"
> > -	select MACH_HAS_LOWLEVEL_INIT
> > +	select HAVE_AT91_LOWLEVEL_INIT
> >  	help
> >  	  Select this if you are using a Calao Systems USB-A9263.
> >  	  <http://www.calao-systems.com>
> > @@ -565,7 +570,7 @@ endif
> >  
> >  config AT91_BOOTSTRAP
> >  	bool "at91 bootstrap"
> > -	depends on MACH_HAS_LOWLEVEL_INIT
> > +	depends on HAVE_AT91_LOWLEVEL_INIT
> >  	select BOOTSTRAP
> >  
> >  config AT91_LOAD_BAREBOX_SRAM
> > diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
> > index f6c8500..38aeef6 100644
> > --- a/arch/arm/mach-at91/Makefile
> > +++ b/arch/arm/mach-at91/Makefile
> > @@ -7,9 +7,9 @@ lowlevel_init-$(CONFIG_SOC_AT91SAM9260) += at91sam9260_lowlevel_init.o
> >  lowlevel_init-$(CONFIG_SOC_AT91SAM9261) += at91sam9261_lowlevel_init.o
> >  lowlevel_init-$(CONFIG_SOC_AT91SAM9263) += at91sam9263_lowlevel_init.o
> >  lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
> > -obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
> > +obj-y += $(lowlevel_init-y)
> >  
> > -pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
> > +pbl-y += $(lowlevel_init-y)
> >  
> >  obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
> >  obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
> > diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
> > index 8b9b33e..cda0456 100644
> > --- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
> > +++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
> > @@ -49,6 +49,7 @@ static int inline running_in_sram(void)
> >  void __bare_init at91sam926x_lowlevel_init(void *pio, bool is_pio_asr,
> >  					   u32 matrix_csa)
> >  {
> > +#ifdef CONFIG_HAVE_AT91_LOWLEVEL_INIT
> >  	u32 r;
> >  	int i;
> >  	int in_sram = running_in_sram();
> > @@ -184,5 +185,6 @@ void __bare_init at91sam926x_lowlevel_init(void *pio, bool is_pio_asr,
> >  	at91_pmc_write(AT91_PMC_PCER, 0xffffffff);
> >  
> >  end:
> > -	board_init_lowlevel_return();
> > +#endif
> > +	barebox_arm_entry(AT91_SDRAM_BASE, at91_get_sdram_size(), 0);
> I send a patch series to split this pleqse rebase on it
> 
> 
> at at91_get_sram_size is going to be drop for SOC specific on

so as we will have at91sam9260/1_get_sdram_size() and
at91sam9263_get_sdram_size(0)

we can simply move the barebox_arm_entry

to each soc lowlevel_init

so CONFIG_HAVE_AT91_LOWLEVEL_INIT is move at Makefile level

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
