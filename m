Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjJ3S-00022E-La
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 07:22:36 +0000
Date: Tue, 15 Jan 2019 08:22:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190115072231.cn7edbxsskx63ces@pengutronix.de>
References: <20190112055524.7733-1-andrew.smirnov@gmail.com>
 <20190112104822.GB14273@ravnborg.org>
 <CAHQ1cqGD9sTWP4yS2OFDuXAdQaC5L6JnbyQPd71pO49v2qBxYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGD9sTWP4yS2OFDuXAdQaC5L6JnbyQPd71pO49v2qBxYg@mail.gmail.com>
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
Subject: Re: [PATCH v2 00/18] PCIe support for i.MX7
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>, Sam Ravnborg <sam@ravnborg.org>

On Sat, Jan 12, 2019 at 11:49:19AM -0800, Andrey Smirnov wrote:
> On Sat, Jan 12, 2019 at 2:48 AM Sam Ravnborg <sam@ravnborg.org> wrote:
> >
> > Hi Andrey.
> >
> > > Feedback is welcome!
> >
> > I have looked through the patches - and nothing jumped at me.
> > A few places could use a newline but not worth a re-spin.
> >
> > I personal dislike filenames like "helpers.c" but thats pure bikeshedding.
> >
> 
> One of my goals was to keep things as close to how they are in Linux
> as possible. That's how that file is called there, so you might have
> to take it with Mark Brown if you want to change that.
> 
> > Looks good with the simple regulator support, which most likely will prove
> > useful later also for other drivers.
> > I hope we do not need deferred probe much...
> >
> > With deferred probe ported from the kernel, I wonder
> > how far we are from porting the devm_* functionlity too.
> > Not the I think this will share code with deferred probe,
> > just that this is another nice kernel idiom we could
> > benefit from in barebox.
> >
> 
> Just to clarify, deferred probe was already a part of Barebox for a
> while, the patches in this series only change the fact that Barebox
> core now has a chance to "give up" on deferred device and declare it
> as non-existent.
> 
> As for devm_* functions, not far at all. I don't think it would be
> difficult to port and I've been meaning to do that for a while, just
> never had an opportunity to do it so far.

There's another idea I'd like to explore before we go deeper into probe
deferral.

Whenever a framework needs a device probed from some device tree node it
could call a of_ensure_probed(struct device_node *np) function. This
function would then go back into the driver core and probe the device
behind this device node.

This would require some restructuring of the driver core, like for
example all devices and drivers have to be registered before they are
actually probed. This of course goes against non device tree based
builds which have a hand crafted initcall order to resolve dependencies.

Maybe this is a crazy idea, but at least I'd like to know why this
doesn't work ;)

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
