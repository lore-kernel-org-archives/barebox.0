Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bsQ12-0004PH-BA
 for barebox@lists.infradead.org; Fri, 07 Oct 2016 07:56:25 +0000
Date: Fri, 7 Oct 2016 09:56:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161007075602.2ctkqsaxbhk5rnkl@pengutronix.de>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
 <1475505657-898-5-git-send-email-andrew.smirnov@gmail.com>
 <20161004063214.2rguzsvtq4aste5x@pengutronix.de>
 <CAHQ1cqFpyRK7EGq112s8+jGf=km15EobPQ3yR3HPK38QdCsQCw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFpyRK7EGq112s8+jGf=km15EobPQ3yR3HPK38QdCsQCw@mail.gmail.com>
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
Subject: Re: [PATCH 04/20] i.MX: Add support for VF610 Tower board
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Oct 04, 2016 at 06:34:45AM -0700, Andrey Smirnov wrote:
> On Mon, Oct 3, 2016 at 11:32 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >> +static int vf610_twr_sdhc1_clock_init(void)
> >> +{
> >> +     int err;
> >> +     struct clk *esdhc1_div, *esdhc1_div_parent;
> >> +
> >> +     if (!of_machine_is_compatible("fsl,vf610-twr"))
> >> +             return 0;
> >> +
> >> +     esdhc1_div = clk_lookup("esdhc1_div");
> >> +
> >> +     if (IS_ERR(esdhc1_div))
> >> +             return PTR_ERR(esdhc1_div);
> >> +
> >> +     esdhc1_div_parent = clk_get_parent(esdhc1_div);
> >> +     if (IS_ERR(esdhc1_div_parent))
> >> +             return PTR_ERR(esdhc1_div_parent);
> >> +
> >> +     err = clk_set_rate(esdhc1_div,
> >> +                        clk_get_rate(esdhc1_div_parent));
> >> +     if (err)
> >> +             return err;
> >> +
> >> +     clk_put(esdhc1_div);
> >> +
> >> +     return 0;
> >> +}
> >> +coredevice_initcall(vf610_twr_sdhc1_clock_init);
> >
> > What's the background for this? Should it be made SoC specific?
> 
> The divider that peripheral bus clock is connected to before that
> clock goes to SDHC controller is not set to one, so if this is not set
> the parent clock ends up being something around 12Mhz.

This sounds like this should be done in the CCM init code as part of the
"bring the clocks to sane defaults", possibly for the other SDHC
controllers aswell.

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
