Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fpCWl-0000JK-C7
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 13:04:58 +0000
Date: Mon, 13 Aug 2018 15:04:38 +0200
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20180813130438.m44vjjte3qg53oyn@pengutronix.de>
References: <20180810163500.12042-1-r.hieber@pengutronix.de>
 <20180810163500.12042-8-r.hieber@pengutronix.de>
 <CAHQ1cqECyzAkhA9ULmQDtQ=EUgszYeU-r7s6LNbhFdk4fhV_3w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqECyzAkhA9ULmQDtQ=EUgszYeU-r7s6LNbhFdk4fhV_3w@mail.gmail.com>
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
Subject: Re: [PATCH v2 07/14] ARM: MXS: refactor mx2*_power_init source
 configuration
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Aug 10, 2018 at 12:29:07PM -0700, Andrey Smirnov wrote:
> On Fri, Aug 10, 2018 at 9:36 AM Roland Hieber <r.hieber@pengutronix.de> wrote:
> > diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
> > index 595b51c5ba..a07ff9d676 100644
> > --- a/arch/arm/mach-mxs/power-init.c
> > +++ b/arch/arm/mach-mxs/power-init.c
> > @@ -24,21 +24,7 @@
> >  #include <mach/regs-rtc.h>
> >  #include <mach/regs-lradc.h>
> >
> > -/*
> > - * has_battery - true when this board has a battery.
> > - */
> > -static int has_battery;
> > -
> > -/*
> > - * use_battery_input - true when this board is supplied from the
> > - * battery input, but has a DC source instead of a real battery
> > - */
> > -static int use_battery_input;
> > -
> > -/*
> > - * use_5v_input - true when this board can use the 5V input
> > - */
> > -static int use_5v_input;
> > +static int power_config;
> 
> I might be missing something, so take this with a grain of salt. It
> seems like if you change this variable to be "power_use" and
> initialize it accordingly (maybe using a new helper function
> mxs_power_use() that does the bitmasking) you should be able to cut
> down on amount of (power_config & __POWER_USE_MASK) statements you
> have further in the code.

Indeed, that's a good idea! Will send v3 shortly.

> >  static void mxs_power_status(void)
> >  {
> > @@ -514,7 +500,8 @@ static void mxs_power_enable_4p2(void)
> >                 POWER_5VCTRL_HEADROOM_ADJ_MASK,
> >                 0x4 << POWER_5VCTRL_HEADROOM_ADJ_OFFSET);
> >
> > -       if (has_battery || use_battery_input)
> > +       if ((power_config & __POWER_USE_MASK) == POWER_USE_BATTERY ||
> > +           (power_config & __POWER_USE_MASK) == POWER_USE_BATTERY_INPUT)
> >                 dropout_ctrl = POWER_DCDC4P2_DROPOUT_CTRL_SRC_SEL;
> >         else
> >                 dropout_ctrl = POWER_DCDC4P2_DROPOUT_CTRL_SRC_4P2;
> > @@ -1182,16 +1169,15 @@ static void mx23_ungate_power(void)
[...]

 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
