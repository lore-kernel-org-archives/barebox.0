Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQ7t4-0005D5-5m
 for barebox@lists.infradead.org; Thu, 21 Jul 2016 06:55:14 +0000
Date: Thu, 21 Jul 2016 08:54:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160721065450.GT20657@pengutronix.de>
References: <1469024265-20098-1-git-send-email-w.egorov@phytec.de>
 <CAHQ1cqGDDaKNH3oSFJoL86i7EBAFOnBJMEpGsNW133o8QvS=og@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGDDaKNH3oSFJoL86i7EBAFOnBJMEpGsNW133o8QvS=og@mail.gmail.com>
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
Subject: Re: [PATCH 1/8] ARM: rockchip: Add basic RK3288 support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Jul 20, 2016 at 10:52:52AM -0700, Andrey Smirnov wrote:
> On Wed, Jul 20, 2016 at 7:17 AM, Wadim Egorov <w.egorov@phytec.de> wrote:

> > +
> > +struct rk3288_cru {
> > +       struct rk3288_pll {
> > +               u32 con0;
> > +               u32 con1;
> > +               u32 con2;
> > +               u32 con3;
> > +       } pll[5];
> > +       u32 cru_mode_con;
> > +       u32 reserved0[3];
> > +       u32 cru_clksel_con[43];
> > +       u32 reserved1[21];
> > +       u32 cru_clkgate_con[19];
> > +       u32 reserved2;
> > +       u32 cru_glb_srst_fst_value;
> > +       u32 cru_glb_srst_snd_value;
> > +       u32 cru_softrst_con[12];
> > +       u32 cru_misc_con;
> > +       u32 cru_glb_cnt_th;
> > +       u32 cru_glb_rst_con;
> > +       u32 reserved3;
> > +       u32 cru_glb_rst_st;
> > +       u32 reserved4;
> > +       u32 cru_sdmmc_con[2];
> > +       u32 cru_sdio0_con[2];
> > +       u32 cru_sdio1_con[2];
> > +       u32 cru_emmc_con[2];
> > +};
> 
> I, personally, am not a big fan of using structs to describe register
> file layout since it makes it hard to figure out individual register's
> offset just by reading the code, is compiler implementation/arch
> specific (that probably wouldn't be a problem though) and goes against
> the style in which majority of Linux kernel driver code(and by
> extension Barebox) is written in.

I do not like structs over registers also, for said reasons. Also they
become really messy when different register sizes and strides get
involved, these are typically solved with ifdeffery which limits the
resulting binary to a single board.

Anyway, for some reason structs over registers are policy in U-Boot
and when sharing code like done in this clock driver it just makes it
easier to a) share it in the first place and b) keep it in sync with
U-Boot. So, I am fine with structs over registers in code copied from
U-Boot, but I won't accept original code using it.

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
