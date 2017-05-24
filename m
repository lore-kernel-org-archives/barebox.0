Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dDQhK-0005cj-C6
 for barebox@lists.infradead.org; Wed, 24 May 2017 07:27:12 +0000
Date: Wed, 24 May 2017 09:26:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170524072647.6cwgihhtcu2vgqjv@pengutronix.de>
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
 <20170522152420.14443-3-andrew.smirnov@gmail.com>
 <46762e56-b2a0-4afd-6967-99b36af1e6fb@cogentembedded.com>
 <CAHQ1cqE+CmNAAFcwvHZ6KLR0h=7X6GNV_8gYx0HbwcwNf65x3A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqE+CmNAAFcwvHZ6KLR0h=7X6GNV_8gYx0HbwcwNf65x3A@mail.gmail.com>
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
Subject: Re: [PATCH 3/4] gpiolib: Add support for GPIO "hog" nodes
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Chris Healy <cphealy@gmail.com>, Sascha Hauer <kernel@pengutronix.de>

On Tue, May 23, 2017 at 04:25:03PM -0700, Andrey Smirnov wrote:
> On Mon, May 22, 2017 at 11:52 PM, Nikita Yushchenko
> <nikita.yoush@cogentembedded.com> wrote:
> >> +     ret = of_property_read_u32(chip_np, "#gpio-cells", &gpio_cells);
> >> +     if (ret)
> >> +             return ret;
> >> +
> >> +     if (WARN_ON(gpio_cells != 2))
> >> +             return -ENOTSUPP;
> >> +
> >> +     ret = of_property_read_u32_index(np, "gpios", idx * gpio_cells,
> >> +                                      &gpio_num);
> >> +     if (ret)
> >> +             return ret;
> >> +
> >> +     ret = of_property_read_u32_index(np, "gpios", idx * gpio_cells + 1,
> >> +                                      &gpio_flags);
> >> +     if (ret)
> >> +             return ret;
> >
> > Doesn't this hardcode interpretation of device tree words in gpio
> > specification - while this is intended to be gpio-provider specific and
> > that's why #gpio-cells exist?
> >
> 
> It does and yes that's my understanding of the purpose of #gpio-cells
> as well. The reason I did in such a primitive way was because
> Barebox's GPIO subsystem doesn't have any translation plumbing to be
> able to handle anything more than a simple one dimensional offset.
> Given the fact that of_get_named_gpio_flags() make similar assumption
> I thought that there are no real consumers of that functionality and
> left proper implementation as a future improvement that can be made
> once the need arises.
> 
> >
> >> +static int of_gpiochip_scan_gpios(struct gpio_chip *chip)
> >
> > Not best choice of name for routine that scans hogs?
> >
> > (although I understand that it comes from linux counterpart)
> >
> 
> Eh, I don't have any strong opinion on this one, I am more than happy
> to rename it if you think there are better alternatives.
> 
> >> -     return 0;
> >> +     return of_gpiochip_scan_gpios(chip);
> >
> > Should we fail gpiochip registration on failure to claim hogs?
> > I don't know.
> 
> I couldn't think of a use-case where it wasn't basically all or
> nothing: either I get everything working or I need to go back and fix
> my DT. Sascha, do you have an opinion on this one?

I can't think of any good reason why the hog initialization should fail
and we still want to keep the gpio chip.
Let's keep it like this until someone delivers us a good reason.

Sasch

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
