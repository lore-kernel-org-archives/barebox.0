Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cY629-0004Ls-9H
 for barebox@lists.infradead.org; Mon, 30 Jan 2017 07:05:51 +0000
Date: Mon, 30 Jan 2017 08:05:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170130070527.plrwfdzhj2ejmvl3@pengutronix.de>
References: <20170123055735.1277-1-andrew.smirnov@gmail.com>
 <20170124080943.mkjwtzpsoghg57ns@pengutronix.de>
 <CAHQ1cqED7WE_9Settx3di9x2jvROt5AsBC7kr4miuQ9VmXqb2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqED7WE_9Settx3di9x2jvROt5AsBC7kr4miuQ9VmXqb2Q@mail.gmail.com>
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
Subject: Re: [PATCH] i.MX: vf610: Add support for ZII VF610 Dev Family
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Jan 26, 2017 at 02:38:12PM -0800, Andrey Smirnov wrote:
> On Tue, Jan 24, 2017 at 12:09 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > Hi Andrey,
> >
> > On Sun, Jan 22, 2017 at 09:57:34PM -0800, Andrey Smirnov wrote:
> >> Add support for ZII VF610 Dev based designs such as:
> >>
> >>     - VF610 Dev, revision B
> >>     - VF610 Dev, revision C
> >>     - CFU1, revision A
> >>     - SPU3, revision A
> >>     - SCU4 AIB, revision C
> >>
> >> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> >> ---
> >>
> >> Sascha, this patch is rebased on 'next' instead of 'master' so that
> >> you won't have to resolve conflicts with RDU2 patches in 'next'. Let
> >> me know if you'd rather have it rebased on 'master'.
> >
> > It's fine to base on next in this case.
> >
> >> +struct named_signal {
> >> +     unsigned int gpio;
> >> +     const char *name;
> >> +     int value;
> >> +};
> >> +
> >> +static int expose_signals(const struct named_signal *signals,
> >> +                           size_t signal_num)
> >> +{
> >> +     int ret, i;
> >> +
> >> +     for (i = 0; i < signal_num; i++) {
> >> +             const struct named_signal *signal = &signals[i];
> >> +
> >> +             if (signal->value < 0)
> >> +                     ret = gpio_direction_input(signal->gpio);
> >> +             else
> >> +                     ret = gpio_direction_output(signal->gpio, signal->value);
> >> +
> >> +             if (ret) {
> >> +                     pr_err("Failed to configure \"%s\"\n", signal->name);
> >> +                     return ret;
> >> +             }
> >
> > This looks like gpio_request_array(). Could you use this instead?
> 
> Almost. Unfortunately, gpio_request_array doesn't do much with "label'
> portion of a descriptor, except to use it when displaying information
> about GPIOs.
> 
> What I am doing here as well is exposing those GPIO in a very
> primitive way by calling
> 
> export_env_ull(signal->name, signal->gpio);

What I meant was something like:

static int expose_signals(const struct gpio *array, size_t num)
{
	int ret;

	ret = gpio_request_array(gpios);
	if (ret)
		returen ret;

	for (i = 0; i < num; i++) {
		const struct gpio *gpio = &array[i];
		export_env_ull(gpio->label, gpio->gpio);
	}
}

> 
> and so it becomes possible to do things like
> 
> gpio_set_value ${soc_sw_rstn} 0
> 
> instead of having to use numeric value to designate desired GPIO. If
> there's a way this can be done better or if there a good change we can
> make to gpio_request_array(), I am more than happy to change this
> code.

I have no good idea how we could change gpio_request_array.
Unfortunately the gpio labels are not unique, so we can't just export
the variables unconditionally. A new gpio_request_array_export()
function maybe could work, but doesn't look too nice either.

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
