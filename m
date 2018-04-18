Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f8iFX-0003z7-Iw
 for barebox@lists.infradead.org; Wed, 18 Apr 2018 08:15:34 +0000
Date: Wed, 18 Apr 2018 10:15:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180418081515.fdusp7fvycmq7kij@pengutronix.de>
References: <20180416193157.16094-1-andrew.smirnov@gmail.com>
 <20180416193157.16094-2-andrew.smirnov@gmail.com>
 <20180417065855.3o2lacq6j5sxzfr6@pengutronix.de>
 <CAHQ1cqF3sXJ2-FiK8vHnMswns+fE=dad=xqaTONmC9z63Sr1cg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqF3sXJ2-FiK8vHnMswns+fE=dad=xqaTONmC9z63Sr1cg@mail.gmail.com>
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
Subject: Re: [PATCH v2 01/19] ARM: i.MX: boot: Coalesce copy-pasted code
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Apr 17, 2018 at 08:20:46AM -0700, Andrey Smirnov wrote:
> On Mon, Apr 16, 2018 at 11:58 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Mon, Apr 16, 2018 at 12:31:39PM -0700, Andrey Smirnov wrote:
> >> All of the instances of imx*_boot_save_loc() do exactly the same thing with
> >> the only difference being SoC-specific imx*_get_boot_source
> >> call. Convert the code into a generic function taking function pointer
> >> + a macro to take care of the boilerplate.
> >>
> >> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> >> ---
> >>  arch/arm/mach-imx/boot.c | 85 ++++++++++--------------------------------------
> >>  1 file changed, 17 insertions(+), 68 deletions(-)
> >>
> >> +imx_boot_save_loc(void (*get_boot_source)(enum bootsource *, int *))
> >>  {
> >>       enum bootsource src = BOOTSOURCE_UNKNOWN;
> >>       int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
> >>
> >> -     imx7_get_boot_source(&src, &instance);
> >> +     get_boot_source(&src, &instance);
> >>
> >>       bootsource_set(src);
> >>       bootsource_set_instance(instance);
> >>  }
> >> +
> >> +#define IMX_BOOT_SAVE_LOC(soc)                                       \
> >> +     void soc##_boot_save_loc(void)                          \
> >> +     {                                                       \
> >> +             imx_boot_save_loc(soc##_get_boot_source);       \
> >> +     }
> >> +
> >> +IMX_BOOT_SAVE_LOC(imx25)
> >> +IMX_BOOT_SAVE_LOC(imx27)
> >> +IMX_BOOT_SAVE_LOC(imx35)
> >> +IMX_BOOT_SAVE_LOC(imx51)
> >> +IMX_BOOT_SAVE_LOC(imx53)
> >> +IMX_BOOT_SAVE_LOC(imx6)
> >> +IMX_BOOT_SAVE_LOC(imx7)
> >
> > I do not really like this patch. Yes, it saves a few lines of code, but
> > with the cost of making it less readable.
> >
> 
> Can you elaborate on what part is less readable? IMHO, replacing 68
> line of mostly copy pasted code with 17 of a generic function is a bit
> more than "saving a few lines of code", so I think it's worth trying
> to find a solution that would be acceptable from both perspectives:
> conciseness and readability.

I think it's bad when grepping for a function name only reveals the
callers, maybe the declaraion, but not the definition of a function.
Using macros to define functions is sometimes very effective (and done
in barebox at other places), but not very nice to look at.

> 
> Would replacing function pointer with a switch (imx_cpu_type) and
> expanding IMX_BOOT_SAVE_LOC() make this patch readable enough to be
> accepted?

Not sure what exactly you mean, but the following should be fine. With
a bit of violating the coding style this is not longer than your solution,
but without hiding the function names behind a macro:

void vf610_boot_save_loc(void) { boot_save_loc(vf610_get_boot_source); }

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
