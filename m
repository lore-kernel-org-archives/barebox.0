Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x243.google.com ([2607:f8b0:4001:c0b::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1faPbr-0007BG-FR
 for barebox@lists.infradead.org; Tue, 03 Jul 2018 18:01:05 +0000
Received: by mail-it0-x243.google.com with SMTP id p185-v6so4404338itp.4
 for <barebox@lists.infradead.org>; Tue, 03 Jul 2018 11:00:53 -0700 (PDT)
MIME-Version: 1.0
References: <20180630034900.3324-1-andrew.smirnov@gmail.com>
 <20180630034900.3324-11-andrew.smirnov@gmail.com>
 <20180702054837.qukui3js3uhtsqfl@pengutronix.de>
In-Reply-To: <20180702054837.qukui3js3uhtsqfl@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 3 Jul 2018 11:00:40 -0700
Message-ID: <CAHQ1cqF3dtONQskz-d+h5ZSVBX2G+aSCk1=TF=dGoQzEp=qO9g@mail.gmail.com>
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
Subject: Re: [PATCH 10/11] ARM: nxp-imx8mq-evk: Add bootflow comments
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, Jul 1, 2018 at 10:48 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Fri, Jun 29, 2018 at 08:48:59PM -0700, Andrey Smirnov wrote:
> > Add some notes on how the boot-flow goes while I still remember it.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/boards/nxp-imx8mq-evk/lowlevel.c | 42 +++++++++++++++++++++--
> >  1 file changed, 40 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
> > index c2dc6460a..7dd778c21 100644
> > --- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
> > +++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
> > @@ -66,6 +66,26 @@ static void nxp_imx8mq_evk_sram_setup(void)
> >       BUG_ON(ret);
> >  }
> >
> > +/*
> > + * Power-on execution flow of start_nxp_imx8mq_evk() might not be
> > + * obvious for a very frist read, so here's, hopefully helpful,
> > + * summary:
> > + *
> > + * 1. MaskROM uploads PBL into OCRAM and that's where this function is
> > + *    executed for the first time
> > + *
> > + * 2. DDR is initialized and full i.MX image is loaded to the
> > + *    beginning of RAM
> > + *
> > + * 3. start_nxp_imx8mq_evk, now in RAM, is executed again
> > + *
> > + * 4. BL31 blob is uploaded to OCRAM and the control is transfer to it
> > + *
> > + * 5. BL31 exits EL3 into EL2 at address MX8MQ_ATF_BL33_BASE_ADDR,
> > + *    executing start_nxp_imx8mq_evk() the third time
> > + *
> > + * 6. Standard barebox boot flow continues
> > + */
> >  ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
> >  {
> >       arm_cpu_lowlevel_init();
> > @@ -73,11 +93,29 @@ ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
> >       if (IS_ENABLED(CONFIG_DEBUG_LL))
> >               setup_uart();
> >
> > -     if (get_pc() < MX8MQ_DDR_CSD1_BASE_ADDR)
> > +     if (get_pc() < MX8MQ_DDR_CSD1_BASE_ADDR) {
> > +             /*
> > +              * We assume that we were just loaded by MaskROM into
> > +              * SRAM if we are not running from DDR. We also assume
> > +              * that means DDR needs to be initialized for the
> > +              * first time.
> > +              */
> >               nxp_imx8mq_evk_sram_setup();
> > -
> > +     }
> > +
> > +     /*
> > +      * Straight from the power-on we are at EL3, so the following
> > +      * code _will_ load and jump to ATF.
> > +      *
> > +      * However when this function is re-executed upon exit from
> > +      * ATF's initialization routine, it is EL2 and it is
> > +      * short-circuited to a no-op.
> > +      */
> >       imx8mq_atf_load_bl31(imx_imx8m_bl31_bin);
>
> Maybe the flow would be more clear if we add a if (current_el() == 3)
> around the imx8mq_atf_load_bl31()
>

Yeah, I think so too. I'll make the change in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
